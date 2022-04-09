import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';

import '../../../helpers/constants.dart';

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
          SizedBox(height: 20.h),
          SvgPicture.asset('forgotPassword.svg'),
          const Text('Oops!'),
          const Text('Forgot your password?'),
          SizedBox(
            height: 10.h,
          ),
          const Text(
              'That’s alright, don’t sweat it. We’ve got you covered. Kindly input your details below and we’ll email you a swift link.'),
          const TextField(
            decoration: InputDecoration(label: Text('Email address')),
          ),
          SizedBox(
            height: 20.h,
          ),
          DefaultBtn(
            press: () {},
            text: 'Send Swift link',
          )
        ],
      ),
    );
  }
}
