import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/cobaWidgets.dart';
import 'package:slicing/widgets/theme/theme.dart';
import 'package:slicing/Page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: primaryColor),
      home: Home(),
    );
  }
}
