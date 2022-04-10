import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isOpen = false;
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
            height: 15.h,
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
            height: 30.h,
          ),
          DefaultBtn(
            press: () {},
            text: 'Sign Up',
            color: kGreenLight,
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }
}
