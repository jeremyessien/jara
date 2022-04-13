import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/settings/infoSection/components/body.dart';
import 'package:jara/presentation/screens/settings/setup.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/screens/settings/logOut/logOut.dart';
import 'package:jara/presentation/screens/settings/profile/components/body.dart';
import 'package:jara/presentation/screens/settings/deleteAccount/deleteAccount.dart';

class EditSettings extends StatefulWidget {
  const EditSettings({Key? key}) : super(key: key);

  @override
  _EditSettingsState createState() => _EditSettingsState();
}

class _EditSettingsState extends State<EditSettings> {
  bool valNotifyOne = true;
  bool valNotifyTwo = false;
  bool valNotifyThree = false;

  onChangeFunction(bool newValueOne) {
    setState(() {
      valNotifyOne = newValueOne;
    });
  }

  onChangeFunctionTwo(bool newValueTwo) {
    setState(() {
      valNotifyTwo = newValueTwo;
    });
  }

  onChangeFunctionThree(bool newValueThree) {
    setState(() {
      valNotifyThree = newValueThree;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/profile.svg'),
                SizedBox(
                  width: 10.sp,
                ),
                Column(
                  children: [
                    // Text(
                    //   'Uchenna Umunna',
                    //   style: kStyle,
                    // ),
                    GestureDetector(
                        onTap: () => Get.to(() => const EditProfile()),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Edit Profile',
                              style: TextStyle(
                                color: kWhite,
                              )),
                        ))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              'GENERAL',
              style: headStyle,
            ),
            Expanded(
              child: Column(children: [
                buildNotificationOption(
                    'Allow Push Notification', valNotifyOne, onChangeFunction),
                divide,
                buildNotificationOption('Allow SMS Notification', valNotifyTwo,
                    onChangeFunctionTwo),
                divide,
                buildNotificationOption('Allow Email Notification',
                    valNotifyThree, onChangeFunctionThree),
                divide,
                buildAccountOption(context, 'Invite a Friend'),
              ]),
            ),
            const Text(
              'LEGAL',
              style: headStyle,
            ),
            Expanded(
              child: Column(
                children: [
                  buildSettingsOption(context, 'Privacy Policy'),
                  divide,
                  buildSettingsOption(context, 'Community guidelines'),
                  divide,
                  buildSettingsOption(context, 'Terms of Service'),
                  divide,
                ],
              ),
            ),
            const Text(
              'HELP DESK',
              style: headStyle,
            ),
            const InfoBody(),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => Get.to(() => const LogOut()),
                child: const Text(
                  'Log Out ',
                  style: kStyle,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => Get.to(() => const DeleteAccount()),
                child: const Text(
                  'Delete Account',
                  style: kStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
