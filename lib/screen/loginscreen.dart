import 'package:angel/api/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../components/loginbody.dart';
import '../model/loginmodel.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({ Key? key }) : super(key: key);
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}
class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/Group.png")),
            Positioned(
              top: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[Text("Welcome Back,",
                style: TextStyle(color: Colors.white,fontSize: 25),
                ),
                Text("Login !",
            style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
            )]
              ),
            ), 
              Positioned(
                top:MediaQuery.of(context).size.height/2.4,
                child: LoginBody())
          ],
        ),
      ),
    );
  }
}