import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/resetPassword/components/resetForm.dart';

import '../../../helpers/constants.dart';

class ResetBody extends StatefulWidget {
  const ResetBody({Key? key}) : super(key: key);

  @override
  State<ResetBody> createState() => _ResetBodyState();
}

class _ResetBodyState extends State<ResetBody> {
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
            'Reset your password',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Kindly input your password details',
            style: TextStyle(fontSize: 14.sp),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            height: 30.h,
          ),
          const ResetForm(),
        ],
      ),
    ));
  }
}
