import 'package:flutter/material.dart';
// import 'package:jara/presentation/screens/settings/setup.dart';
import 'package:jara/presentation/helpers/constants.dart';

GestureDetector buildInfoOptions(BuildContext context, String title) {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Text(
        title,
        style: kStyle,
      ),
    ),
  );
}
