import 'package:clusta/modules/shared/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SomethingWentWrongScreen extends StatefulWidget {
  final Function()? onRetry;
  const SomethingWentWrongScreen({super.key, this.onRetry});

  @override
  State<SomethingWentWrongScreen> createState() =>
      _SomethingWentWrongScreenState();
}

class _SomethingWentWrongScreenState extends State<SomethingWentWrongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/icons/sad.svg"),
                SizedBox(height: 16),
                Text(
                  "Ummmm...",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Something seems off, try again!",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 10),

                PrimaryButton(
                  title: "Retry",
                  icon: SvgPicture.asset("assets/icons/refresh.svg"),
                  onPressed: () {
                    HapticFeedback.vibrate();
                    widget.onRetry?.call();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
