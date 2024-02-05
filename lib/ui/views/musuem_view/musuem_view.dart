import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_clup_nicknames.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_clup_president.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_container.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_container_img.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_container_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_individual_awards.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_vedio.dart.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MusuemView extends StatefulWidget {
  const MusuemView({super.key});

  @override
  State<MusuemView> createState() => _MusuemViewState();
}

class _MusuemViewState extends State<MusuemView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              TobContainer(
                isimageball: false,
                text: 'المتحف',
              ),
              SizedBox(
                height: screenWidth(25),
              ),
              CustomContainerText(
                text: 'عن النادي',
                widthone: screenWidth(10),
                widthtwo: screenWidth(25),
                widththree: screenWidth(17),
                color1: AppColors.offgreyColor,
                color2: AppColors.greyColor,
                color3: AppColors.offgreyColor,
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              SizedBox(
                height: screenWidth(2),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: screenWidth(25), end: screenWidth(25)),
                      child: CustomContainerImg(),
                    ),
                    CustomContainerImg(),
                  ],
                ),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              CustomContainerText(
                text: 'استراتيجية النادي',
                widthone: screenWidth(5),
                widthtwo: screenWidth(17),
                widththree: screenWidth(12),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              SizedBox(
                height: screenWidth(1.5),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: screenWidth(25), end: screenWidth(25)),
                      child: MyContainer(
                          iconName: 'ic_eye.png',
                          title: 'الرؤية',
                          text:
                              'أن يكون نادي الكرامة الأميز رياضياً , اجتماعياَ مؤسسياً و في طليعة الأندية العالمية '),
                    ),
                    MyContainer(
                        iconName: 'ic_message.png',
                        title: 'الرسالة',
                        text:
                            'تحقيق الريادة الرياضية والأثر الاجتماعي من خلال تطوير و تمكين العمل المؤسسي وبناء قاعدة تجارية واستثمارية فاعلة '),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: screenWidth(25), end: screenWidth(25)),
                      child: Container(
                        width: screenWidth(1.8),
                        height: screenWidth(1.3),
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            border: Border.all(
                                color: AppColors.blueColor, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                end: screenWidth(40),
                                top: screenWidth(40),
                                start: screenWidth(40),
                              ),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      'assets/images/pngs/ic_pillars.png',
                                    ),
                                    CustomText(
                                      text: 'الركائز',
                                      styleType: TextStyleType.SUBTITLE,
                                      textColor: AppColors.whiteColor,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: AppColors.blueColor,
                                    borderRadius: BorderRadius.circular(10)),
                                width: screenWidth(2),
                                height: screenWidth(4),
                              ),
                            ),
                            SizedBox(
                              height: screenWidth(50),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  start: screenWidth(50)),
                              child: Column(
                                children: [
                                  CustomText(
                                    text: '-الريادة الرياضية',
                                    styleType: TextStyleType.BODY,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.blackColor,
                                  ),
                                  CustomText(
                                    text: '-المسؤولية الاجتماعية',
                                    styleType: TextStyleType.BODY,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.blackColor,
                                  ),
                                  CustomText(
                                    text: '-النمو التجاري',
                                    styleType: TextStyleType.BODY,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.blackColor,
                                  ),
                                  CustomText(
                                    text: '-العمل المؤسسي',
                                    styleType: TextStyleType.BODY,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.blackColor,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth(1.8),
                      height: screenWidth(1.3),
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          border:
                              Border.all(color: AppColors.blueColor, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              end: screenWidth(40),
                              top: screenWidth(40),
                              start: screenWidth(40),
                            ),
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                      'assets/images/pngs/ic_principle.png'),
                                  CustomText(
                                    text: 'القيم',
                                    styleType: TextStyleType.SUBTITLE,
                                    textColor: AppColors.whiteColor,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: AppColors.blueColor,
                                  borderRadius: BorderRadius.circular(10)),
                              width: screenWidth(2),
                              height: screenWidth(4),
                            ),
                          ),
                          SizedBox(
                            height: screenWidth(50),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: screenWidth(50)),
                            child: Column(
                              children: [
                                CustomText(
                                  text: '-الكفاءة',
                                  styleType: TextStyleType.BODY,
                                  fontWeight: FontWeight.w600,
                                  textColor: AppColors.blackColor,
                                ),
                                CustomText(
                                  text: '-التميز',
                                  styleType: TextStyleType.BODY,
                                  fontWeight: FontWeight.w600,
                                  textColor: AppColors.blackColor,
                                ),
                                CustomText(
                                  text: '-المصداقية',
                                  styleType: TextStyleType.BODY,
                                  fontWeight: FontWeight.w600,
                                  textColor: AppColors.blackColor,
                                ),
                                CustomText(
                                  text: '-روح الفريق',
                                  styleType: TextStyleType.BODY,
                                  fontWeight: FontWeight.w600,
                                  textColor: AppColors.blackColor,
                                ),
                                CustomText(
                                  text: '-الاستمرارية',
                                  styleType: TextStyleType.BODY,
                                  fontWeight: FontWeight.w600,
                                  textColor: AppColors.blackColor,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              CustomContainerText(
                text: 'رؤساء نادي الكرامة',
                widthone: screenWidth(4),
                widthtwo: screenWidth(17),
                widththree: screenWidth(11),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              SizedBox(
                height: screenWidth(1.5),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClupPresident(),
                    SizedBox(
                      width: screenWidth(25),
                    ),
                    ClupPresident()
                  ],
                ),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              CustomContainerText(
                text: 'ألقاب نادي الكرامة',
                widthone: screenWidth(4.5),
                widththree: screenWidth(12),
                widthtwo: screenWidth(15),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: screenWidth(25)),
                child: SizedBox(
                  height: screenWidth(1.5),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClupNicknames(),
                      SizedBox(
                        width: screenWidth(40),
                      ),
                      ClupNicknames()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              CustomContainerText(
                text: 'الجوائز الفردية للاعبي الكرامة',
                widthone: screenWidth(2.7),
                widthtwo: screenWidth(15),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              SizedBox(
                height: screenWidth(1.5),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Individual_Awards(
                        playername: 'محمد قويض',
                        awardsname: 'جائزة ثاني أفضل مدرب',
                        text: 'في آسيا'),
                    SizedBox(
                      width: screenWidth(15),
                    ),
                    Individual_Awards(
                        playername: 'محمد قويض',
                        awardsname: 'جائزة ثاني أفضل مدرب',
                        text: 'في آسيا')
                  ],
                ),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              CustomContainerText(
                text: 'أجمل أهداف لاعبي الكرامة',
                widthone: screenWidth(2.6),
                widthtwo: screenWidth(13),
                widththree: screenWidth(12),
              ),
              SizedBox(
                height: screenWidth(15),
              ),
              SizedBox(
                height: screenWidth(3.2),
                child: ListView(
                  padding: EdgeInsetsDirectional.only(
                    start: screenWidth(24),
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomContainerVideo1(
                      color: AppColors.blueColor,
                      text:
                          'هدف اللاعب محمد صهيوني في مرمى الوحدة الدوري السوري',
                    ),
                    SizedBox(
                      width: screenWidth(30),
                    ),
                    CustomContainerVideo1(
                      color: AppColors.blueColor,
                      text:
                          'هدف اللاعب محمد صهيوني في مرمى الوحدة الدوري السوري',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenWidth(3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
