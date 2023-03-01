import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slack/core/theme/color_const.dart';
import 'package:slack/features/onboarding/presentation/widgets/first_onboarding_button_animation.dart';
import 'package:slack/features/onboarding/presentation/widgets/first_onboarding_image_animation.dart';
import 'package:slack/features/onboarding/presentation/widgets/first_onboarding_text_animation.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: ColorConst.kPurple,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.h,
            ),
            const FirstOnboardingTextAnimation(),
            SizedBox(
              height: 90.h,
            ),
            const FirstOnboardingImageAnimation(),
            SizedBox(
              height: 100.h,
            ),
            const FirstOnboardingButtonAnimation()
          ],
        ),
      ),
    );
  }
}
