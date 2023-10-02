import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krti_app/features/on_boarding_screen/presentation/views/on_boarding_page.dart';
import 'features/splash_view/presentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KRTI',
        //theme: ThemeData ().copyWith(
      theme: ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.rubikTextTheme()
              .apply(bodyColor: Colors.grey.shade800),
        ),
        home: const Scaffold(
          // body: SplashView(),
          body: OnBoardingScreen(),

        ));
  }
}
