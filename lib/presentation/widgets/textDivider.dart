import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextDiver extends StatelessWidget {
  final String text;
  const TextDiver({Key? key, this.text = 'OR'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Divider(
          color: kGrey,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(
          color: kGrey,
        ),
      ],
    );
  }
}
