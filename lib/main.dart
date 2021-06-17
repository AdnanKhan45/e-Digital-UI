import 'package:e_digital_shop/pages/filter_page.dart';
import 'package:e_digital_shop/pages/homePage.dart';
import 'package:e_digital_shop/pages/search_page.dart';
import 'package:e_digital_shop/pages/view_image.dart';
import 'package:e_digital_shop/screens/page_2.dart';
import 'package:e_digital_shop/screens/page_3.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey ),
      title: "e digital shop",
      home: FilterPage(),
    );
  }
}

