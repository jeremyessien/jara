import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/settings/deleteAccount/components/body.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  _DeleteAccountState createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(child: DeleteBody()),
    );
  }
}
