import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../json/demoJson.dart';

class HomeController extends GetxController {
  DateTime selectedDate = DateTime.now();
  late final WebViewController webController;
  SvgPicture? svgPicture;
  var df;
  String? svgTest;
  @override
  void onInit() {
   df = dataJs ;

    print("kamal $df" );








   String svgData = '''<!-- Your SVG data as a string -->
  <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100">
    <!-- Your SVG content here -->
  </svg>
''';

// Convert the SVG data string to SvgPicture
    SvgPicture svgPicture = SvgPicture.string(
      svgData,
      width: 100, // Adjust the width and height as needed
      height: 100,
    );






    webController = WebViewController(

    )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor( Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('file:///C:/Users/Waby/Downloads/flower.html'));
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void onDateChange(DateTime date) {
    selectedDate = date;
    update();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
