import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../app_home/presentation/view/app_home.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  initState() {
    super.initState();
    slidingAnimationFun();
    timerPageNavigator();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 150,
        ),
        const SizedBox(height: 10),
        const Text(
          'K R T I',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 50),
        ),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: Text(
                  ' Best & Unique Greeting Cards',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      // color: Colors.deepPurple.shade300,
                      // fontWeight: FontWeight.bold,
                      // fontSize: 60,
                      ),
                ),
              );
            }),
      ],
    );
  }

  void slidingAnimationFun() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 6),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }

  void timerPageNavigator() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const AppHome(),
          ),
        );
      },
    );
  }
}
