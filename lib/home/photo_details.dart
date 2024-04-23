import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class PhotosDetails extends StatefulWidget {
  final dynamic details;

  const PhotosDetails({super.key, this.details});

  @override
  State<PhotosDetails> createState() => _PhotosDetailsState();
}

class _PhotosDetailsState extends State<PhotosDetails> {
  var imgUrl = '';

  @override
  void initState() {
    super.initState();
    imgUrl = widget.details['urls']['regular'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Image.network(
            widget.details['urls']['regular'],
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xffF1F2F3),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.arrow_back_ios_new_outlined),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Image.asset(
                  'assets/img/icon_info.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/img/icon_heart.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () async {
                    FileDownloader.downloadFile(
                      url: imgUrl,
                      onDownloadError: (errorMessage) {
                        print('Download Error');
                      },
                      onDownloadCompleted: (path) {
                        final File file = File(path);
                        print('Download Done');
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/img/icon_download.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/img/icon_more.png',
                    height: 35,
                    width: 35,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: Get.height * 0.4,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              Container(
                                height: 5,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: const Color(0xff7A7E80),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              ListTile(
                                title: const Text(
                                  'Set as Lock Screen',
                                  style: TextStyle(fontSize: 18),
                                ),
                                onTap: () async {
                                  int location = WallpaperManager.LOCK_SCREEN;
                                  var file = await DefaultCacheManager()
                                      .getSingleFile(
                                          imgUrl); //can be Home/Lock Screen
                                  bool result = await WallpaperManager
                                      .setWallpaperFromFile(
                                          file.path, location);
                                  Get.back();
                                  showDialogHome(
                                      data:
                                          'Wallpaper is set lock\n screen successfully.');
                                },
                              ),
                              const Divider(
                                height: 10,
                              ),
                              ListTile(
                                title: const Text(
                                  'Set as Home Screen',
                                  style: TextStyle(fontSize: 18),
                                ),
                                onTap: () async {
                                  int location = WallpaperManager.HOME_SCREEN;
                                  var file = await DefaultCacheManager()
                                      .getSingleFile(
                                          imgUrl); //can be Home/Lock Screen
                                  bool result = await WallpaperManager
                                      .setWallpaperFromFile(file.path,
                                          location); //provide image path
                                  Get.back();
                                  showDialogHome(
                                      data:
                                          'Wallpaper is set Home\n screen successfully.');
                                },
                              ),
                              const Divider(
                                height: 10,
                              ),
                              ListTile(
                                title: const Text(
                                  'Set as Both',
                                  style: TextStyle(fontSize: 18),
                                ),
                                onTap: () async {
                                  int location = WallpaperManager.BOTH_SCREEN;
                                  var file = await DefaultCacheManager()
                                      .getSingleFile(
                                          imgUrl); //can be Home/Lock Screen
                                  bool result = await WallpaperManager
                                      .setWallpaperFromFile(file.path,
                                          location); //provide image path
                                  Get.back();
                                  showDialogHome(
                                      data:
                                          'Wallpaper is set both\n screen successfully.');
                                },
                              ),
                              const Divider(
                                height: 10,
                              ),
                              ListTile(
                                title: const Text(
                                  'Report this Photo',
                                  style: TextStyle(fontSize: 18),
                                ),
                                onTap: () {},
                              ),
                              const Divider(
                                height: 10,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F2F3),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      'Apply',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }

  Future<void> showDialogHome({required String data}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xffffffff),
          content: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                "assets/json/wallpaper_set.json",
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                data,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                  Get.back();
                },
                child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(color: Color(0xff4B3A80)),
                    child: const Center(
                        child: Text(
                      'Back to Home',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ))),
              )
            ],
          )),
        );
      },
    );
  }
}
