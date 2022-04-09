import 'package:flutter/material.dart';

import 'components/body.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResetBody(),
    );
  }
}
