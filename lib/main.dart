import 'package:flutter/material.dart';
import 'package:flutter_template/utils/my_translation.dart';
import 'package:flutter_template/view/HomePage.dart';
import 'package:get/get.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // this for alice debugging network calls
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // locale: egyptianArabic,
      translations: MyTranslation(),
      // defaultTransition: Transition.leftToRight,
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        fontFamily: 'Cairo',
      ),
      home: HomePage(),
    );
  }
}
