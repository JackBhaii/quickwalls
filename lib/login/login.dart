import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickwalls/controller/binding_controller.dart';
import 'package:quickwalls/home/home.dart';
import 'package:quickwalls/login/email_login.dart';
import 'package:quickwalls/login/sing_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        children: [
          Center(child: Image.asset("assets/img/login_img.jpg",
          height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('assets/img/appLogo.png',
                  height: 50,width: 50,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Only Wallpaper app you will ever need...!',
                style: TextStyle(
                  color: Colors.white70
                ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(onPressed: () {
                    Get.to(EmailLogin(),binding: BindingController());
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color(0xff713BC2))
                  ),
                    child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email_outlined,color: Colors.white,
                      size: 30,
                      ),
                      SizedBox(width: 10),
                      Text('Continue With Email',
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
                  child: ElevatedButton(
                   onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                  ),
                    child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/img/google_logo.png'),
                      SizedBox(width: 10),
                      Text('Continue With Google',
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
                  child: ElevatedButton(onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0xff157DC3))
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/img/faceboo_logo.png',
                        height: 40,
                        ),
                        SizedBox(width: 10),
                        Text('Continue With Facebook',
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
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomAppBar(
              color: Colors.transparent,
              elevation: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an Account?',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                        onTap: () {
                          Get.to(SingIn());
                        },
                        child: const Text('Login',
                        style: TextStyle(
                          color: Colors.black
                        ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }

}
