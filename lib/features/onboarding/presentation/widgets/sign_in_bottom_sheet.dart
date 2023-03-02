import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slack/core/theme/color_const.dart';
import 'package:slack/features/sign_in_with_email/pages/sign_in_with_email.dart';

class SignInBottomSheet extends StatelessWidget {
  const SignInBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorConst.kBlack, borderRadius: BorderRadius.circular(15.r)),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: ColorConst.kWhite,
                borderRadius: BorderRadius.circular(20.r)),
            height: 4.h,
            width: 45.w,
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
                icon: SvgPicture.asset(
                  'assets/images/google.svg',
                  height: 12.h,
                  width: 12.h,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 10.h)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r))),
                    overlayColor: MaterialStateProperty.all(Colors.white10),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigoAccent[400])),
                label: Text(
                  "Continue with Google",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                )),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
                icon: SvgPicture.asset(
                  'assets/images/email.svg',
                  height: 16.h,
                  width: 16.h,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const SignInWithEmail()));
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 10.h)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r))),
                    overlayColor: MaterialStateProperty.all(Colors.white10),
                    backgroundColor:
                        MaterialStateProperty.all(ColorConst.kGreen)),
                label: Text(
                  "Continue with Email",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                )),
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'or ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
              text: 'Sign In with Workspace URL',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            )
          ])),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
