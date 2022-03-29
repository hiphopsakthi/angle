import 'package:angel/components/signupbody.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                children:[Text("Welcome You,",
                style: TextStyle(color: Colors.white,fontSize: 25),
                ),
                Text("Signup !",
            style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
            )]
              ),
            ), 
              Positioned(
                top:MediaQuery.of(context).size.height/2.8,
                child: SignupBody()
              )
          ],
        ),
      ),
    );
  }
}