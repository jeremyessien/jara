import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/Authentication/signIn/components/signInForm.dart';

import '../../../../helpers/constants.dart';

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
            height: 40.h,
          ),
          Image.asset('assets/logo.png'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            'Login',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Input your email address and password in order to access Jara.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.sp),
          ),
          SizedBox(
            height: 40.h,
          ),
          const SignInForm(),
        ],
      ),
    ));
  }
}
