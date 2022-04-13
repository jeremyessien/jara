import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/onboarding/components/onboarding.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Onboarding(),
      ),
    );
  }
}
