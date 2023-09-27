import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controller/home_screen_controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (context) {
          return Scaffold(
              backgroundColor: Color(0xfff2f2f2),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.pinkAccent,
                              size: 40,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 10),
                        child: Text(
                            '${DateFormat('MMM, d').format(controller.selectedDate)}',
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                          height: 100,
                          child: DatePicker(
                            DateTime.now(),
                            initialSelectedDate: controller.selectedDate,
                            selectionColor: Colors.red,
                            onDateChange: controller.onDateChange,
                          ),
                        ),
                      ),
                      df(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Edit Cycle',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pinkAccent)),
                              Icon(Icons.edit, color: Colors.pinkAccent)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Next Period in ',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text(
                              '5 days',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Next Fertility in ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text(
                            '20 days',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chance of pregnancy',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                            Text(
                              'Low',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}

df() {
  return SizedBox(
    height: 300,
    child: Stack(
      alignment: Alignment.center,
      children: [
        InAppWebView(
          onWebViewCreated: (InAppWebViewController controller) {
            var uri = "asset/flower.html";
            controller.loadFile(assetFilePath: uri);
          },
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('day 22',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              'XXXX Phase',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            )
          ],
        )
      ],
    ),
  );
}
