import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_shield.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class StaffDetails extends StatelessWidget {
  final Color? backgroundColor;
  final bool isPlayer;
  final bool isGk;
  final String imageUrl;
  final double imageWidth;
  final String name;
  final String role;
  final String years;
  final String playerTall;
  final String playerNum;
  final String playerRole;
  const StaffDetails(
      {super.key,
      this.backgroundColor,
      required this.isPlayer,
      required this.isGk,
      required this.imageWidth,
      required this.imageUrl,
      required this.name,
      required this.role,
      required this.years,
      required this.playerTall,
      required this.playerNum,
      required this.playerRole});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(2.8),
      height: screenWidth(1.6),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/pngs/background_staff.png',
                color: isPlayer && isGk
                    ? AppColors.yellowColor
                    : isPlayer
                        ? AppColors.blueColor
                        : null,
              )),
          Positioned(
              top: screenWidth(20),
              left: screenWidth(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    imageUrl,
                    width: imageWidth,
                  ),
                  CustomText(
                    text: name,
                    styleType: TextStyleType.SUBTITLE,
                  ),
                  !isPlayer || !isGk
                      ? Row(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/pngs/shield.png',
                                  width: screenWidth(10),
                                ),
                                Positioned(
                                  bottom: screenWidth(35),
                                  right: screenWidth(35),
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
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            CustomShield(upTxt: years, downTxt: 'عام'),
                            CustomShield(upTxt: playerTall, downTxt: 'CM'),
                            CustomShield(upTxt: 'الرقم', downTxt: playerNum),
                            CustomShield(upTxt: 'المركز', downTxt: playerRole),
                          ],
                        )
                ],
              )),
        ],
      ),
    );
  }
}
