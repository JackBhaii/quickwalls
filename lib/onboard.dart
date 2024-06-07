import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quickwalls/home/home.dart';
import 'package:quickwalls/login/login.dart';

import 'constant/text.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {

  Map<String,dynamic> slider1 ={
    'Image':'assets/img/onBoard1.png',
    'Title':introTitle1,
    'SubTitle':introSubtitle1
  };
  Map<String,dynamic> slider2 ={
    'Image':'assets/img/onBoard2.png',
    'Title':introTitle2,
    'SubTitle':introSubtitle2
  };
  Map<String,dynamic> slider3 ={
    'Image':'assets/img/onBoard3.png',
    'Title':introTitle3,
    'SubTitle':introSubtitle3
  };
List<Map<String,dynamic>> sliderList = [];

  int currentPage=0;
  PageController pageController=PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sliderList.addAll([slider1,slider2,slider3]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
          itemCount: sliderList.length,
            onPageChanged: (int index) {
            currentPage = index;
            setState(() {});
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Image.asset(sliderList[index]['Image']),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    sliderList[index]['Title'],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        letterSpacing: 0.9,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    sliderList[index]['SubTitle'],
                    style: const TextStyle(
                      color: Color(0xffA8A9B0),
                      letterSpacing: 0.5,
                      // fontWeight: FontWeight.w900,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 10,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: sliderList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            currentPage=index;
                            pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                            setState(() {

                            });
                          },
                          child: Container(
                              width: 40,
                              height: 5,
                              margin: const EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: index==currentPage?Color(0xff3CD7C3):Color(0xffE3EFF9))),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 30,),

                  currentPage!=2?
                  InkWell(
                    onTap: () {
                      pageController.animateToPage(2, duration: const Duration(milliseconds: 400) , curve:Curves.easeIn);
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      decoration: BoxDecoration(
                          color: const Color(0xff2A303E),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Text("Get Started",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w900)
                      ),
                    ),
                  ) :
                  InkWell(
                    onTap: () {
                      final storage = GetStorage();
                      storage.write('onBoarding', true);
                      Get.to(Login());
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      decoration: BoxDecoration(
                          color: const Color(0xff2A303E),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Text("Get Started",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w900)
                      ),
                    ),
                  ),




                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
