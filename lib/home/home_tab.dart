import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:quickwalls/controller/home_controller.dart';
import 'package:quickwalls/home/download.dart';
import 'package:quickwalls/home/favorite.dart';
import 'package:quickwalls/home/photo_details.dart';
import 'package:quickwalls/home/privacy_policy.dart';
import 'package:quickwalls/home/report_issue.dart';


class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  HomeController homeController = Get.find();
  final _advancedDrawerController = AdvancedDrawerController();
  int index = 0;
  bool isSelect = false;
  String? lookType = "Trending";
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff936CFF), Color(0xff645AFF)],
            ),
          ),
        ),
        drawer: SafeArea(
            child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 70,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: index == 0 ? Colors.white : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    index = 0;
                    setState(() {});
                  },
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16),
                        child: Image.asset(
                          "assets/img/home_icon.png",
                          color: index == 0
                              ? const Color(0xff0A8ED9)
                              : Colors.white,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 125.0),
                        child: Text(
                          'Home',
                          style: TextStyle(
                              color: index == 0
                                  ? const Color(0xff0A8ED9)
                                  : Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: index == 1 ? Colors.white : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    index = 1;
                    Get.to(const Favorite());
                    setState(() {});
                  },
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16),
                        child: Image.asset(
                          "assets/img/icon_heart.png",
                          color: index == 1
                              ? const Color(0xff0A8ED9)
                              : Colors.white,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 125.0),
                        child: Text(
                          'Favorites',
                          style: TextStyle(
                              color: index == 1
                                  ? const Color(0xff0A8ED9)
                                  : Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: index == 2 ? Colors.white : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    index = 2;
                    Get.to(const Download());
                    setState(() {});
                  },
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16),
                        child: Image.asset(
                          "assets/img/icon_file_download.png",
                          color: index == 2
                              ? const Color(0xff0A8ED9)
                              : Colors.white,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 125.0),
                        child: Text('Download',
                            style: TextStyle(
                                color: index == 2
                                    ? const Color(0xff0A8ED9)
                                    : Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: index == 3 ? Colors.white : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    index = 3;
                    Get.to(const PrivacyPolicy());
                    setState(() {});
                  },
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 16),
                        child: Image.asset(
                          "assets/img/icon_file.png",
                          color: index == 3
                              ? const Color(0xff0A8ED9)
                              : Colors.white,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 125.0),
                        child: Text('Privacy Policy',
                            style: TextStyle(
                                color: index == 3
                                    ? const Color(0xff0A8ED9)
                                    : Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: index == 4 ? Colors.white : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    index = 4;
                    Get.to(const ReportIssue());
                    setState(() {});
                  },
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Image.asset(
                          "assets/img/icon_warning.png",
                          color: index == 4
                              ? const Color(0xff0A8ED9)
                              : Colors.white,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 125),
                        child: Text('Report an issue',
                            style: TextStyle(
                                color: index == 4
                                    ? const Color(0xff0A8ED9)
                                    : Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: index == 5 ? Colors.white : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    index = 5;
                    setState(() {});
                  },
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Image.asset(
                          "assets/img/icon_logout.png",
                          color: index == 5
                              ? const Color(0xff0A8ED9)
                              : Colors.white,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 125),
                        child: Text('Log Out',
                            style: TextStyle(
                                color: index == 5
                                    ? const Color(0xff0A8ED9)
                                    : Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
        child: Scaffold(
          onDrawerChanged: (val) {
            debugPrint("Open=>$val");
            _advancedDrawerController.addListener(() {});
          },
          appBar: AppBar(
            surfaceTintColor: Colors.white,
            leading: InkWell(
                onTap: () {
                  _advancedDrawerController.showDrawer();
                },
                child: const Icon(Icons.menu, color: Colors.black, size: 30)),
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Image.asset("assets/img/appLogo.png", height: 55, width: 55),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/img/icon_notification.png',
                  height: 25,
                  width: 25,
                ),
              )
            ],
          ),
          // drawer: const CustomDrawer(),
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Featured.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Icon(Icons.arrow_back_outlined)),
                    const SizedBox(width: 8),
                    InkWell(
                        onTap: () {},
                        child: const Icon(Icons.arrow_forward_outlined)),
                  ],
                ),
                Container(
                  width: double.maxFinite,
                  height: Get.height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/img/smample_img18.jpg',
                      width: double.maxFinite,
                      height: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/img/sample_img2.jpg',
                            width: double.maxFinite,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 70,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(8)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/img/sample_img3.jpg',
                            width: double.maxFinite,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 70,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(8)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/img/sample_img4.jpg',
                            width: double.maxFinite,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButtonFormField<String>(
                          items: const [
                            DropdownMenuItem(
                                value: "Recent",
                                child: Text("Recent",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400))),
                            DropdownMenuItem(
                                value: "Trending",
                                child: Text("Trending",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400))),
                            DropdownMenuItem(
                              value: "Exclusive",
                              child: Text("Exclusive",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8)),
                          // value:  experience,
                          isExpanded: true,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          value: lookType,
                          onChanged: (String? value) {
                            lookType = value!;
                            setState(() {});
                          },
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff414753),
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              isSelect = false;
                              setState(() {});
                            },
                            child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: !isSelect
                                        ? Color(0xff887EF9)
                                        : Color(0xff2A303E),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Image.asset(
                                  'assets/img/grid_different.png',
                                  height: 20,
                                )),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              isSelect = true;

                              setState(() {});
                            },
                            child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: isSelect
                                        ? Color(0xff887EF9)
                                        : Color(0xff2A303E)),
                                child: Image.asset(
                                  'assets/img/grid.png',
                                  height: 20,
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                isSelect
                    ? Obx(() => GridView.builder(
                          shrinkWrap: true,
                          itemCount: homeController.imgList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 1 / 1.7),
                          itemBuilder: (context, index) {
                            return Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: InkWell(
                                          onTap: () {
                                            debugPrint('hii');
                                            Get.to(PhotosDetails(details: homeController.imgList[index]));
                                          },
                                          child: Image.network(
                                            homeController.imgList[index]['urls']
                                                    ['regular']
                                                .toString(),
                                            height: double.maxFinite,
                                            width: double.maxFinite,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          if(homeController.imgList[index]['isFavorite']==null){
                                            homeController.imgList[index]['isFavorite']="Y";
                                          }else{
                                            homeController.imgList[index]['isFavorite']=null;
                                          }
                                          homeController.favImgList.add(homeController.imgList[index]);
                                          setState(() {});
                                        },
                                        child: Image.asset(
                                          homeController.imgList[index]['isFavorite']==null
                                              ? 'assets/img/icon_heart.png'
                                              : 'assets/img/icon_heart_fill.png',
                                          height: 30,
                                          width: 27,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  ],
                                ));
                          },
                        ))
                    : FutureBuilder<dynamic>(
                        future: homeController.getImg(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              //this is what you actually need
                              child: StaggeredGrid.count(
                                crossAxisCount: 2,
                                mainAxisSpacing: 3.0,
                                crossAxisSpacing: 4.0,
                                children: List.generate(
                                    snapshot.data.value.length, (index) {
                                  return Card(
                                    semanticContainer: false,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.to(PhotosDetails(details: homeController.imgList[index]));
                                              },
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Image.network(snapshot
                                                              .data.value[index]
                                                          ['urls']['regular'] ??
                                                      "")),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: InkWell(
                                                onTap: () {
                                                  if(homeController.imgList[index]['isFavorite']==null){
                                                    homeController.imgList[index]['isFavorite']="Y";
                                                  }else{
                                                    homeController.imgList[index]['isFavorite']=null;
                                                  }
                                                  homeController.favImgList.add(homeController.imgList[index]);
                                                  setState(() {});
                                                },
                                                child: Image.asset(
                                                  homeController.imgList[index]['isFavorite']==null
                                                      ? 'assets/img/icon_heart.png'
                                                      : 'assets/img/icon_heart_fill.png',
                                                  height: 30,
                                                  width: 27,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }), // add some space
                              ),
                            );
                          } else {
                            return const Center(
                                child:
                                    CircularProgressIndicator()); // If there are no data show this
                          }
                        })
              ]),
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
                          homeController.selectedPosition.value == 0
                              ? 'assets/img/icon_home_white.png'
                              : 'assets/img/home_icon.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          homeController.selectedPosition.value = 1;
                        },
                        child: Image.asset(
                          homeController.selectedPosition.value == 1
                              ? 'assets/img/icon_grid_white.png'
                              : 'assets/img/icon_grid.png',
                          height: 27,
                          width: 27,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          homeController.selectedPosition.value = 2;
                        },
                        child: Image.asset(
                          homeController.selectedPosition.value == 2
                              ? 'assets/img/icon_search_white.png'
                              : 'assets/img/search_icon.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          homeController.selectedPosition.value = 3;
                        },
                        child: Image.asset(
                          homeController.selectedPosition.value == 3
                              ? 'assets/img/icon_setting_white.png'
                              : 'assets/img/setting_icon.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }
}
