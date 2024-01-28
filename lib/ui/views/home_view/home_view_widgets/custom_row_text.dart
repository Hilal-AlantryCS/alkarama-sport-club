import 'package:flutter/material.dart';
import 'package:task_P2/core/enums/text_style_type.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomRow extends StatelessWidget {
  final String icon;
  final String text;
  final Color? color;
  final Color? textColor;
  final TextStyleType? styleType;
  const CustomRow({super.key, required this.icon, required this.text, this.color, this.textColor, this.styleType});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/pngs/$icon.png',width: screenWidth(22),height: screenWidth(15),color: color,),
        SizedBox(width: screenWidth(60),),
        Customtext(text: text,styleType:styleType?? TextStyleType.SMALL,fontWeight: FontWeight.w800,fontSize: screenWidth(49),textColor: textColor,)
      ],
    );
  }
}