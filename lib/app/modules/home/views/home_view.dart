import 'package:flutter/material.dart';
import 'package:flutter_patika_app/app/global/constants.dart';
import 'package:flutter_patika_app/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var scKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scKey,
      endDrawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            child: Image.asset(appLogo),
            onTap: () => Get.toNamed(Routes.DASHBOARD)),
        leadingWidth: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: buttonBgColor),
              child: IconButton(
                  onPressed: () => scKey.currentState?.openEndDrawer(),
                  icon: Icon(Icons.menu, semanticLabel: "menu")),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [lightHomeTitleBgColor, lightNetImgBgColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                child: Column(
                  children: [
                    Text(
                      "Ücretsiz eğitimlerle teknoloji kariyerine başla!",
                      style: TextStyle(
                          fontFamily: "RobotoMono",
                          color: lightTextColor,
                          fontSize: 36),
                    ),
                    paddingL,
                    Text(
                      "Online derslerde ve bootcamp’te kendini göster. Partner şirketlerimizde işe gir.",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          color: lightTextColor,
                          fontSize: 16),
                    ),
                    paddingM,
                    Row(
                      children: [
                        ButtonWidget(
                            text: "Online dersler",
                            press: () => Get.toNamed(Routes.LESSON)),
                        paddingS,
                        ButtonWidget(
                            text: "Bootcamp'ler",
                            press: () => Get.toNamed(Routes.BOOTCAMP))
                      ],
                    ),
                    paddingS,
                    Container(
                        width: double.infinity,
                        child: Image.network(studentsNetImg)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
              child: Column(
                children: [
                  Text(
                    "Mezunlarımızı onlarca şirket bekliyor",
                    style: TextStyle(
                        fontFamily: "RobotoMono",
                        color: lightTextColor,
                        fontSize: 30),
                  ),
                  paddingS,
                  Text(
                    "Online derslerimizde ve bootcamp’lerimizde başarılı olan kişileri sponsor şirketlerimizde işe yerleştiriyoruz. Şirketler iyi yetişmiş yazılımcı bulmak için Patika’ya geliyor.",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        color: lightTextColor,
                        fontSize: 18),
                  ),
                  paddingM,
                  Text(
                    "Bizimle çalışan şirket sayısı",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        color: lightTextColor,
                        fontSize: 18),
                  ),
                  Text(
                    "250+",
                    style: TextStyle(
                        fontFamily: "RobotoMono",
                        color: buttonBgColor,
                        fontSize: 30),
                  ),
                  paddingM,
                  Text(
                    "İş sahibi yaptığımız kişi sayısı",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        color: lightTextColor,
                        fontSize: 18),
                  ),
                  Text(
                    "1300+",
                    style: TextStyle(
                        fontFamily: "RobotoMono",
                        color: buttonBgColor,
                        fontSize: 30),
                  ),
                  GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 30,
                      // mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: List.generate(
                          gridImageList.length,
                          (index) => Image.asset(
                                gridImageList[index],
                              ))),
                  Divider(color: patikaOrangeColor, thickness: 3),
                  paddingXL,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("BOOTCAMP PROGRAMLARIMIZ",
                        style: TextStyle(
                            fontFamily: "RobotoMono",
                            color: patikaOrangeColor,
                            fontSize: 20)),
                  ),
                  paddingS,
                  Text("Yoğun eğitim programları ile şirketlerde işe yerleş",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "RobotoMono", fontSize: 25)),
                  paddingS,
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text:
                            "Partner şirketlerimiz, kendilerine özel Patika bootcamp’lerinden toplu işe alım yapıyor. Bu ücretsiz bootcamp'lere katıl, başarıyla mezun ol, ve hemen işe başla! ",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            color: lightTextColor,
                            fontSize: 16)),
                    TextSpan(
                        text:
                            "Şu ana kadar binlerce kişi bootcamp'lerden sonra en iyi şirketlerde işe girdi.",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            color: lightTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ])),
                  paddingL,
                  Text("\"Hayatımda yepyeni bir sayfa açmamı sağladı\"",
                      style: TextStyle(
                          fontFamily: "RobotoMono",
                          fontSize: 20,
                          color: buttonBgColor,
                          fontStyle: FontStyle.italic)),
                  paddingS,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "Gürhan Gürsoy, Frontend Developer @ Bilyoner",
                          style: TextStyle(fontFamily: "Nunito"))),
                  paddingM,
                  Text("Ücretsiz!",
                      style: TextStyle(
                        fontFamily: "RobotoMono",
                        fontSize: 20,
                        color: patikaOrangeColor,
                      )),
                  paddingS,
                  ButtonWidget(
                      text: "Bootcamp programları",
                      press: () => Get.toNamed(Routes.BOOTCAMP)),
                  paddingM,
                  Text(
                    "Başvurulara açık programlarımız",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "RobotoMono", fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? press;
  ButtonWidget({
    required this.text,
    this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14),
        child: Text(text, style: TextStyle(fontFamily: "RobotoMono")),
      ),
      style: ElevatedButton.styleFrom(
          primary: buttonBgColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero))),
    );
  }
}
