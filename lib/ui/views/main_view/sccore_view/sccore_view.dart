import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:alkarama_sport_club/ui/views/sccore_table_view/sccore_table_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SccoreView extends StatelessWidget {
  const SccoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TobContainer(
          text: "النتائج",
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsetsDirectional.symmetric(
                vertical: screenWidth(14),
                horizontal: screenWidth(8),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.amber.shade100,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "السبت",
                        style: TextStyle(
                          fontSize: screenWidth(24),
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "17 نوفمبر",
                        style: TextStyle(
                          fontSize: screenWidth(24),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.all(4),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.orange,
                          width: 3,
                        ),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orangeAccent,
                          Colors.white,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(
                          "السبت",
                          style: TextStyle(
                            fontSize: screenWidth(24),
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "10 نوفمبر",
                          style: TextStyle(
                            fontSize: screenWidth(24),
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "السبت",
                        style: TextStyle(
                          fontSize: screenWidth(24),
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "3 نوفمبر",
                        style: TextStyle(
                          fontSize: screenWidth(24),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/pngs/ic_arrow_right.png",
                    width: screenWidth(20),
                    height: screenWidth(20),
                  )
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: screenWidth(1.9),
              ),
              items: [
                Container(
                  margin: EdgeInsetsDirectional.all(screenWidth(20)),
                  width: screenWidth(1),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/pngs/ic_bg.png",
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/pngs/ic_gabla.png",
                                  width: screenWidth(9),
                                  height: screenWidth(9),
                                ),
                                CustomText(
                                  text: "صاحب ثالث هدف",
                                  styleType: TextStyleType.SMALL,
                                ),
                                CustomText(
                                  text: "جبلة",
                                  styleType: TextStyleType.SMALL,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: "الجمعة,2023/05/26",
                                  styleType: TextStyleType.SMALL,
                                ),
                                CustomText(
                                  text: "عصراً 12:12",
                                  styleType: TextStyleType.SMALL,
                                ),
                                CustomText(
                                  text: "ملعب خالد بن الوليد",
                                  styleType: TextStyleType.SMALL,
                                ),
                                CustomText(
                                  text: "0:1",
                                  styleType: TextStyleType.SMALL,
                                ),
                                CustomText(
                                  text: "الجولة",
                                  styleType: TextStyleType.SMALL,
                                ),
                                CustomText(
                                  text: "23",
                                  styleType: TextStyleType.SMALL,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/pngs/ic_karama.png",
                                  width: screenWidth(9),
                                  height: screenWidth(9),
                                ),
                                CustomText(
                                  text: "الكرامة",
                                  styleType: TextStyleType.SMALL,
                                ),
                                CustomText(
                                  text: "صاحب أول هدف",
                                  styleType: TextStyleType.SMALL,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: screenWidth(1.5),
              margin: EdgeInsetsDirectional.symmetric(
                horizontal: screenWidth(20),
              ),
              child: Stack(
                children: [
                  Container(
                    height: screenWidth(1),
                    margin: EdgeInsetsDirectional.only(
                      top: screenWidth(20),
                    ),
                    padding: EdgeInsetsDirectional.only(
                      top: screenWidth(10),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color.fromRGBO(237, 237, 237, 1),
                    ),
                    child: Table(
                      columnWidths: {
                        1: FlexColumnWidth(2),
                      },
                      textDirection: TextDirection.rtl,
                      border: TableBorder.all(
                        color: Colors.grey,
                      ),
                      children: [
                        TableRow(
                          children: [
                            CustomText(
                              text: "ترتيب",
                              styleType: TextStyleType.SMALL,
                            ),
                            Container(
                              width: screenWidth(10),
                              child: CustomText(
                                text: "الفريق",
                                fontWeight: FontWeight.bold,
                                styleType: TextStyleType.SMALL,
                              ),
                            ),
                            CustomText(
                              text: "لعب",
                              styleType: TextStyleType.SMALL,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                  color: Colors.green,
                                  width: 3,
                                ),
                              )),
                              child: CustomText(
                                text: "فاز",
                                styleType: TextStyleType.SMALL,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                  color: Colors.blue,
                                  width: 3,
                                ),
                              )),
                              child: CustomText(
                                text: "تعادل",
                                styleType: TextStyleType.SMALL,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                  color: Colors.red,
                                  width: 3,
                                ),
                              )),
                              child: CustomText(
                                text: "خسر",
                                styleType: TextStyleType.SMALL,
                              ),
                            ),
                            CustomText(
                              text: "نقاط",
                              styleType: TextStyleType.SMALL,
                            ),
                          ],
                        ),
                        tableRow(
                          sequence: "1",
                          team: "2",
                          game: "3",
                          win: "4",
                          draw: "5",
                          lose: "6",
                          points: "7",
                          borderColor: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/pngs/ic_top_table.png",
                    height: screenWidth(6),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: screenWidth(20),
                      ),
                      child: CustomText(
                        text: "جدول ترتيب فرق الدوري السوري2023/2024",
                        styleType: TextStyleType.SMALL,
                        fontSize: screenWidth(23.5),
                        fontWeight: FontWeight.bold,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: InkWell(
                      onTap: () {
                        Get.to(SccoreTableView());
                      },
                      child: Container(
                        width: screenWidth(2),
                        height: screenWidth(13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(50),
                          color: Colors.orangeAccent,
                        ),
                        alignment: Alignment.center,
                        child: CustomText(
                          text: "مشاهدة كامل الجدول",
                          styleType: TextStyleType.SMALL,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow tableRow({
    required String sequence,
    required String team,
    required String game,
    required String win,
    required String draw,
    required String lose,
    required String points,
    Color? borderColor,
  }) {
    return TableRow(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor ?? Colors.grey,
        ),
      ),
      children: [
        CustomText(
          text: sequence,
          styleType: TextStyleType.BODY,
        ),
        CustomText(
          text: team,
          styleType: TextStyleType.BODY,
        ),
        CustomText(
          text: game,
          styleType: TextStyleType.BODY,
        ),
        CustomText(
          text: win,
          styleType: TextStyleType.BODY,
        ),
        CustomText(
          text: draw,
          styleType: TextStyleType.BODY,
        ),
        CustomText(
          text: lose,
          styleType: TextStyleType.BODY,
        ),
        CustomText(
          text: points,
          styleType: TextStyleType.BODY,
        ),
      ],
    );
  }
}
