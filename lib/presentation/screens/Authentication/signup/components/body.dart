import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/signup/components/signUpForm.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/widgets/textDivider.dart';

import '../../../../helpers/constants.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Image.asset('assets/logo.png'),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Sign Up',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18.sp, color: kBlack),
          ),
          SizedBox(
            height: 15.h,
          ),
          DefaultBtn(
            color: kRed,
            press: () {},
            text: 'Sign Up with Google',
          ),
          SizedBox(
            height: 10.h,
          ),
          DefaultBtn(
            color: kBlue,
            press: () {},
            text: 'Sign Up with Facebook',
          ),
          SizedBox(
            height: 10.h,
          ),
          DefaultBtn(
            color: kBlack,
            press: () {},
            text: 'Sign Up with App ID',
          ),
          SizedBox(
            height: 30.h,
          ),
          const TextDiver(),
          SizedBox(
            height: 30.h,
          ),
          const SignUpForm(),
        ],
      ),
    ));
  }
}
