import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final Function onTap;
  final String title;

  NavItem({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Spacer(),
          // Container(
          //   decoration: BoxDecoration(
          //       border: isSelected
          //           ? Border(
          //               bottom:
          //                   BorderSide(color: AppColors.blueColor, width: 4))
          //           : null),
          // ),
          Image.asset(icon,
              width: screenWidth(10),
              color: isSelected ? AppColors.orangeColor : AppColors.whiteColor),
          CustomText(
            text: title,
            styleType: TextStyleType.BODY,
            textColor:
                isSelected ? AppColors.orangeColor : AppColors.whiteColor,
          )
        ],
      ),
    );
  }
}
