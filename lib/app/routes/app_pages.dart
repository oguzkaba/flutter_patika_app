import 'package:get/get.dart';

import 'package:flutter_patika_app/app/modules/bootcamp/bindings/bootcamp_binding.dart';
import 'package:flutter_patika_app/app/modules/bootcamp/views/bootcamp_view.dart';
import 'package:flutter_patika_app/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_patika_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter_patika_app/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_patika_app/app/modules/home/views/home_view.dart';
import 'package:flutter_patika_app/app/modules/lesson/bindings/lesson_binding.dart';
import 'package:flutter_patika_app/app/modules/lesson/views/lesson_view.dart';
import 'package:flutter_patika_app/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_patika_app/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.BOOTCAMP,
      page: () => BootcampView(),
      binding: BootcampBinding(),
    ),
    GetPage(
      name: _Paths.LESSON,
      page: () => LessonView(),
      binding: LessonBinding(),
    ),
  ];
}
