import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/settings/invite/components/body.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({Key? key}) : super(key: key);

  @override
  _InviteScreenState createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhite,
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () => Get.back(),
      //     icon: const Icon(Icons.arrow_back_ios_new_rounded),
      //   ),
      // ),
      body: SafeArea(child: InviteBody()),
    );
  }
}
