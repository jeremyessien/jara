import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';

class IconRow extends StatelessWidget {
  final String image, title;
  final Color color;
  const IconRow(
      {Key? key, required this.image, required this.title, this.color = kGrey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          image,
          color: color,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 8.sp, fontWeight: FontWeight.bold, color: kGrey),
        )
      ],
    );
  }
}
