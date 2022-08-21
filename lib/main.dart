import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wilson_wings_test/themes/theme.dart';
import 'package:wilson_wings_test/views/bottom_nav_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: BottomNavView(),
    );
  }
}
