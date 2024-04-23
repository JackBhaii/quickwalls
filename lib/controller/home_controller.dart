import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class HomeController extends GetxController{

RxList <dynamic> imgList=[].obs;
RxList <dynamic> dogList=[].obs;
RxList <dynamic> favImgList=[].obs;
RxInt selectedPosition=0.obs;



 getImg() async {
  var respons =  await http.get(Uri.parse('https://api.unsplash.com/photos/?client_id=PkqomJAqK9wP_Az_E7g5zx1ER_Pty4gi0eybb2E4MlE'));
  if(respons.statusCode==200){
    var data = jsonDecode(respons.body);
     imgList.value = data;
     return imgList;
  }
}

getDogImg() async {

  var respons = await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));

  if(respons.statusCode==200){
   var data = jsonDecode(respons.body);
   dogList.add(data);
  }

}

}