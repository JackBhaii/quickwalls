import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ReportIssue extends StatefulWidget {
  const ReportIssue({super.key});

  @override
  State<ReportIssue> createState() => _ReportIssueState();
}

class _ReportIssueState extends State<ReportIssue> {
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
              height: Get.height * 0.01,
            ),
            const Text(
              'Report An Issue',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'You have something to report? we love feedback!',
              style: TextStyle(color: Color(0xffA2A2A2), fontSize: 11),
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF7F8F9),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xffE8ECF4))),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                decoration: const InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Color(0xff8391A1)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF7F8F9),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xffE8ECF4))),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                decoration: const InputDecoration(
                    hintText: 'Subject',
                    hintStyle: TextStyle(color: Color(0xff8391A1)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: const Color(0xffF7F8F9),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xffE8ECF4))),
              child: TextFormField(
                  maxLines: null,
                  textInputAction: TextInputAction.done,
                  textAlignVertical: TextAlignVertical.top,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  decoration: const InputDecoration(
                      hintText: 'Message',
                      hintStyle: TextStyle(color: Color(0xff8391A1)),
                      contentPadding:
                          EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
                      border: InputBorder.none)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: InkWell(
          onTap: () {
            showModalBottomSheet(context: context, builder: (context) {
              return ListView(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                            color: const Color(0xffE7E7E8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Lottie.asset('assets/json/done_loader.json',
                          height: 200),
                      const Text(
                        'Thank You For Sharing Your\n Feedback!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w600,
                            fontSize: 19.8),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        textAlign: TextAlign.center,
                        "We've received your concerns, and we're\n working to resolve them.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            fontSize: 13.8,
                            color: Color(0xff979797)),
                      ),
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          Get.back();
                          Get.back();
                        },
                        child: Container(
                          width: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color: Color(0xff887EF9),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: Text('Back To Home',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),
                            ),
                          ),
                        ),
                      )
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: 20),
                      //   child: CustomButton(
                      //       buttonText: 'Done',
                      //       onTap: () {
                      //         Get.back();
                      //         Get.back();
                      //       }),
                      // )
                    ],
                  ),
                ],
              );
            },);
          },
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff887EF9),
              borderRadius: BorderRadius.circular(12)
            ),
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: const Center(
              child: Text('Submit',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
