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
        leading: InkWell(
            child: Image.asset(appLogo),
            onTap: () => Get.toNamed(Routes.DASHBOARD)),
        leadingWidth: 80,
        actions: [
          Container(
            width: 40,
            height: 40,
            color: buttonBgColor,
            child: IconButton(
                onPressed: () => scKey.currentState?.openEndDrawer(),
                icon: Icon(Icons.menu)),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: Column(
              children: [
                Text(
                  "Ücretsiz eğitimlerle teknoloji kariyerine başla!",
                  style: TextStyle(color: lightH1TextColor, fontSize: 50),
                ),
                paddingL,
                Text(
                  "Online derslerde ve bootcamp’te kendini göster. Partner şirketlerimizde işe gir.",
                  style: TextStyle(
                      color: lightH1TextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                paddingXL,
                Row(
                  children: [
                    buttonWidget(child: Text("Online Dersler")),
                    paddingM,
                    buttonWidget(child: Text("Bootcamp' ler"))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class buttonWidget extends StatelessWidget {
  Widget child;
  VoidCallback? press;
  buttonWidget({
    required this.child,
    this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: child,
      style: ElevatedButton.styleFrom(primary: buttonBgColor),
    );
  }
}
