// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SqaureTile extends StatelessWidget {
  final String imagePath;
  const SqaureTile({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(border:Border.all(color:Colors.white),borderRadius: BorderRadius.circular(17),color:Colors.grey[300]),
      child:Image.asset(imagePath,height: 40));
  }
}