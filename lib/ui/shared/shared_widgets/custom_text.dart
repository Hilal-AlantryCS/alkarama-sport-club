import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyleType? styleType;
  final Color? textColor;
  final TextAlign? alignText;

  final FontWeight? fontWeight;
  final double? fontSize;

  const CustomText({
    super.key,
    required this.text,
    this.styleType,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.alignText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getStyle(Get.size),
      textAlign: alignText,
    );
  }

  TextStyle getStyle(Size size) {
    TextStyle result = TextStyle();

    switch (styleType) {
      case TextStyleType.TITLE:
        result = TextStyle(
            fontSize: screenWidth(26.5),
            fontWeight: fontWeight ?? FontWeight.bold,
            color: textColor ?? AppColors.whiteColor);
        break;
      case TextStyleType.SUBTITLE:
        result = TextStyle(
            fontSize: screenWidth(23.2),
            fontWeight: fontWeight ?? FontWeight.bold,
            color: textColor ?? AppColors.blackColor);
        break;
      case TextStyleType.BODY:
        result = TextStyle(
            fontSize: screenWidth(31.2),
            fontWeight: fontWeight ?? FontWeight.normal,
            color: textColor ?? AppColors.blackColor);
        break;
      case TextStyleType.SMALL:
        result = TextStyle(
            fontSize: screenWidth(33),
            fontWeight: fontWeight ?? FontWeight.normal,
            color: textColor ?? AppColors.blackColor);
        break;
      case TextStyleType.NAME:
        result = TextStyle(
            fontSize: screenWidth(15),
            fontWeight: fontWeight ?? FontWeight.normal,
            color: textColor ?? AppColors.blackColor);
        break;
      case TextStyleType.DATE:
        result = TextStyle(
            fontSize: screenWidth(26),
            fontWeight: fontWeight ?? FontWeight.normal,
            color: textColor ?? AppColors.blackColor);
        break;

      case TextStyleType.CUSTOM:
        result = TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;

      default:
        result = TextStyle(
            fontSize: screenWidth(31.2),
            fontWeight: fontWeight ?? FontWeight.normal,
            color: textColor ?? AppColors.blackColor);
        break;
    }

    return result;
  }
}
