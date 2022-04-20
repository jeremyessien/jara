import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Authentication/signup/signup.dart';
import 'package:jara/presentation/screens/settings/components/body.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoutBody extends StatefulWidget {
  const LogoutBody({Key? key}) : super(key: key);

  @override
  _LogoutBodyState createState() => _LogoutBodyState();
}

class _LogoutBodyState extends State<LogoutBody> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          SvgPicture.asset('assets/log.svg'),
          const Text(
            'Logout',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: const Text('Do you wish to logout of Jara?'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: DefaultBtn(
              press: () => Get.to(() => SignUpScreen()),
              text: 'Yes, Logout',
              color: kGreen,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: GestureDetector(
              onTap: () => Get.to(() => const EditSettings()),
              child: const Text(
                'No, take me back',
                style: kStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
