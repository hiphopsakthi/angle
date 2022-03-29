import 'package:angel/model/loginmodel.dart';
import 'package:angel/screen/homescreen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
 
Future<bool> login (user,pass,context)async{
  final dio=Dio();
  var response = await dio.post("http://backendapi.epizy.com/Login.php");
  // String data=response.data;
  print(response.data);
//  for(Map<String,dynamic> i in data ){
//    final userdata=LoginModel.fromJson(i);
//    if(user==userdata.user &&pass==userdata.pass){
//      SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
//      sharedPreferences.setBool("logged",true);
//      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
//    }
//  }
 return false;
}