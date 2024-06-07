import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: Get.height*0.25,
            width: double.maxFinite,
            child: Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: Get.height*0.20,
                  color: Colors.red,
                  child: Image.asset('assets/img/profile_bg.jpg',
                  height: double.maxFinite,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20,top: 35),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F2F3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset('assets/img/demo_profile_photo.jpeg',
                            height: double.maxFinite,
                            width: double.maxFinite,
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent,
                        child: InkWell(
                            // borderRadius: BorderRadius.circular(50),
                            onTap: () async {
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child:Image.asset('assets/img/camera.png',
                              height: 30,width: 30,fit: BoxFit.cover,
                              )
                            )),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Jack',
              style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold
              ),
              ),
              Text(' Patel',
              style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(width: 20),
              Image.asset('assets/img/rename.png',
              height: 20,width: 20,
              )

            ],
          ),
          // SizedBox(height: 5),
          Text('jackpatel@gmail.com',
          style: TextStyle(fontSize: 14,color: Color(0xff898C94)),
          ),
          ListTile(
            title: Text('Phone',style: TextStyle(
              fontSize: 20,
            ),),
            trailing: Text('9723859**',style: TextStyle(
              fontSize: 15,color: Color(0xff898C94)
            ),),
          ),
          ListTile(
            title: Text('Email',style: TextStyle(
              fontSize: 20,
            ),),
            trailing: Text('jackpatel@gmail.com',style: TextStyle(
              fontSize: 15,color: Color(0xff898C94)
            ),),
          ),
          ListTile(
            title: Text('Location',style: TextStyle(
              fontSize: 20,
            ),),
            trailing: Text('Surat,Gujarat',style: TextStyle(
              fontSize: 15,color: Color(0xff898C94)
            ),),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        // width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Color(0xffFF8092),borderRadius: BorderRadius.circular(15)
        ),
         child: Text('Delete Account',textAlign: TextAlign.center,
         style: TextStyle(color:Colors.white,fontSize: 15),
         ),
      ),
    );
  }
}
