import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
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
              suffixIcon: SvgPicture.asset('assets/eye.svg'),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('I have a referral code'),
              GestureDetector(
                  onTap: () {}, child: const Text('Forgot Password')),
            ],
          ),
          Visibility(
            visible: false,
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                label: const Text('Password'),
                suffixIcon: SvgPicture.asset('assets/eye.svg'),
              ),
            ),
          ),
          Row(
            children: const [
              //  By clicking on this button, you agree to the ‘Terms and Conditions’ of the Jara Platform
              Text.rich(
                TextSpan(
                  text: 'By clicking on this button, you agree to the ',
                  children: [
                    TextSpan(
                        text: "'Terms and Conditions' ",
                        style: TextStyle(color: kPurple)),
                    TextSpan(text: 'of the Jara Platform'),
                  ],
                ),
              )
            ],
          ),
          DefaultBtn(
            press: () {},
            text: 'Sign Up',
            color: kGreenLight,
          ),
          SizedBox(
            height: 5.h,
          ),
          const Text.rich(
            TextSpan(
              text: 'Already Signed Up?',
              children: [
                TextSpan(text: 'Log In', style: TextStyle(color: kPurple)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
