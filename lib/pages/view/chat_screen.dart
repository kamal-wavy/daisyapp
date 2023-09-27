import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../controller/home_screen_controller.dart';

class ChatScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (context) {
          return Scaffold(
              body:  Center(
                  child: Text(
                    "Chat",
                    style: TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold, color: Colors.grey),
                  ))
              //Lottie.asset('asset/flower.json',),
          );
        });
  }
}
