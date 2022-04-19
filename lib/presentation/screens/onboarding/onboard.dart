import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Authentication/signup/signup.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:jara/presentation/screens/onboarding/components/screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/onboarding/components/introView.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColorLight,
      backgroundColor: kWhite,
      body: Onboarding(),
    );
  }
}

class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);
  final PageController pageController = PageController(initialPage: 0);
  final List<IntroModel> introPageList = ([
    IntroModel(
        'Shop more, Save more',
        ' All items in the Jara Store are marked down which means that you save everytime you shop. You can do more with your reward points than ever before.',
        'assets/shop.png'),
    IntroModel(
        'Receive Discounts',
        ' You receive discounts and deals from your favourite stores which means that you save more of your money everytime you shop on Jara.',
        'assets/discount.png'),
    IntroModel(
        'Share Rewards and Deals',
        'You can shop from select stores using your accumulated points on your Jara Discount Card. You can also give the gift of a Jara Card to your loved ones.',
        'assets/share.png'),
    IntroModel(
        'Shop for anything',
        'You can go through our Jara Stores to search for anything you want from clothing to spa visits all on your Jara app.',
        'assets/webshop.png'),
    IntroModel(
        'Earn reward points',
        'You can earn Jara points everytime you shop from one of our select sellers. You can also buy with your accumulated Jara points',
        'assets/online.png')
  ]);
  var currentShowIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // SizedBox(height: 20.h),
        Expanded(
            child: PageView(
          controller: pageController,
          physics: const BouncingScrollPhysics(),
          pageSnapping: true,
          onPageChanged: (index) {
            currentShowIndex = index;
          },
          scrollDirection: Axis.horizontal,
          children: [
            IntroView(introModel: introPageList[0]),
            IntroView(introModel: introPageList[1]),
            IntroView(introModel: introPageList[2]),
            IntroView(introModel: introPageList[3]),
            IntroView(introModel: introPageList[4]),
          ],
        )),
        SmoothPageIndicator(
          controller: pageController,
          count: introPageList.length,
          effect: const SlideEffect(
            dotColor: kGrey,
            activeDotColor: kGreen,
          ),
          onDotClicked: (index) {},
        ),
        const SizedBox(
          height: 40.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: DefaultBtn(
            press: () {
              currentShowIndex + 1 == introPageList.length
                  ? Get.to(() => const SignUpScreen())
                  : 'Continue';
              pageController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            text: 'Continue',
            color: kGreen,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: TextButton(
            onPressed: () => Get.to(() => const SignUpScreen()),
            child: Text('Skip',
                style: TextStyle(
                  color: kBlack,
                  fontSize: 15.h,
                )),
          ),
        ),
      ],
    );
  }
}
