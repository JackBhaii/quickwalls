import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget container (){
  return Row(

    children: [
      Expanded(
        child: Container(
          height: 250,
          width:double.maxFinite,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.red,
            borderRadius: BorderRadius.circular(15)
          ),
        
        ),
      ),
      Expanded(
        child: Container(
          height: 250,
          width:double.maxFinite,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Stack(
            children: [
              Image.asset('assets/img/sample_img.jpg',
              width: double.maxFinite,
              height: double.maxFinite,
                fit: BoxFit.cover,
              )
            ],
          ),

        ),
      ),
    ],
  );
}

