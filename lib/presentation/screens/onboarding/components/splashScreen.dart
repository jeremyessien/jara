import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/onboarding/onboard.dart';
import 'package:get/get.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController slideAnimation;
  late Animation<Offset> offsetAnimation;
  late Animation<Offset> imageAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this,
        lowerBound: 0,
        upperBound: 60,
        animationBehavior: AnimationBehavior.normal,
        duration: const Duration(milliseconds: 700));
    slideAnimation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
    animationController.forward();
    offsetAnimation = Tween<Offset>(
            begin: Offset.zero, end: const Offset(-0.05, 0.0))
        .animate(CurvedAnimation(parent: slideAnimation, curve: Curves.easeIn));
    imageAnimation = Tween<Offset>(
      begin: const Offset(-0.5, -0.5),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: slideAnimation, curve: Curves.easeIn));
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        slideAnimation.forward();
      }
    });
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(() => Onboard());
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kWhite,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                  animation: animationController,
                  builder: (_, child) {
                    return SlideTransition(
                      position: offsetAnimation,
                      child: Image.asset(
                        'assets/jara.png',
                      ),
                    );
                    // SlideTransition(
                    //   position: imageAnimation,
                    //   child: const Text(
                    //     "Welcome to Jara",
                    //     style: kStyle,
                    //   ),
                    // );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
