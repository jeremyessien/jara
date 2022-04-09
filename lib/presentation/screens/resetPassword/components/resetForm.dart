import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';

class ResetForm extends StatefulWidget {
  const ResetForm({Key? key}) : super(key: key);

  @override
  State<ResetForm> createState() => _ResetFormState();
}

class _ResetFormState extends State<ResetForm> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              label: Text('New Password'),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              label: Text('Confirm Password'),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          DefaultBtn(
            press: () {},
            text: 'Reset',
            color: kGreenLight,
          ),
        ],
      ),
    );
  }
}
