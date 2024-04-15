import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              height: Get.height*0.05,
            ),
            const Text("Let's Sing You In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Welcome back,You'r been missed",
            style: TextStyle(
              color: Colors.white70
            ),
            ),
            const SizedBox(
              height: 25,
            ),
             TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey
                )
              )
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey
                      )
                  )
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: const Text('Forgot Your Password ?',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: const Color(0xff713BC2),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
                child: Text('Login',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height*0.07,
            ),
            const Center(
                child: Text('Or Continue With Social Account',
                style: TextStyle(
                  color: Colors.white
                ),
                )),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(onPressed: () {

              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff157DC3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/img/faceboo_logo.png',
                      height: 40,
                    ),
                    const SizedBox(width: 10),
                    const Text('Continue With Facebook',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ElevatedButton(onPressed: () {

              },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                    backgroundColor:const Color(0xff440C92),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                        color: Colors.white38
                      )
                    )
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/img/google_logo.png'),
                    const SizedBox(width: 10),
                    const Text('Continue With Google',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomSheet:   BottomAppBar(
        padding: const EdgeInsets.all(10),
        color: const Color(0xff440C92),
        elevation: 0,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't Have An Accounut ?",
                style: TextStyle(
                    color: Colors.white70
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                  onTap: () {

                  },
                  child: const Text('Sing in',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),

      ),
    );
  }
}
