import 'package:angel/api/api.dart';
import 'package:angel/components/custominput.dart';
import 'package:angel/screen/signupscreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({ Key? key }) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}
bool loading=false;
class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    TextEditingController usercontroller=TextEditingController();
      TextEditingController passcontroller=TextEditingController();
    return Column(
        children: [
          Text("Guardian Angel",
          style:TextStyle(fontSize: 35,color: Colors.green) ,
          ),
          SizedBox(height: 20,),
          CustomInput(lable: "username",controller: usercontroller,),
          SizedBox(height: 20,),
          CustomInput(lable: "Password",controller: passcontroller,),
          SizedBox(height:20),
          ElevatedButton(onPressed:(){
              loading=true;
              setState(() {
              });
            login(usercontroller.text,passcontroller.text,context);
          },
          child:!loading?Text("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),):CircularProgressIndicator(color: Colors.white,semanticsLabel: "loading",)
          ),
          SizedBox(height:20),
          Text.rich(
            TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(fontSize:15),
              children: [
                TextSpan(
                  recognizer:TapGestureRecognizer()..onTap=()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>SignupScreen())),
                  text: "Register",
                  style: TextStyle(fontSize: 15,color:Colors.green)
                )
              ]
            )
          )
        ],
    );
  }
}