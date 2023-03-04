import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slack/core/theme/color_const.dart';

class SignInWithEmail extends StatefulWidget {
  const SignInWithEmail({super.key});

  @override
  State<SignInWithEmail> createState() => _SignInWithEmailState();
}

class _SignInWithEmailState extends State<SignInWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBlack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConst.kBlack,
        centerTitle: false,
        title: Text(
          'Sign in',
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        shadowColor: Colors.white24,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your email address",
              style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp),
            ),
            TextField(
              style: TextStyle(fontSize: 18.sp, color: Colors.white),
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "We\'ll send you an email that'll instantly sign you in.",
              style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: const Divider(
                height: 0,
                color: Colors.white38,
              ),
            ),
            Text(
              "Sign in to GovSlack?",
              style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp),
            )
          ],
        ),
      ),
    );
  }
}
