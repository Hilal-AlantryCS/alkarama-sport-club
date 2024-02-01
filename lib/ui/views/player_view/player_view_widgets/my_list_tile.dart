import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String text;
  final Widget? leadingICon;
  const MyListTile({super.key, this.leadingICon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingICon ?? Icon(Icons.circle, size: screenWidth(30)),
      iconColor: AppColors.whiteColor,
      horizontalTitleGap: 0,
      minLeadingWidth: 0,
      titleAlignment: ListTileTitleAlignment.center,
      title: CustomText(
          text: text,
          styleType: TextStyleType.BODY,
          textColor: AppColors.whiteColor),
    );
  }
}
