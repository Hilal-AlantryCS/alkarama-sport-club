import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_result_match.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_row_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_staff_details.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MatchDetailsChangeView extends StatefulWidget {
  const MatchDetailsChangeView({super.key});

  @override
  State<MatchDetailsChangeView> createState() => _MatchDetailsChangeViewState();
}

class _MatchDetailsChangeViewState extends State<MatchDetailsChangeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: TobContainer(
        text: 'تفاصيل المباراة',
        sizebox: SizedBox(),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          top: screenWidth(10),
          start: screenWidth(20),
        ),
        child: Column(
          children: [
            CustomMatch(),
            SizedBox(
              height: 20,
            ),
            CustomRowText(
                isSelestedone: false,
                isSelestedtwo: true,
                isSelestedthree: false),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenWidth(2.4),
                  height: screenWidth(1.6),
                  child: StaffDetails(
                    backgroundColor: AppColors.blueColor,
                    isPlayer: true,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                    playerNum: '19',
                    playerRole: 'GK',
                    playerTall: '188',
                    years: '20',
                  ),
                ),
                Image.asset(
                  'assets/images/pngs/switch.png',
                  width: screenWidth(15),
                  height: screenWidth(15),
                ),
                Container(
                  width: screenWidth(2.4),
                  height: screenWidth(1.6),
                  child: StaffDetails(
                    backgroundColor: AppColors.blueColor,
                    isPlayer: true,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                    playerNum: '19',
                    playerRole: 'GK',
                    playerTall: '188',
                    years: '20',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
