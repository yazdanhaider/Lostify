import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/b92c7f4f-686d-44cd-b188-4d7328177703/465fOMWoJQ.json',
            ),
            SizedBox(height: 90.0),
            Center(
              child: Text(
                "Together, we can bring lost things home.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),

      ),
    );
  }
}
