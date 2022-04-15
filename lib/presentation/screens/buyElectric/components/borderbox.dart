import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BorderBoxText extends StatelessWidget {
  final String text;
  const BorderBoxText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: kGrey)),
      child: Text(
        text,
        style: TextStyle(
            color: kGrey, fontWeight: FontWeight.bold, fontSize: 10.sp),
      ),
    );
  }
}
