import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstOnboardingTextAnimation extends StatelessWidget {
  const FirstOnboardingTextAnimation({super.key});
  final Duration animationDelay = const Duration(milliseconds: 900);
  final Duration animationDuration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Picture this: a\nmessaging app,",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30.sp),
        ),
        Text(
          "but build for\nwork.",
          style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.w900,
              fontSize: 30.sp),
        ),
      ],
    ).animate(delay: animationDelay).fadeIn(duration: animationDuration);
  }
}
