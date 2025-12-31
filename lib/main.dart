import 'package:clusta/modules/home/screens/main_screen.dart';
import 'package:clusta/modules/onboarding/screens/login_screen.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Clusta',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "InstrumentSans",
          scaffoldBackgroundColor: AppColors.tertiary,
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary,
            brightness: Brightness.dark,
          ),
          appBarTheme: AppBarTheme(backgroundColor: AppColors.tertiary),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.tertiary,
          ),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data == null) {
                return const LoginScreen();
              } else {
                return const MainScreen();
              }
            } else {
              return const LoginScreen();
            }
          },
        ),
      ),
    );
  }
}
