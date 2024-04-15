import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class DownloadFilter extends StatefulWidget {
  const DownloadFilter({super.key});

  @override
  State<DownloadFilter> createState() => _DownloadFilterState();
}

class _DownloadFilterState extends State<DownloadFilter> {

  bool latestUpload = true;
  bool newestCollection = false;
  bool mostDownload = true;
  bool exclusiveFirst = false;
  bool short = false;

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
            SizedBox(
              height: Get.height * 0.03,
            ),
            const Text('Filter',
              style: TextStyle(
                  fontSize: 24,fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: Get.height*0.001,
            ),
            const Text("Don't see what you need? Add some filters to narrow\ndown your results.",
              style: TextStyle(
                  color: Color(0xffA4A4A4)
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const Expanded(child: Text('Latest Uploads',
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                  CupertinoSwitch(
                    activeColor: const Color(0xff6B4EFF),
                    value: latestUpload,
                    onChanged: (value) {
                      setState(() {
                        latestUpload = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const Expanded(child: Text('Newest Collection',
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                  CupertinoSwitch(
                    activeColor: const Color(0xff6B4EFF),
                    value: newestCollection,
                    onChanged: (value) {
                      setState(() {
                        newestCollection = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const Expanded(child: Text('Most Download',
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                  CupertinoSwitch(
                    activeColor: const Color(0xff6B4EFF),
                    value: mostDownload,
                    onChanged: (value) {
                      setState(() {
                        mostDownload = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const Expanded(child: Text('Exclusive First',
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                  CupertinoSwitch(
                    activeColor: const Color(0xff6B4EFF),
                    value: exclusiveFirst,
                    onChanged: (value) {
                      setState(() {
                        exclusiveFirst = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const Expanded(child: Text('Sort By Size',
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                  CupertinoSwitch(
                    activeColor: const Color(0xff6B4EFF),
                    value: short,
                    onChanged: (value) {
                      setState(() {
                        short = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child:Container(
            decoration: BoxDecoration(
                color: Color(0xff887EF9),
                borderRadius: BorderRadius.circular(12)
            ),
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: const Center(
              child: Text('Apply Filters',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ),
    );
  }
}
