import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/topUp/components/body.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TopUpBody(),
      ),
    );
  }
}
