import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quickwalls/constant/text.dart';
import 'package:quickwalls/controller/home_controller.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  HomeController homeController =Get.find();
  late TabController tabController;

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
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Search',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      searchText,
                      // maxLines: 2,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff9D9D9D),
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xffF1F1F3),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(Icons.close_outlined)),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff887EF9)),
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 25,
                        width: 2,
                        decoration: const BoxDecoration(color: Color(0xffD0D1D4)
                            // color: Colors.red
                            ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assets/img/icon_filter.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 8),
                    ],
                  )),
            ),
            SizedBox(height: Get.height*0.02),
            TabBar(
              controller: tabController,
              labelColor: Color(0xff887EF9),
              unselectedLabelColor: Color(0xffBCBEBF),
              dividerColor: Colors.transparent,
              indicatorColor:  Color(0xff887EF9),
              tabs: [
                Tab(
                  child: Text('Photos') ,
                ),
               Tab(
                 child: Text('Categories'),
               ),
                Tab(
                  child:  Text('Author'),
                )

              ],
            ),
            Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: [
                Text('Hii'),
                Text('Byy'),
                Text('Khyy'),
              ]),
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
