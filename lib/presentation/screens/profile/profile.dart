import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/profile/components/body.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const ProfileBody(),
    );
  }
}
