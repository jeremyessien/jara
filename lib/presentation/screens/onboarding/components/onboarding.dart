import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Authentication/signup/signup.dart';
import 'package:get/get.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return OnBoard(
      pageController: pageController,
      // // // Either Provide onSkip Callback or skipButton Widget to handle skip state
      // onSkip: () {
      //   // print('skipped');
      // },
      // // // Either Provide onDone Callback or nextButton Widget to handle done state
      // onDone: () {
      //   // print('done tapped');
      // },
      onBoardData: onBoardData,
      titleStyles: const TextStyle(
        color: kBlack,
        fontSize: 18,
        fontWeight: FontWeight.w900,
        letterSpacing: 0.15,
      ),
      descriptionStyles: TextStyle(
        fontSize: 16,
        color: kBlack,
      ),
      pageIndicatorStyle: const PageIndicatorStyle(
        width: 100,
        inactiveColor: kGrey,
        activeColor: kGreen,
        inactiveSize: Size(8, 8),
        activeSize: Size(12, 12),
      ),
      // skipButton: TextButton(
      //   onPressed: () {
      //     // print('skipButton pressed');
      //   },
      //   child: const Text(
      //     "Skip",
      //     style: TextStyle(color: kBlack),
      //   ),
      // ),
      // Either Provide onDone Callback or nextButton Widget to handle done state
      nextButton: OnBoardConsumer(
        builder: (context, ref, child) {
          final state = ref.watch(onBoardStateProvider);
          return InkWell(
            onTap: () => _onNextTap(state),
            child: Container(
              width: 230,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [kWhite, kGreen],
                ),
              ),
              child: ElevatedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: Text(
                  state.isLastPage ? "Done" : "Next",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "Set your own goals and get better",
    description: "Goal support your motivation and inspire you to work harder",
    imgUrl: "assets/images/weight.png",
  ),
  const OnBoardModel(
    title: "Track your progress with statistics",
    description:
        "Analyse personal result with detailed chart and numerical values",
    imgUrl: 'assets/images/graph.png',
  ),
  const OnBoardModel(
    title: "Create photo comparision and share your results",
    description:
        "Take before and after photos to visualize progress and get the shape that you dream about",
    imgUrl: 'assets/images/phone.png',
  ),
];
