import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController{

  String mail = '' , pass = '' ;

  bool passwordVisible = false;
  bool conPasswordVisible = false;
  bool isPasswordMatched=false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();




}