import 'package:flutter/material.dart';
import 'package:flutter_patika_app/app/global/constants.dart';
import 'package:flutter_patika_app/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Column(
            children: [
              Text(
                "Ücretsiz eğitimlerle teknoloji kariyerine başla!",
                style: TextStyle(
                    fontFamily: "RobotoMono",
                    color: lightH1TextColor,
                    fontSize: 36),
              ),
              paddingL,
              Text(
                "Online derslerde ve bootcamp’te kendini göster. Partner şirketlerimizde işe gir.",
                style: TextStyle(
                    fontFamily: "Nunito",
                    color: lightH1TextColor,
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
                  color: lightNetImgBgColor,
                  child: Image.network(studentsNetImg)),
              Text(
                "Mezunlarımızı onlarca şirket bekliyor",
                style: TextStyle(
                    fontFamily: "RobotoMono",
                    color: lightH1TextColor,
                    fontSize: 36),
              ),
              paddingL,
              Text(
                "Online derslerimizde ve bootcamp’lerimizde başarılı olan kişileri sponsor şirketlerimizde işe yerleştiriyoruz. Şirketler iyi yetişmiş yazılımcı bulmak için Patika’ya geliyor.",
                style: TextStyle(
                    fontFamily: "Nunito",
                    color: lightH1TextColor,
                    fontSize: 18),
              ),
            ],
          ),
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
