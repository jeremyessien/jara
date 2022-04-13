import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/settings/components/body.dart';
// import 'package:jara/presentation/helpers/theme.dart';

class Setup extends StatefulWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  _SetupState createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrey,
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kGreen,
          ),
        ),
        // appBarTheme:AppBarTheme(),
      ),
      body: const SafeArea(child: EditSettings()),
    );
  }
}
