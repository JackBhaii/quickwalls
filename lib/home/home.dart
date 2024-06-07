import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quickwalls/controller/home_controller.dart';
import 'package:quickwalls/home/categories_tab.dart';
import 'package:quickwalls/home/home_tab.dart';
import 'package:quickwalls/home/search_tab.dart';
import 'package:quickwalls/home/setting/setting_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgetList = [
    HomeTab(),
    CategoriesTab(),
    SearchTab(),
    SettingTab(),
  ];

  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => widgetList.elementAt(homeController.selectedPosition.value),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   surfaceTintColor: Colors.white,
      //   child: Container(
      //       width: double.maxFinite,
      //       decoration: BoxDecoration(
      //           color: const Color(0xff2A303E),
      //           borderRadius: BorderRadius.circular(15)),
      //       child: Obx(
      //         () => Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             InkWell(
      //               onTap: () {
      //                 homeController.selectedPosition.value = 0;
      //               },
      //               child: Image.asset(
      //                   homeController.selectedPosition.value == 0?
      //                   'assets/img/icon_home_white.png'
      //                       : 'assets/img/home_icon.png'
      //                 ,height: 30,width: 30,  fit: BoxFit.cover,
      //               ),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 homeController.selectedPosition.value = 1;
      //               },
      //               child:  Image.asset(
      //                 homeController.selectedPosition.value == 1?
      //                 'assets/img/icon_grid_white.png'
      //                     : 'assets/img/icon_grid.png'
      //                 ,height: 27,width: 27,  fit: BoxFit.cover,
      //               ),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 homeController.selectedPosition.value = 2;
      //               },
      //               child:   Image.asset(
      //                 homeController.selectedPosition.value == 2?
      //                 'assets/img/icon_search_white.png'
      //                     : 'assets/img/search_icon.png'
      //                 ,height: 30,width: 30,  fit: BoxFit.cover,
      //               ),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 homeController.selectedPosition.value = 3;
      //               },
      //               child:  Image.asset(
      //                 homeController.selectedPosition.value == 3?
      //                 'assets/img/icon_setting_white.png'
      //                     : 'assets/img/setting_icon.png'
      //                 ,height: 30,width: 30,  fit: BoxFit.cover,
      //               ),
      //             ),
      //           ],
      //         ),
      //       )),
      // ),
    );
  }
}
