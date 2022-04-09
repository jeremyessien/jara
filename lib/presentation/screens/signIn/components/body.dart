import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/signIn/components/signInForm.dart';
import 'package:jara/presentation/screens/signup/components/signUpForm.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/widgets/textDivider.dart';

import '../../../helpers/constants.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Image.asset('assets/logo.png'),
          SizedBox(
            height: 30.h,
          ),
          const Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Input your email address and password in order to access Jara.',
            style: TextStyle(fontSize: 14.sp),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            height: 30.h,
          ),
          const SignInForm(),
        ],
      ),
    ));
  }
}
