import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';


class TobContainer extends StatelessWidget implements PreferredSizeWidget {
 final String text;
 final SizedBox? sizebox;
  TobContainer({required this.text, this.sizebox,});
  @override
  Size get preferredSize => Size.fromHeight(screenWidth(4));
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            padding: EdgeInsets.all(screenWidth(50)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: AppColors.blueColor),
            child:Stack(
        children: [
          Positioned(
              top: screenWidth(8.5),
              right: screenWidth(6.7),
              child: CustomText(
                text: text,
                styleType: TextStyleType.SUBTITLE,
                fontWeight: FontWeight.w800,
                
              )),
          Positioned(
            top: screenWidth(17),
            child: Image.asset(
              'assets/images/pngs/ic_alkarama.png',
              width: screenWidth(7),
            ),
          ),
          Positioned(
            top: screenWidth(11),
            left: screenWidth(90),
            child:sizebox??
             Row(
              children: [
                Image.asset(
              'assets/images/pngs/ic_ball.png',
              width: screenWidth(8),
            ),
            SizedBox(width: screenWidth(150),),
            Icon(
                   Icons.arrow_back_ios_new_outlined,                    
                    size: screenWidth(15),
                    color: AppColors.whiteColor,
                  ),
              ],
            ))
        
               
        ],
      ),
          ),
        ));
  }
}

