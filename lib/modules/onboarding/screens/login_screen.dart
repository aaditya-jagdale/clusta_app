import 'dart:io';

import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:clusta/modules/shared/widgets/custom_progress_indicator.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> _googleSignIn() async {
    setState(() {
      _isLoading = true;
    });
    // Initialize Google Sign-In with hardcoded client IDs
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: dotenv.env['IOS_CLIENT_ID']!,
      serverClientId: dotenv.env['WEB_CLIENT_ID']!,
    );

    try {
      if (Platform.isIOS || Platform.isAndroid) {
        final googleUser = await googleSignIn.signIn();
        final googleAuth = await googleUser!.authentication;
        final accessToken = googleAuth.accessToken;
        final idToken = googleAuth.idToken;

        if (accessToken == null) {
          throw 'No Access Token found.';
        }
        if (idToken == null) {
          throw 'No ID Token found.';
        }

        // Create Firebase credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        _firebaseAuth.signInWithCredential(credential);
      } else {
        throw 'Platform does not support authenticate method';
      }
    } on DioException catch (e) {
      setState(() {
        _isLoading = false;
      });
      throw '----------Sign-in error: ${e.response?.data}';
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primary, AppColors.primary.withAlpha(0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Clusta",
                      style: TextStyle(
                        fontFamily: 'InstrumentSerif',
                        fontSize: 80,
                        height: 1,
                      ),
                    ),
                    Text(
                      "Research Assistant in your pocket",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: _isLoading
                    ? CustomProgressIndicator(color: Colors.white)
                    : Column(
                        spacing: 16,
                        children: [
                          LoginPageButton(
                            title: "Continue with Google",
                            icon: "assets/icons/google.svg",
                            onTap: () async {
                              await _googleSignIn();
                            },
                          ),
                          LoginPageButton(
                            title: "Continue with Apple",
                            icon: "assets/icons/apple.svg",
                            onTap: () {},
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoginPageButton extends StatelessWidget {
  final String title;
  final String icon;
  final Function()? onTap;
  const LoginPageButton({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            SvgPicture.asset(icon),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
