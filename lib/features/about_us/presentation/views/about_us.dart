import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const AppBarCategory(),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/4.jpg'),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Our app  is a participant in the Amazon Services LLC Associates Program,'
                  ' an affiliate advertising program.\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
              ),
              child:  Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(' Thank you for being part of our family  🤍',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      '© 2023, K R T I',
                      style: TextStyle(
                        color: Colors.red.shade100,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
