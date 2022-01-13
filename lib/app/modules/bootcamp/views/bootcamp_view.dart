import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bootcamp_controller.dart';

class BootcampView extends GetView<BootcampController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BootcampView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BootcampView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
