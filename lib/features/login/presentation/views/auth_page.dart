import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/views/home_view.dart';
import 'package:krti_app/features/splash_view/presentation/view/splash_view.dart';

import '../../../app_home/presentation/view/app_home.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot) {
          //user is logged in
          if(snapshot.hasData){
            return AppHome();
          }
          //user is NOT logged in
          return SplashView();
        },
      ),
    );
  }
}
