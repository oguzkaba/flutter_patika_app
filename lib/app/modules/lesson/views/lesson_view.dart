import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lesson_controller.dart';

class LessonView extends GetView<LessonController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LessonView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LessonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
