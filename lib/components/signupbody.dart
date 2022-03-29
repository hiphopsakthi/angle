import 'package:angel/screen/loginscreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'custominput.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({ Key? key }) : super(key: key);

  @override
  State<SignupBody> createState() => _SignupBodyState();
}
TextEditingController controller = TextEditingController();
class _SignupBodyState extends State<SignupBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("Guardian Angel",
          style:TextStyle(fontSize: 35,color: Colors.green) ,
          ),
          SizedBox(height: 20,),
          CustomInput(lable: "username",controller: controller,),
          SizedBox(height: 20,),
          CustomInput(lable: "Email ID",controller: controller,),
          SizedBox(height:20),
          CustomInput(lable: "Password",controller: controller,),
          SizedBox(height:20),
          ElevatedButton(onPressed: (){},
          child: Text("Register",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),)
          ),
          SizedBox(height:20),
          Text.rich(
            TextSpan(
              text: "Already an User? ",
              style: TextStyle(fontSize:15),
              children:[
                TextSpan(
                  recognizer:TapGestureRecognizer()..onTap=()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>Loginscreen())),
                  text: "Login",
                  style: TextStyle(fontSize: 15,color:Colors.green)
                )
              ]
            )
          )
        ],
    );
  }
}