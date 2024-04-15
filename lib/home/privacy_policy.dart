import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickwalls/constant/text.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
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
                height: Get.height*0.01,
              ),
              const Text('Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Your download are listed below.',
              style: TextStyle(
                color: Color(0xffA2A2A2),
                fontSize: 11
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(policyText1,
                style: const TextStyle(
                    color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(policyText2,
                style: const TextStyle(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(policyText3,
                style: const TextStyle(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Consent'),
              const SizedBox(
                height: 10
              ),
              Text(consent,
                style: const TextStyle(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                  height: 10
              ),
              const Text('Information we collect'),
              const SizedBox(
                  height: 10
              ),
              Text(informationText1,
                style: const TextStyle(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                  height: 10
              ),
              Text(informationText2,
                style: const TextStyle(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                  height: 10
              ),
              Text(informationText3,
                style: const TextStyle(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                  height: 10
              ),
              const Text('How we use your information'),
              const SizedBox(
                  height: 10
              ),
              Text(yourInformationText1,
                style: const TextStyle(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                  height: 10
              ),
              Text(yourInformationText2,
                style: const TextStyle(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                  height: 10
              ),
            ],

          ),
        ),
      ),
    );
  }
}
