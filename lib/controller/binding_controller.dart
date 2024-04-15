import 'package:get/get.dart';
import 'package:quickwalls/controller/home_controller.dart';
import 'package:quickwalls/controller/user_controller.dart';

class BindingController implements Bindings{
  @override
  void dependencies() {

    Get.lazyPut<UserController>(() => UserController(),fenix: false);
    Get.lazyPut<HomeController>(() => HomeController(),fenix: false);
  }
}