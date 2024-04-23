import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_inspector_ai/theme/app_theme.dart';
import 'package:waste_inspector_ai/view/screens/home_page.dart';

void main() {
  runApp(const MyApp());
  print("object") ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme() ,
      initialRoute: '/',
      getPages: [GetPage(name: '/', page: () => HomePage())],
    );
  }
}

