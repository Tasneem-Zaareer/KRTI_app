import 'package:flutter/material.dart';
import 'package:krti_app/features/login/presentation/views/register_view.dart';
import 'package:krti_app/features/login/presentation/views/widgets/button.dart';
import 'package:krti_app/features/login/presentation/views/widgets/text_field.dart';
import '../../../app_home/presentation/view/app_home.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Column(
                children: [
                  // Lottie.network(
                  //     'https://lottie.host/6649afa9-8386-46d9-b323-0f988f08c0d0/84f1nT8Ihc.json',
                  //     height: 250),
                  Image.asset(
                    'assets/images/icon3.png',
                    height: 150,
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
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),
                  MyButton(
                    text: 'Login',
                    onTap: () async {
                      // //get data and check if user exist
                      // await getUserData();
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a member of our family? '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                // return HomeTab();
                                return const RegisterView();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Register now',
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

                  Row(
                    children: [
                      Expanded(child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),),
                      const Text('Or'),
                      Expanded(child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const AppHome();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Continue as a guest.',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
