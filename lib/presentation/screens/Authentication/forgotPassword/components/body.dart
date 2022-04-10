import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/Authentication/resetPassword/resetPassword.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';

import '../../../../helpers/constants.dart';

class ForgotBody extends StatefulWidget {
  const ForgotBody({Key? key}) : super(key: key);

  @override
  State<ForgotBody> createState() => _ForgotBodyState();
}

class _ForgotBodyState extends State<ForgotBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          SizedBox(height: 40.h),
          Image.asset('assets/logo.png'),
          SizedBox(height: 40.h),
          Image.asset(
            'assets/forgot.png',
          ),
          SizedBox(height: 10.h),
          Text(
            'Oops!\nForgot your password?',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'That’s alright, don’t sweat it. We’ve got you covered. Kindly input your details below and we’ll email you a swift link.',
            style: TextStyle(
              fontSize: 12.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          const TextField(
            decoration: InputDecoration(label: Text('Email address')),
          ),
          SizedBox(
            height: 40.h,
          ),
          DefaultBtn(
            color: kGreen,
            press: () => Get.to(() => const ResetPassword()),
            text: 'Send Swift link',
          )
        ],
      ),
    );
  }
}
