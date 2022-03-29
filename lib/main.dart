import 'package:angel/screen/homescreen.dart';
import 'package:angel/screen/loginscreen.dart';
import 'package:angel/screen/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
bool logged=false;

class _MyAppState extends State<MyApp> {
  verfiy()async{
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
setState(() {
  logged=sharedPreferences.getBool("logged")==null?false:true;
});
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    verfiy();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angel',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:!logged?Loginscreen():HomeScreen(),
    );
  }
}