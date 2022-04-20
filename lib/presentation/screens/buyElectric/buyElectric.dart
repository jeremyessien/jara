import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/buyElectric/components/body.dart';

class BuyElectric extends StatelessWidget {
  const BuyElectric({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const BuyElectricBody(),
    );
  }
}
