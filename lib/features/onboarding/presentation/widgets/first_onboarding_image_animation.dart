import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstOnboardingImageAnimation extends StatelessWidget {
  const FirstOnboardingImageAnimation({super.key});
  final Duration animationDuration = const Duration(milliseconds: 500);
  final Duration firstAnimationDelay = const Duration(milliseconds: 200);
  final Duration secondAnimationDelay = const Duration(milliseconds: 400);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: Image.asset(
            'assets/images/main.png',
            height: 100.h,
            width: 180.w,
            fit: BoxFit.fill,
          ).animate().scale(
                begin: Offset.zero,
                alignment: Alignment.bottomLeft,
                duration: animationDuration,
              ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 30.w, top: 10.h),
            child: Image.asset(
              'assets/images/main1.png',
              height: 110.h,
              width: 110.w,
              fit: BoxFit.fill,
            ).animate(delay: firstAnimationDelay).scale(
                begin: Offset.zero,
                alignment: Alignment.bottomCenter,
                duration: animationDuration),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              top: 100.h,
              left: 15.w,
            ),
            child: Image.asset(
              'assets/images/main2.png',
              height: 100.h,
            ).animate(delay: secondAnimationDelay).scale(
                  begin: Offset.zero,
                  alignment: Alignment.bottomLeft,
                  duration: animationDuration,
                ),
          ),
        )
      ],
    );
  }
}
