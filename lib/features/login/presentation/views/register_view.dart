import 'package:flutter/material.dart';
import 'package:krti_app/features/login/presentation/views/register_view.dart';
import 'package:krti_app/features/login/presentation/views/widgets/button.dart';
import 'package:krti_app/features/login/presentation/views/widgets/text_field.dart';
import '../../../app_home/presentation/view/app_home.dart';
import 'login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                // Lottie.network(
                //     'https://lottie.host/6649afa9-8386-46d9-b323-0f988f08c0d0/84f1nT8Ihc.json',
                //     height: 250),
                Image.asset(
                  'assets/images/icon3.png',
                  height: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(color: Colors.grey.shade800),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: emailController,
                  hintText: 'Enter your email',
                  label: 'Email',
                  obscureText: false,
                  mySuffixIcon: Icons.email,
                ),

                const SizedBox(height: 8),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                  label: 'Password',
                  obscureText: true,
                  mySuffixIcon: Icons.lock,
                ),
                const SizedBox(height: 8),
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm your password',
                  label: 'Confirm Password',
                  obscureText: true,
                  mySuffixIcon: Icons.lock,
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [],
                ),

                const SizedBox(height: 30),
                MyButton(
                    onTap: () async {
                      try {
                        await registerUser(
                          passwordController,
                          confirmPasswordController,
                          emailController,
                          context,
                        );


                      } on FirebaseAuthException catch (e) {
                        showSnackBar(context, e.code,Colors.redAccent);
                      }
                    },
                  text: 'Register',
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account? '),
                    GestureDetector(
                      onTap: () {
                        navigateToLoginPage(context);
                      },
                      child: Text(
                        'Login now',
                        style: TextStyle(
                          color: Colors.deepPurple.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                // Row(
                //   children: [
                //     Expanded(child: Divider(
                //       thickness: 1,
                //       color: Colors.grey.shade300,
                //     ),),
                //     const Text('Or Register with'),
                //     Expanded(child: Divider(
                //       thickness: 1,
                //       color: Colors.grey.shade300,
                //     ),),
                //   ],
                // ),

                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return const AppHome();
                //         },
                //       ),
                //     );
                //   },
                //   child: const Text(
                //     'Continue as a guest.',
                //     style: TextStyle(
                //       color: Colors.deepPurpleAccent,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // )
              ],
            ),
          )),
    );
  }

  void navigateToLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          // return HomeTab();
          return const LoginView();
        },
      ),
    );
  }

  Future<void> registerUser(
      TextEditingController passwordController,
      TextEditingController confirmPasswordController,
      TextEditingController emailController,
      BuildContext context) async {
    if (passwordController.text == confirmPasswordController.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      showSnackBar(context, 'Bravo, Now login to start',Colors.greenAccent);
      navigateToLoginPage(context);
    } else {
      showSnackBar(context, 'Oops! Password does not match!',Colors.redAccent);
    }
  }

  void showSnackBar(
    BuildContext context,
    String message,
    Color color,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message,style: TextStyle(color: Colors.white),),
        backgroundColor: color,
      ),
    );
  }
}
