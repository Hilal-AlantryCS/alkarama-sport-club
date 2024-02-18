import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class SccoreTableView extends StatelessWidget {
  const SccoreTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: screenWidth(18),
          vertical: screenWidth(10),
        ),
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsetsDirectional.symmetric(vertical: screenWidth(18)),
              height: screenWidth(8),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: screenWidth(4),
                    margin: EdgeInsetsDirectional.only(
                      end: screenWidth(20),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
            Table(
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
                        styleType: TextStyleType.SMALL,
                        fontWeight: FontWeight.bold,
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
            )
          ],
        ),
      ),
    );
  }
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
