import 'package:flutter/material.dart';

class CustomImg extends StatelessWidget {
  final double? width;
  final double? height;
  final String name;
  final BoxFit? fit;
  const CustomImg({required this.name,super.key,  this.width,  this.height, this.fit= BoxFit.contain,});

  @override
  Widget build(BuildContext context) {
    return 
    Image.asset('assets/images/pngs/$name.png',width: width,height: height,);
  }
}