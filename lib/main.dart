import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gojek/controllers/login_controller.dart';
import 'package:gojek/controllers/market_controller.dart';
import 'package:gojek/pages/home_page.dart';
import 'package:gojek/pages/login_page.dart';
import 'package:gojek/storage/user_login_local.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'pages/market_page.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://brutxkeevcoapkuwynne.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJydXR4a2VldmNvYXBrdXd5bm5lIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTUxOTA0MzYsImV4cCI6MjAxMDc2NjQzNn0.IMyDQhbZvoND8JzjEyKZMF53Cvot8kFr2rzr49B6y4U',
  );
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

    final UserLoginLocal local = UserLoginLocal();

    return GetMaterialApp(
      title: 'C-Teen',
      debugShowCheckedModeBanner: false,
      initialRoute: local.isUserLogin()? '/home' : '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/market',
          page: () => MarketPage(warung: Get.arguments),
        ),
      ],
    );
  }
}
