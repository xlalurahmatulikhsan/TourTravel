import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/views/auth/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () {
        Get.off(() => const LoginPage());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/myGuide.png'),
            ),
          ),
          height: 160,
          width: 160,
        ),
      ),
    );
  }
}
