import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickwalls/home/download_filter.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(
             height: Get.height * 0.06,
           ),
           Row(
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
                   child: Icon(Icons.arrow_back_ios_new_outlined),
                 ),
               ),
               InkWell(
                 borderRadius: BorderRadius.circular(10),
                 onTap: () {
                   Get.to(const DownloadFilter());
                 },
                 child: Container(
                     padding: const EdgeInsets.all(14),
                     decoration: BoxDecoration(
                         color: const Color(0xffF1F2F3),
                         borderRadius: BorderRadius.circular(10)),
                     child: Image.asset('assets/img/icon_filter_new.png',
                       height: 20,width: 20,fit: BoxFit.cover,
                     )
                 ),
               ),
             ],
           ),
           SizedBox(
             height: Get.height * 0.03,
           ),
           const Text('Download',
             style: TextStyle(
                 fontSize: 24,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(
             height: Get.height*0.001,
           ),
           Text("You've marked all of these as a favorite!",
             style: const TextStyle(
                 color: Color(0xffA4A4A4)
             ),
           ),
         ],
        ),
      ),
    );
  }
}
