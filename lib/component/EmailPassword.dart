import 'package:flutter/material.dart';

class EmailPassword extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const EmailPassword({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 25),
                    child:TextField(
                      controller: controller,obscureText: obscureText,
                      decoration: InputDecoration(
                        enabledBorder:const OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.grey.shade100),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true  ,
                        hintText: hintText
                      ),
                    ),
                );
  }
}