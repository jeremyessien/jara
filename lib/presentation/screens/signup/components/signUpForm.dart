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
  bool isOpen = false;
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
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Radio(
              //     value: 1,
              //     groupValue: isOpen,
              //     onChanged: (value) {
              //       setState(() {
              //       isOpen = value;

              //       });
              //     }),
              Text(
                'I have a referral code',
                style: TextStyle(color: kPurple, fontSize: 11.sp),
              ),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: kBlack, fontSize: 11.sp),
                  )),
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
            children: [
              //  By clicking on this button, you agree to the ‘Terms and Conditions’ of the Jara Platform
              Text.rich(
                TextSpan(
                  text: 'By clicking on this button, you agree to the ',
                  style: TextStyle(color: kBlack, fontSize: 11.sp),
                  children: [
                    TextSpan(
                      text: "'Terms and Conditions' ",
                      style: TextStyle(color: kPurple, fontSize: 11.sp),
                    ),
                    TextSpan(
                      text: 'of the Jara Platform',
                      style: TextStyle(color: kBlack, fontSize: 11.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          DefaultBtn(
            press: () {},
            text: 'Sign Up',
            color: kGreenLight,
          ),
          SizedBox(
            height: 10.h,
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
