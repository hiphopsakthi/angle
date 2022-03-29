import 'package:flutter/material.dart';
class CustomInput extends StatelessWidget {
  final String lable;
  final TextEditingController controller;
  const CustomInput({ Key? key ,required this.lable,required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
              width: 300,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  label: Text(lable),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius:BorderRadius.circular(20)
                    )
                ),
              ),
            );
  }
}