import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:quickwalls/controller/home_controller.dart';
import 'package:quickwalls/home/home_tab.dart';

import '../constant/vars.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({super.key});

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  List<Map<String, dynamic>> collections = [
    {'title': 'Sport', 'img': 'assets/img/smample_img18.jpg'},
    {'title': 'Nature', 'img': 'assets/img/nature_wallpaper.jpg'},
    {'title': 'Animal', 'img': 'assets/img/animals_wallpaper.jpg'},
    {'title': 'Food', 'img': 'assets/img/food_wallpaper.jpg'},
    {'title': 'Travel', 'img': 'assets/img/travel_wallpaper.jpg'},
    {'title': 'Aesthetic', 'img': 'assets/img/aesthetics_wallpapers.jpg'},
    {'title': 'AstroPhotography', 'img': 'assets/img/astro_wallpaper.jpg'},
  ];
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
              'Collections',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: collections.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.maxFinite,
                    height: 150,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            collections[index]['img'] ?? '',
                            fit: BoxFit.cover,
                            height: double.maxFinite,
                            width: double.maxFinite,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20),
                              child: Text(
                                collections[index]['title'] ?? '',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20),
                              child: Text(
                                '1207 Wallpapers',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
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
