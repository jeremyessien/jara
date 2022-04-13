import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/screens/settings/invite/inviteScreen.dart';

Padding buildNotificationOption(
    String title, bool value, Function onChangeMethod) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kStyle,
        ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: kGreen,
            trackColor: kGrey,
            value: value,
            onChanged: (bool newValue) {
              onChangeMethod(newValue);
            },
          ),
        ),
      ],
    ),
  );
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kStyle,
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () => Get.to(() => const InviteScreen()),
          ),
        ],
      ),
    ),
  );
}

GestureDetector buildSettingsOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Text(
        title,
        style: kStyle,
      ),
    ),
  );
}
