import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/login/presentation/views/auth_page.dart';
import 'features/login/presentation/views/login_view.dart';
import 'features/splash_view/presentation/view/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
          //body: OnBoardingScreen(),
          // body: LoginView(),
          body: AuthPage(),
        ),
    );
  }
}
