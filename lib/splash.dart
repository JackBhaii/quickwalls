import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickwalls/onboard.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),
    () {
      Get.to(OnBoard());
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/img/splash.JPG",
        height: double.maxFinite,
        width: double.maxFinite,
        fit: BoxFit.cover,
        ),
      )
    );
  }
}
