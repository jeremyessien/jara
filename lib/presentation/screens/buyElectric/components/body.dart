import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/buyElectric/components/borderbox.dart';
import 'package:jara/presentation/screens/electOrderSum/electOrderSum.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';

class BuyElectricBody extends StatefulWidget {
  const BuyElectricBody({Key? key}) : super(key: key);

  @override
  State<BuyElectricBody> createState() => _BuyElectricBodyState();
}

class _BuyElectricBodyState extends State<BuyElectricBody> {
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
              'Buy Electric Units',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Kindly fill out the form below in order to process with your purchase',
              style: TextStyle(fontSize: 12.sp),
            ),
            SizedBox(
              height: 30.h,
            ),
            DropdownField(
              title: 'Select Electricity Distribution company',
              items: const ['PHED', 'Airis', 'NEPA'],
              selectedValue: '',
            ),
            SizedBox(
              height: 15.h,
            ),
            DropdownField(
              title: 'Select State of Residence',
              items: const ['PH', 'LAGOS', 'Delta'],
              selectedValue: '',
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Meter Type:'),
                BorderBoxText(text: 'PREPAID'),
                BorderBoxText(text: 'POSTPAID'),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text(
                  'Enter account or meter number',
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text(
                  'Enter purchase amount',
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text(
                  'Enter purchase amount',
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
            ),
            SizedBox(
              height: 55.h,
            ),
            DefaultBtn(
              color: kGreen,
              press: () => Get.to(() => const ElectricOrderSummary()),
              text: 'Proceed',
            ),
          ],
        ),
      ),
    );
  }
}
