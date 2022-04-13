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
    return Card(
      child: Column(
        children: [
          SvgPicture.asset('assets/log.svg'),
          const Text(
            'Delete Account',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: const Text('Do you wish to delete your Jara account?'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: DefaultBtn(
              press: () => Get.to(() => const DeleteScreen()),
              text: 'Yes, Delete',
              color: kGreen,
            ),
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
        ],
      ),
    );
  }
}
