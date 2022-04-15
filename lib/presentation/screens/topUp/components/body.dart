import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/buyAirtime/buyAirtime.dart';
import 'package:jara/presentation/screens/buyElectric/buyElectric.dart';
import 'package:jara/presentation/screens/topUp/components/topUpCard.dart';
import 'package:get/get.dart';

class TopUpBody extends StatefulWidget {
  const TopUpBody({Key? key}) : super(key: key);

  @override
  State<TopUpBody> createState() => _TopUpBodyState();
}

class _TopUpBodyState extends State<TopUpBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Top-Up & Pay Utility Bills',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Select from the options below which service you would like to use. You can  pay your electricity bills, buy data and top-up your phone minutes all in one place.',
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: TopUpCard(
                    press: () {},
                    image: 'assets/recharge.png',
                    text: 'Recharge TV',
                    color2: Colors.purple,
                    color1: const Color.fromARGB(255, 116, 245, 176),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: TopUpCard(
                    press: () => Get.to(() => const BuyAirtime()),
                    image: 'assets/rechargePhone.png',
                    text: 'Recharge Phone',
                    color2: const Color.fromARGB(255, 71, 168, 116),
                    color1: const Color.fromARGB(255, 123, 249, 181),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            TopUpCard(
              press: () => Get.to(() => const BuyElectric()),
              image: 'assets/recharge.png',
              text: 'Buy Electricity Unit',
              color2: const Color.fromARGB(255, 255, 199, 115),
              color1: const Color.fromARGB(255, 255, 182, 72),
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(
              color: kGrey.withOpacity(0.2),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Powered by:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/aedc.png'),
                Image.asset('assets/ie.png'),
                Image.asset('assets/gotv.png'),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'and more..:',
              style: TextStyle(fontSize: 13.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
