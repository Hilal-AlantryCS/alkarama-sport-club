import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_container_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_staff_details.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class PlayerAndAdminsView extends StatelessWidget {
  const PlayerAndAdminsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView(
      children: [
        TobContainer(text: 'كادر الإدارة واللاعبين', isimageball: true),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(screenWidth(25)),
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: screenWidth(30), bottom: screenWidth(15)),
              child: Container(
                height: screenWidth(2),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/images/pngs/rectangle_100.png',
                        width: screenWidth(1),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: screenWidth(2.5),
                      child: Image.asset(
                        'assets/images/pngs/ahd.png',
                        width: screenWidth(2),
                      ),
                    ),
                    Positioned(
                      bottom: screenWidth(20),
                      left: screenWidth(20),
                      child: Column(
                        children: [
                          CustomText(
                            text: 'رئيس نادي الكرامة :',
                            styleType: TextStyleType.SUBTITLE,
                            textColor: AppColors.whiteColor,
                            fontWeight: FontWeight.normal,
                          ),
                          CustomText(
                            text: 'الدكتور عهد خزام',
                            styleType: TextStyleType.SUBTITLE,
                            textColor: AppColors.whiteColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            CustomContainerText(
                text: 'ملابس فريق نادي الكرامة لعام 2023-2024',
                widthone: screenWidth(2.1),
                widthtwo: screenWidth(7),
                widththree: screenWidth(6)),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              width: screenWidth(1),
              height: screenWidth(2),
              decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                'assets/images/pngs/club_clothes.png',
                width: screenWidth(1.5),
              ),
            ),
            CustomContainerText(
                text: 'الاداريين',
                widthone: screenWidth(12),
                widthtwo: screenWidth(25),
                widththree: screenWidth(20)),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              height: screenWidth(1.8),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StaffDetails(
                    isPlayer: false,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                  );
                },
              ),
            ),
            CustomContainerText(
                text: 'مدربو الفريق',
                widthone: screenWidth(9),
                widthtwo: screenWidth(20),
                widththree: screenWidth(15)),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              height: screenWidth(1.8),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StaffDetails(
                    isPlayer: false,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                  );
                },
              ),
            ),
            CustomContainerText(
                text: 'حراس المرمى',
                widthone: screenWidth(8),
                widthtwo: screenWidth(20),
                widththree: screenWidth(15)),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              height: screenWidth(1.8),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StaffDetails(
                    isPlayer: false,
                    isGk: true,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                    playerNum: '19',
                    playerRole: 'GK',
                    playerTall: '188',
                    years: '20',
                  );
                },
              ),
            ),
            CustomContainerText(
                text: 'المدافعون',
                widthone: screenWidth(9),
                widthtwo: screenWidth(25),
                widththree: screenWidth(20)),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              height: screenWidth(1.8),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StaffDetails(
                    isPlayer: true,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                    playerNum: '19',
                    playerRole: 'GK',
                    playerTall: '188',
                    years: '20',
                  );
                },
              ),
            ),
            CustomContainerText(
                text: 'خط الوسط',
                widthone: screenWidth(9),
                widthtwo: screenWidth(25),
                widththree: screenWidth(20)),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              height: screenWidth(1.8),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StaffDetails(
                    isPlayer: true,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                    playerNum: '19',
                    playerRole: 'GK',
                    playerTall: '188',
                    years: '20',
                  );
                },
              ),
            ),
            CustomContainerText(
                text: 'المهاجمون',
                widthone: screenWidth(9),
                widthtwo: screenWidth(20),
                widththree: screenWidth(15)),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              height: screenWidth(1.8),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StaffDetails(
                    isPlayer: true,
                    isGk: false,
                    imageUrl: ' imageUrl',
                    name: 'خالد المشرف',
                    role: 'المعد البدني',
                    playerNum: '19',
                    playerRole: 'GK',
                    playerTall: '188',
                    years: '20',
                  );
                },
              ),
            ),
          ],
        )
      ],
    )));
  }
}
