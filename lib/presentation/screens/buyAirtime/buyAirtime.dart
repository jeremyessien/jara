import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/buyAirtime/components/body.dart';

class BuyAirtime extends StatelessWidget {
  const BuyAirtime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const BuyAirtimeBody(),
    );
  }
}
