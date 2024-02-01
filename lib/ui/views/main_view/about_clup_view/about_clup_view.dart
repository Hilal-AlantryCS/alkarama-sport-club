import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/shared_widgets/custom_tob_container.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class AboutClubView extends StatefulWidget {
  const AboutClubView({super.key});

  @override
  State<AboutClubView> createState() => _AboutClubViewState();
}

class _AboutClubViewState extends State<AboutClubView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar:TobContainer(text: 'عن النادي') ,
            body: ListView(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
              top: screenWidth(20),
              start: screenWidth(30),
              end: screenWidth(50)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/pngs/karama.png',
                width: screenWidth(1.1),
                height: screenWidth(2),
              ),
              SizedBox(
                height: screenWidth(20),
              ),
              CustomText(
                  text: 'متى تأسس نادي الكرامة؟',
                  styleType: TextStyleType.SUBTITLE,
                  textColor: AppColors.blackColor),
              CustomText(
                text:
                    ' تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص في سورية وكان يعرف بنادي خالدبن الوليد في ذلك الوقت وفي عام 1972تم دمج النادي مع العديد من الاندية الاخرى وهي نادي الوحدةونادي الطلائع و نادي التضامن و نادي الجهاد و اطلق عليه أنذاك اسم نادي الكرامة وهذا الاسم مازال يستخدم حتى اليوم .',
                styleType: TextStyleType.BODY,
              ),
              SizedBox(
                height: screenWidth(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        CustomText(
                          text: 'من هو مؤسس نادي الكرامة :',
                          styleType: TextStyleType.SUBTITLE,
                          textColor: AppColors.blackColor,
                        ),
                        CustomText(
                          text:
                              'يُعتبر الأستاذ ساطع أتاسي مؤسس  نادي الكرامة السوري، ويُعتبر أيضا الأب الروحي للنادي.',
                          styleType: TextStyleType.BODY,
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/pngs/Rectangle 107.png',
                    width: screenWidth(2.5),
                    height: screenWidth(1.7),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth(20),
              ),
              Image.asset(
                'assets/images/pngs/Rectangle 108.png',
                width: screenWidth(1.1),
                height: screenWidth(2),
              ),
              CustomText(
                  text: 'كيف جاءت فكرة تأسيس نادي الكرامة :',
                  styleType: TextStyleType.SUBTITLE,
                  textColor: AppColors.blackColor),
              CustomText(
                text:
                    'جاءت فكرة تأسيس النادي من قِبل مجموعة من شباب مدينة حمص الذين مارسوا رياضة كرة القدم وفكروا بطريقة جدية في تأسيس نادي ليجمعهم جميعا وبناء على ذلك جاءت فكرة التأسيس.',
                styleType: TextStyleType.BODY,
              ),
              SizedBox(
                height: screenWidth(40),
              ),
              Image.asset(
                'assets/images/pngs/Rectangle 109.png',
                width: screenWidth(1.1),
                height: screenWidth(2),
              ),
              CustomText(
                  text: 'ما هو الملعب الرسمي لنادي الكرامة :',
                  styleType: TextStyleType.SUBTITLE,
                  textColor: AppColors.blackColor),
              CustomText(
                text:
                    ''' عَدُّ ملعب خالد بن الوليد، الذي تأسس في عام 1960 ، هو الملعب الرسمي لنادي حمص الريا ضي. يقع الملعب في مدينة حمص ويُعَدُّ ثاني أحدث الملاعب في سوريابعد ملعب حلب الدولي يتسع الملعب لحوالي 38000 متفرج، ويُعرَفُ هذا الملعب بلقب “مقبرة الفرق” وذلك لأنه من الصعب جدًا هزيمة نادي الكرامة فيه. كما استضاف الملعب نهائي دوري أبطال آسيا في عام 2006
''',
                styleType: TextStyleType.BODY,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        CustomText(
                          text: 'ما هي اول بطولة حصل عليها نادي الكرامة :',
                          styleType: TextStyleType.SUBTITLE,
                          textColor: AppColors.blackColor,
                        ),
                        CustomText(
                          text:
                              'في الخامس والعشرين من نيسان عام 1948م فازنادي الكرامةالسوري بأول بطولة في تاريخه حيث تغلب على منتخب حلب بنتيجةهدفين مقابل هدف مقابل هدف واحد .',
                          styleType: TextStyleType.BODY,
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/pngs/Rectangle 110.png',
                    width: screenWidth(2.6),
                    height: screenWidth(2),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth(20),
              ),
              Image.asset(
                'assets/images/pngs/Rectangle 111.png',
                width: screenWidth(1.1),
                height: screenWidth(2),
              ),
              CustomText(
                  text: 'السمعة الخارجية لنادي الكرامة :',
                  styleType: TextStyleType.SUBTITLE,
                  textColor: AppColors.blackColor),
              CustomText(
                text:
                    '''السمعة العربية والآسيوية القاريّة، حققها نادي الكرامة عندما
خاض بطولة الأندية العربية بحمص عام 1985 1985 إلى جانب النجمة اللبناني والفيصلي الأردنّي ومشاركته بدورة الملك حسينبالأردن في عام 1987 ولقائه مع الهلال السعودي في تصفياتدوري الأندية الآسيوية أبطال الكؤوس سنة 2000 , وكذلك الأمر  مع الزمالك المصريّ في تصفيات دوري أبطال العرب عام 2004كما شارك بدورات عربية مختلفة في العراق والأردن ومصر  ونافس على ألقابها وكان الإنجاز الأكبر بوصوله للمرة الأولى بتاريخه لكرة السورية إلى المباراة النهائية  لدوري أبطال آسيا  وخسر اللقب في اللحظات الأخيرة أمام تشونبوك الكوري بعد خسارته في كوريا الجنوبية وفوزه في حمص. يعدّ فريق الكرامة الفريق الآسيوي الوحيد الذي يشارك في دوري أبطال آسيا بنظامها الجديد لثلاث مرات متتالية ويتأهل في جميعها لدور الثمانية الكبار على الأقل و في عام 2009 شارك النادي في كأس الاتحاد الآسيوي لأسباب نظيمية ومادية وقد وصل إلى نهائي لبطولة ليواجه نادي الكويت في مباراة واحدة في ملعب نادي الكويت ويخسر المباراة بعد عدة وعوامل أثرت على مستوى الفريق في تلك البطولة كما يلعب أبناء النادي من كوادر فنية وتدريبيّة و خبرات ولاعبين ممن يعمل في الدول العربية دوراً مهما في المحافظة على السمعة العطرة لهاذا النادي وقد خرّج النادي عدة لاعبين متميزين يعدّون نجوم فرقهم النادي وقد خرّج النادي عدة لاعبين متميزين يعدّون نجوم فرقهم حاليا ومنهم :
''',
                styleType: TextStyleType.BODY,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomText(
                        text: '• جهاد الحسين',
                        styleType: TextStyleType.BODY,
                      ),
                      CustomText(
                        text: '• جهاد الحسين',
                        styleType: TextStyleType.BODY,
                      ),
                      CustomText(
                        text: '• جهاد الحسين',
                        styleType: TextStyleType.BODY,
                      ),
                      CustomText(
                        text: '• جهاد الحسين',
                        styleType: TextStyleType.BODY,
                      )
                    ],
                  ),
                  Flexible(
                   
                    child: Image.asset(
                      'assets/images/pngs/Rectangle 112.png',
                      width: screenWidth(1),
                      height: screenWidth(2),
                    ),
                  ),
                ],
              ),
              CustomText(
                  text: 'كرة السلة في نادي الكرامة :',
                  styleType: TextStyleType.SUBTITLE,
                  textColor: AppColors.blackColor),
              SizedBox(height: screenWidth(50),),
              Image.asset(
                'assets/images/pngs/Rectangle 115.png',
                width: screenWidth(0.1),
                height: screenWidth(2),
              ),
              Center(
                child: CustomText(
                          text: 'حصل الكرامة على بطولة السلة للمرة الأولى في تاريخه عام 2020',
                          styleType: TextStyleType.BODY,
                        ),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
