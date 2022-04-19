import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/onboarding/components/screen.dart';

class IntroView extends StatelessWidget {
  final IntroModel introModel;

  const IntroView({Key? key, required this.introModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Text(
            introModel.titleText,
            style: kStyle,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            introModel.subText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            // width: MediaQuery.of(context).size.width - 120,
            // child: AspectRatio(
            //   aspectRatio: 1,
            child: Image.asset(
              introModel.assetImage,
              fit: BoxFit.fill,
              // height: 100,
              // width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
