import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hassankamary_getx/view/first.dart';
import 'package:hassankamary_getx/view/three.dart';

import 'package:hassankamary_getx/view/two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/first",
      getPages: [
        GetPage(name: "/first", page: () => First()),
        GetPage(name: "/two", page: () => Two()),
        GetPage(name: "/three", page: () => Three()),
      ],
    );
  }
}
