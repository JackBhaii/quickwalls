import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  bool switchValue = false;
  bool switchChange = true;
  bool switchNotification = true;

  HomeController homeController =Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.06,
            ),
            const Text(
              'Settings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/img/icon_edit.png',
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(child: Text('Update Profile')),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/img/icon_language.png',
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    const Expanded(child: Text('Language')),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/dark_mood.png',
                    height: 25,
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(child: Text('Dark Theme')),
                  CupertinoSwitch(
                    activeColor: const Color(0xff6B4EFF),
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/change_cloud.png',
                    height: 25,
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(child: Text('Auto Change Wallpaper')),
                  CupertinoSwitch(
                    activeColor: const Color(0xff6B4EFF),
                    value: switchChange,
                    onChanged: (value) {
                      setState(() {
                        switchChange = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/notification (2).png',
                    height: 25,
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(child: Text('Enable Notification')),
                  CupertinoSwitch(
                    activeColor: const Color(0xff6B4EFF),
                    value: switchNotification,
                    onChanged: (value) {
                      setState(() {
                        switchNotification = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/img/icon_star.png',
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Rate this App'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/img/share.png',
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Share with friend'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: const Color(0xff2A303E),
                borderRadius: BorderRadius.circular(15)),
            child: Obx(
                  () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      homeController.selectedPosition.value = 0;
                    },
                    child: Image.asset(
                      homeController.selectedPosition.value == 0?
                      'assets/img/icon_home_white.png'
                          : 'assets/img/home_icon.png'
                      ,height: 30,width: 30,  fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      homeController.selectedPosition.value = 1;
                    },
                    child:  Image.asset(
                      homeController.selectedPosition.value == 1?
                      'assets/img/icon_grid_white.png'
                          : 'assets/img/icon_grid.png'
                      ,height: 27,width: 27,  fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      homeController.selectedPosition.value = 2;
                    },
                    child:   Image.asset(
                      homeController.selectedPosition.value == 2?
                      'assets/img/icon_search_white.png'
                          : 'assets/img/search_icon.png'
                      ,height: 30,width: 30,  fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      homeController.selectedPosition.value = 3;
                    },
                    child:  Image.asset(
                      homeController.selectedPosition.value == 3?
                      'assets/img/icon_setting_white.png'
                          : 'assets/img/setting_icon.png'
                      ,height: 30,width: 30,  fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
