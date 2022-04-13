import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/settings/infoSection/jaraInfo.dart';
// import 'package:jara/presentation/screens/settings/setup.dart';
import 'package:jara/presentation/helpers/constants.dart';

class InfoBody extends StatelessWidget {
  const InfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          buildInfoOptions(context, 'About Jara'),
          divide,
          buildInfoOptions(context, 'FAQs'),
          divide,
          buildInfoOptions(context, 'Help Center')
        ],
      ),
    );
  }
}
