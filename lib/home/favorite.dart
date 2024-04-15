import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constant/text.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
                  onTap: () {},
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
            const Text('Favorites',
            style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: Get.height*0.01,
            ),
            Text(favText,
            style: const TextStyle(
              color: Color(0xffA4A4A4)
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Image.asset('assets/img/not_found.png',))
          ],
        ),
      ),
    );
  }
}
