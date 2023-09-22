import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gojek/controllers/login_controller.dart';
import 'package:gojek/controllers/market_controller.dart';
import 'package:gojek/pages/login_page.dart';

import 'pages/market_page.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    Get.put(MarketController());

    return GetMaterialApp(
      title: 'C-Teen',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/market',
          page: () => MarketPage(warung: Get.arguments),
        ),
      ],
    );
  }
}
