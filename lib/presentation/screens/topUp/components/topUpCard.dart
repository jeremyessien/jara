import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopUpCard extends StatelessWidget {
  final String image, text;
  final Color color1, color2;
  final Function() press;
  const TopUpCard(
      {Key? key,
      required this.press,
      required this.image,
      required this.text,
      required this.color1,
      required this.color2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [color1, color2])),
        padding: EdgeInsets.symmetric(vertical: 25.h),
        width: double.maxFinite,
        child: Column(
          children: [
            Image.asset(
              image,
              height: 70.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              text,
              style: TextStyle(
                  color: kWhite, fontWeight: FontWeight.bold, fontSize: 13.sp),
            ),
          ],
        ),
      ),
    );
  }
}
