import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slack/core/theme/color_const.dart';
import 'package:slack/features/onboarding/presentation/widgets/sign_in_bottom_sheet.dart';

class FirstOnboardingButtonAnimation extends StatelessWidget {
  const FirstOnboardingButtonAnimation({super.key});
  final Duration animationDuration = const Duration(milliseconds: 150);
  final Duration animationDelay = const Duration(milliseconds: 1100);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 10.h)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.r))),
                  overlayColor: MaterialStateProperty.all(Colors.black12),
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text(
                "Go on...",
                style: TextStyle(
                    color: ColorConst.kPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp),
              )),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r)),
                  context: context,
                  builder: (_) => const SignInBottomSheet());
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 10.h)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.r))),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              overlayColor: MaterialStateProperty.all(Colors.white10),
            ),
            child: Text(
              "Sign in",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp),
            ),
          ),
        )
      ],
    ).animate(delay: animationDelay).scale(
          begin: Offset.zero,
          alignment: Alignment.bottomCenter,
          duration: animationDuration,
        );
  }
}
