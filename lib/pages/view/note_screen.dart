import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_screen_controller.dart';

class NoteScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (context) {
          return Scaffold(
              body: Center(
                  child: Text(
            "NOTE",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.grey),
          )));
        });
  }
}
