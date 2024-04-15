import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickwalls/controller/binding_controller.dart';
import 'package:quickwalls/controller/user_controller.dart';
import 'package:quickwalls/login/sing_in.dart';

import '../home/home.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({super.key});

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {

  @override
  void initState() {
    super.initState();
    userController.passwordVisible = false;
    userController.conPasswordVisible = false;
  }

  UserController userController =Get.find();

  final _formKey = GlobalKey<FormState>();

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
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: Get.height*0.05),
                const Text("Getting Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22
                ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Create an account to continue!",
                style: TextStyle(
                  color: Colors.white70
                ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return "You can't leave this empty!";
                    }
                    else{
                      return null;
                    }
                  },
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
                    )
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  onChanged: (value) {
                    userController.mail=value;
                  },
                  controller: userController.email,
                  validator: (value) {
                    if (value!.isEmpty){
                      return"Enter email";
                    }
                    else if (value.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)){
                      return "Hmm... that doesn't look like an email address";
                    }else  {
                      return null;
                    }
                  },
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
                    )
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  onChanged: (value) {
                    userController.pass=value;
                  },
                  controller: userController.password,
                  obscureText: !userController.passwordVisible,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter Password ";
                    }
                    else if (value.length < 6) {
                      return "*required at least 6 characters";
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                      color: Colors.white
                  ),
                  decoration:  InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                      icon: Icon(userController.passwordVisible?
                      Icons.visibility :
                          Icons.visibility_off,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        setState(() {
                          userController.passwordVisible =!userController.passwordVisible;});
                      },),
                      contentPadding: const EdgeInsets.all(8),
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      )
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: userController.confirmPassword,
                  obscureText: !userController.conPasswordVisible,
                  onChanged: (String value) {
                    if (userController.password.text == userController.confirmPassword.text) {
                      userController.isPasswordMatched = true;
                    } else {
                      userController.isPasswordMatched = false;
                    }
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter confirm password";
                    } else if (!userController.isPasswordMatched) {
                      return "*password not matched";
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      suffixIcon: IconButton(
                        icon: Icon(userController.conPasswordVisible?
                       Icons.visibility :
                            Icons.visibility_off,
                          color: Colors.white70,
                        ),
                        onPressed: () {
                          setState(() {
                            userController.conPasswordVisible=!userController.conPasswordVisible;
                          });
                      },),
                      contentPadding: const EdgeInsets.all(8),
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      )
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () async {
                    debugPrint("Hello");
                    if (_formKey.currentState!.validate()){
                      try{
                        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: userController.mail, password: userController.pass);
                        Get.to(HomePage(),binding:BindingController());
                      } on FirebaseAuthException catch (e) {
                        if(e.code=='weak-password'){
                          print('The Password provided is too weak.');
                        } else if (e.code=='email-already-in-use'){
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                             content: Text('The email already exists'),));
                        }
                      } catch (e){
                        print(e);
                      }
                    }
                    }
                  ,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: const Color(0xff713BC2),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Center(
                      child: Text("Register",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
               SizedBox(
                 height: Get.height*0.05,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff157DC3),
                          borderRadius: BorderRadius.circular(8),
                          // border: Border.all(color: Colors.black)
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/img/faceboo_logo.png',
                          height: 30,width: 30,
                          ),
                           const SizedBox(width: 15),
                           const Text('Facebook',
                          style: TextStyle(
                            color: Colors.white
                          ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/img/google_logo.png',
                          height: 50,width: 50,
                          ),
                          const Text('Google',
                          style: TextStyle(
                            color: Colors.white
                          ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account?',
                        style: TextStyle(
                            color: Colors.white70
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                          onTap: () {
                            Get.to(SingIn());
                          },
                          child: const Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
