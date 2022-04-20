import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/electOrderSum/components/iconRow.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/widgets/dottedBox.dart';

class ElectricOrderSummary extends StatelessWidget {
  const ElectricOrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Summary',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Kindly review the order summary below to ensure that all the details are correct. You can go back to make changes or click on edit.',
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            DottedBox(
                child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Electricity Distribution Company:',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    'AEDC',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'State of Residence:',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    'Abuja - FCT',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Meter Type:',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    'Prepaid',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Meter/Account number:',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    '23456 6789 7654 3214 4568',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Purchase amount:',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    'N50,000',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'V.A.T:',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    'N400',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Service Charge:',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    'N200',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                )
              ],
            )),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/edit.png'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                      color: kGreen,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Payment Method:'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const IconRow(image: 'assets/atmCard.svg', title: 'Card'),
                    SizedBox(
                      width: 25.w,
                    ),
                    const IconRow(image: 'assets/points.svg', title: 'Point'),
                    SizedBox(
                      width: 25.w,
                    ),
                    const IconRow(image: 'assets/wallet.svg', title: 'Wallet'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            DefaultBtn(
              color: kGreen,
              press: () {},
              text: 'Pay N50,600',
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      )),
    );
  }

  TextStyle _titleStyle() => TextStyle(fontSize: 10.sp);
}
