import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'sliding_text.dart';
class SplashBodyView extends StatefulWidget {
  const SplashBodyView({super.key});

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

  initSlidingAnimation();
 navigateToHome();

  }


  @override
  void dispose() {
    super.dispose();
    //when animation finish dispose it
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
  void initSlidingAnimation(){
    //controller
    animationController = AnimationController(vsync: this,duration: const Duration(seconds: 1));
    //animation that change values
    slidingAnimation=Tween<Offset>(begin:const Offset(0,3) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
  void navigateToHome(){
    Future.delayed(const Duration(seconds: 2),()
    {
      Get.to(() => const HomeView(),transition: Transition.rightToLeft,duration: kTransitionDuration);
    });
  }
}

