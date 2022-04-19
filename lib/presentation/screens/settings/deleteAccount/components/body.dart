import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/screens/settings/components/body.dart';
import 'package:jara/presentation/screens/settings/deleteAccount/components/deleteScreen.dart';

class DeleteBody extends StatefulWidget {
  const DeleteBody({Key? key}) : super(key: key);

  @override
  _DeleteBodyState createState() => _DeleteBodyState();
}

class _DeleteBodyState extends State<DeleteBody> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kWhite,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/log.svg'),
          SizedBox(
            height: 5,
          ),
          const Text(
            'Delete Account',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          divide,
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: const Text(
              'Do you wish to delete your Jara \n account?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 35.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: DefaultBtn(
              press: () => Get.to(() => const DeleteScreen()),
              text: 'Yes, Delete',
              color: kGreen,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: GestureDetector(
              onTap: () => Get.to(() => const EditSettings()),
              child: const Text(
                'No, take me back',
                style: kStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
