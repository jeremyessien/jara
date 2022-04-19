// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
// import 'package:jara/presentation/screens/settings/components/scrollable.dart';
import 'package:jara/presentation/screens/settings/infoSection/components/body.dart';
import 'package:jara/presentation/screens/settings/profile/editForm.dart';
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
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/profile.svg'),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    // Text(
                    //   'Uchenna Umunna',
                    //   style: kStyle,
                    // ),
                    GestureDetector(
                        onTap: () => Get.to(() => const EditProfile()),
                        child: TextButton(
                          onPressed: () => Get.to(() => const EditForm()),
                          child: const Text('Edit Profile',
                              style: TextStyle(
                                color: kWhite,
                                backgroundColor: kGreen,
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
              textAlign: TextAlign.left,
              style: headStyle,
            ),
            Card(
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
            Card(
              elevation: 0.5,
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
            const SizedBox(
              height: 10,
            ),
            Card(
              child: GestureDetector(
                onTap: () => Get.to(() => const LogOut()),
                child: const Text(
                  'Log Out ',
                  style: kStyle,
                ),
              ),
            ),
            Card(
              child: GestureDetector(
                onTap: () => Get.to(() => const DeleteAccount()),
                child: const Text(
                  'Delete Account',
                  style: kStyle,
                ),
              ),
            ),
          ],
        ));
  }
}
