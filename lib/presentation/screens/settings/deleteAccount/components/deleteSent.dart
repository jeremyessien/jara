import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Authentication/signup/signup.dart';
import 'package:jara/presentation/screens/onboarding/onboard.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';

class DeleteSent extends StatefulWidget {
  const DeleteSent({Key? key}) : super(key: key);

  @override
  _DeleteSentState createState() => _DeleteSentState();
}

class _DeleteSentState extends State<DeleteSent> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: kWhite,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/delete.svg'),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Account Deleted',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: const Text(
                'Your account has been deleted. We are sad to see you go but in case you change your mind, you will be able to still login with your account details within 30 days.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: DefaultBtn(
                press: () => Get.to(() => SignUpScreen()),
                text: 'Login',
                color: kGreen,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: TextButton(
                onPressed: () => Get.to(() => Onboard()),
                child: const Text('Close', style: kStyle),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
