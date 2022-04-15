import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/airtimeOrderSum/airtimeOrderSum.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';

class BuyAirtimeBody extends StatefulWidget {
  const BuyAirtimeBody({Key? key}) : super(key: key);

  @override
  State<BuyAirtimeBody> createState() => _BuyAirtimeBodyState();
}

class _BuyAirtimeBodyState extends State<BuyAirtimeBody> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    print(selectedValue);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Buy Mobile Top-Up',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Kindly fill out the form below in order to proceed with your purchase.',
              style: TextStyle(fontSize: 12.sp),
            ),
            SizedBox(
              height: 30.h,
            ),
            DropdownField(
              title: 'Select Network Provider e.g. MTN',
              items: const ['MTN', 'Glo', 'Airtel', '9mobile'],
              selectedValue: '',
            ),
            SizedBox(
              height: 15.h,
            ),
            DropdownField(
              title: 'Select Preferred Network Service',
              items: const ['PH', 'LAGOS', 'Delta'],
              selectedValue: '',
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text(
                  'Enter Top-Up amount',
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                label: Text(
                  'Enter Phone number',
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                label: Text(
                  'Confirm Phone number',
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
            ),
            SizedBox(
              height: 55.h,
            ),
            DefaultBtn(
              color: kGreen,
              press: () => Get.to(() => const AirtimeOrderSummary()),
              text: 'Proceed',
            ),
          ],
        ),
      ),
    );
  }
}
