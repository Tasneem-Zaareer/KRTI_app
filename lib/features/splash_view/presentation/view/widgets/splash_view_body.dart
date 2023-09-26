import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../app_home/presentation/view/app_home.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  initState() {
    super.initState();
    timerPageNavigator();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
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
        const Text(
          ' Best & Unique Greeting Cards',
          textAlign: TextAlign.center,
        ),
      ],
    );

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
