import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quickwalls/login/login.dart';
import 'package:quickwalls/onboard.dart';

import 'home/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {

  final box = GetStorage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),
    () {
      if(box.read('onBoarding')??false){
        if(box.read('IsLogin')??false){
          Get.to(HomePage());
        } else{
          Get.to(Login());
        }

      }else{
        Get.to(OnBoard());
      }

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
