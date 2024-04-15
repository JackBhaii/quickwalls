
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:quickwalls/home/home.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});


  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  // String otp = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff440C92),
      appBar: AppBar(
        leading:
        InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined)),
        backgroundColor: const Color(0xff440C92),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height*0.05
            ),
            const Text('OTP Verification',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
            ),
            const SizedBox(
              height: 10
            ),
            const Text('Enter the verification code we just sent to',
            style: TextStyle(
              color: Colors.white70
            ),
            ),
            Row(
              children: [
                Text('email address.',
                style: TextStyle(
                  color: Colors.white70
                ),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: const Text('Change email address?',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                  ),
                )

              ],
            ),
             SizedBox(
              height: Get.height*0.2,
            ),
            Pinput(
              // onCompleted: (value) {
              //   otp = value;
              // },
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: BoxDecoration(
                  color: const Color(0xff440C92),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              autofocus: true,
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () async {
                // if(await widget.myAuth.verifyOTP(
                //   otp:otp)){
                //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('OTP is verified')));
                //   Get.to(HomePage());
                // } else{
                //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(' Invalid OTP')));
                // }



              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 13),
                decoration: BoxDecoration(
                  color: const Color(0xffA098FA),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: const Center(
                  child: Text('Confirm',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
