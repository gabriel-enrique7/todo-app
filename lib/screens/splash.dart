import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/screens/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigationPage() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
      (route) => false
    );
  }

  startTime() {
    Duration duration = const Duration(seconds: 2);
    return Timer(duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo.png'
        ),
      ),
    );
  }
}