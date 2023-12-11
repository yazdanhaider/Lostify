import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  _IntroPage1State createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Use CurvedAnimation for easing
    final CurvedAnimation curvedAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _scaleAnimation = Tween<double>(begin: 0.75, end: 1.0).animate(curvedAnimation);
    _opacityAnimation = Tween<double>(begin: 0.50, end: 1.0).animate(curvedAnimation);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 220.0),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Opacity(
                    opacity: _opacityAnimation.value,
                    child: Text(
                      "L Ø S T I F Y",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Lottie.network(
            'https://lottie.host/1c27671d-ca0a-4251-b0d2-6f387cac86b8/cj9mRQjKGh.json',
            width: 400,
            height: 400,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              "Lost something? Find it together.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
