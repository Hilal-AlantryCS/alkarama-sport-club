import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_shield.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';

import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StaffDetails extends StatelessWidget {
  final Color? backgroundColor;
  final bool isPlayer;
  final bool isGk;
  final String imageUrl;
  final double? imageWidth;
  final String name;
  final String role;
  final String? years;
  final String? playerTall;
  final String? playerNum;
  final String? playerRole;
  const StaffDetails(
      {super.key,
      this.backgroundColor,
      required this.isPlayer,
      required this.isGk,
      required this.imageUrl,
      required this.name,
      required this.role,
      this.years,
      this.playerTall,
      this.playerNum,
      this.playerRole,
      this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(2.7),
      height: screenWidth(1.7),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/images/svgs/background_staff.svg',
              color: isGk
                  ? AppColors.yellowColor
                  : isPlayer
                      ? AppColors.blueColor
                      : null,
              width: screenWidth(2.4),
            ),
          ),
          Positioned(
            left: screenWidth(20),
            right: screenWidth(20),
            child: Column(
              children: [
                // Image.network(
                //   imageUrl,
                //   width: imageWidth ?? screenWidth(3.5),
                //   height: screenWidth(3),
                // ),

                Image.asset(
                  'assets/images/pngs/aa.png',
                  width: imageWidth ?? screenWidth(3.5),
                  height: screenWidth(3),
                ),
                CustomText(
                  text: name,
                  textColor: isPlayer || isGk
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                  styleType: TextStyleType.SUBTITLE,
                ),
              ],
            ),
          ),
          Positioned(
              bottom: screenWidth(20),
              right: 1,
              left: 1,
              child: !isPlayer && !isGk
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/pngs/shield.png',
                              width: screenWidth(12),
                            ),
                            Positioned(
                              bottom: screenWidth(45),
                              right: screenWidth(45),
                              child: Image.asset(
                                'assets/images/pngs/ic_user.png',
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: screenWidth(50),
                        ),
                        CustomText(
                          text: role,
                          styleType: TextStyleType.SMALL,
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomShield(upTxt: years!, downTxt: 'عام'),
                        CustomShield(upTxt: playerTall!, downTxt: 'CM'),
                        CustomShield(upTxt: 'الرقم', downTxt: playerNum!),
                        CustomShield(upTxt: 'المركز', downTxt: playerRole!),
                      ],
                    ))
        ],
      ),
    );
  }
}
