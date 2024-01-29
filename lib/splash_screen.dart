
import 'dart:async';

import 'package:bigblocktrader/home_screen.dart';
import 'package:bigblocktrader/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // Wait for 3 seconds and then navigate to the next screen
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image(
              image: AssetImage('assets/logobb.png',), height: 100,
          ),
        ),
      ),
    );
  }
}
