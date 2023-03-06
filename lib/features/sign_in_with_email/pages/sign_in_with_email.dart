import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slack/core/theme/color_const.dart';

class SignInWithEmail extends StatefulWidget {
  const SignInWithEmail({super.key});

  @override
  State<SignInWithEmail> createState() => _SignInWithEmailState();
}

class _SignInWithEmailState extends State<SignInWithEmail> {
  ValueNotifier<bool> signInToSlack = ValueNotifier(true);
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    // focusNode.requestFocus();
    // focusNode.unfocus();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBlack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConst.kBlack,
        centerTitle: false,
        title: ValueListenableBuilder<bool>(
            valueListenable: signInToSlack,
            builder: (_, signInToSlack, __) {
              return Text(
                signInToSlack ? 'Sign in' : 'Sign in to GovSlack',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
              );
            }),
        elevation: 0.5,
        shadowColor: Colors.white24,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ValueListenableBuilder<bool>(
                      valueListenable: signInToSlack,
                      builder: (_, signInToSlack, __) {
                        return Text(
                          signInToSlack
                              ? "Your email address"
                              : "Your email address for GovSlack",
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                        );
                      }),
                  TextField(
                    focusNode: focusNode,
                    autofocus: true,
                    controller: controller,
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                    showCursor: true,
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
                  ValueListenableBuilder<bool>(
                      valueListenable: signInToSlack,
                      builder: (_, signInToSlack, __) {
                        return GestureDetector(
                          onTap: signInToSlack
                              ? switchToGovSlackSignIn
                              : switchToSlackSignIn,
                          child: Text(
                            signInToSlack
                                ? "Sign in to GovSlack?"
                                : "Sign in to Slack?",
                            style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp),
                          ),
                        );
                      })
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
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
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }

  void switchToGovSlackSignIn() {
    signInToSlack.value = false;
  }

  void switchToSlackSignIn() {
    signInToSlack.value = true;
  }
}
