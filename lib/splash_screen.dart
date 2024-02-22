import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_given/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      // Moving to another screen sequently
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Container(
        color: Colors.grey.shade600,
        child: const Center(
          child: Icon(
            Icons.school_sharp,
            color: Colors.white,
            size: 100,
          ),
          // child: Text(
          // "Movies",
          // style: TextStyle(
          //   fontSize: 35,
          //   fontWeight: FontWeight.w700,
          //   color: Colors.white70,
        ),
      ),
    );
  }
}
