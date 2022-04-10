import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Authentication/forgotPassword/forgotPassword.dart';
import 'package:jara/presentation/screens/Authentication/signIn/signin.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:get/get.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isOpen = false;
  bool hasRef = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            cursorColor: kBlack,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              label: Text('Email address'),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              label: const Text('Password'),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: kGrey,
                  size: 30.h,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  RoundCheckBox(
                    checkedColor: kGreen,
                    size: 20.h,
                    onTap: (selected) {
                      hasRef = selected!;
                    },
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'I have a referral code',
                    style: TextStyle(
                        color: kBlack,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              GestureDetector(
                  onTap: () => Get.to(() => const ForgotPassword()),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: kBlack,
                        fontSize: 11.sp),
                  )),
            ],
          ),
          SizedBox(height: 10.h),
          Visibility(
            visible: hasRef,
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text("Referral"),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              RoundCheckBox(
                checkedColor: kGreen,
                size: 20.h,
                onTap: (selected) {},
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: 'By clicking on this button, you agree to the ',
                    style: TextStyle(
                        color: kBlack,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text: "'Terms and Conditions' ",
                        style: TextStyle(
                          color: kPurple,
                          fontSize: 11.sp,
                        ),
                      ),
                      TextSpan(
                        text: 'of the Jara Platform',
                        style: TextStyle(
                            color: kBlack,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          DefaultBtn(
            press: () {},
            text: 'Sign Up',
            color: kGreenLight,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text.rich(
            TextSpan(
              text: 'Already Signed Up?',
              style: TextStyle(
                  fontSize: 11.sp, fontWeight: FontWeight.w600, color: kBlack),
              children: [
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => const SignInScreen()),
                    text: ' Log In',
                    style: TextStyle(color: kPurple, fontSize: 11.sp)),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
