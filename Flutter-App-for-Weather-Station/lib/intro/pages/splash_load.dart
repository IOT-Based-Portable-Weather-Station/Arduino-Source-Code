import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weatther_station/authpage/Pages/authpage.dart';
import 'package:weatther_station/home/pages/home.dart';
import 'package:weatther_station/intro/widgets/splashscreen_widget.dart';

class SplashScreenLoad extends StatefulWidget {
  const SplashScreenLoad({super.key});

  @override
  State<SplashScreenLoad> createState() => _SplashScreenLoadState();
}

class _SplashScreenLoadState extends State<SplashScreenLoad> {
  _loadAndMove() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (builder) => const AuthPage()));
    });
  }

  @override
  void initState() {
    _loadAndMove();
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
