import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/screens/settings/invite/components/inviteSent.dart';

class InviteBody extends StatefulWidget {
  const InviteBody({Key? key}) : super(key: key);

  @override
  _InviteBodyState createState() => _InviteBodyState();
}

class _InviteBodyState extends State<InviteBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          const Text(
            'Invite a friend',
            style: TextStyle(
              color: kBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'Loving the experience and wish to tell a friend or three about the Jara app? Just input their details and we’ll shoot them an email immediately to notify them.',
            style: TextStyle(
              fontSize: 15.0,
              color: kBlack,
            ),
          ),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                  label: Text('Write a message (Optional)')),
            ),
          ),
          DefaultBtn(
            press: () => Get.to(() => const InviteSent()),
            text: ' Invite ',
            color: kGreenLight,
          )
        ],
      ),
    );
  }
}
