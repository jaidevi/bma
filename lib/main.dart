import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import 'package:sampleproj/Controller/Authcontroller.dart';
import 'package:sampleproj/SplashScreen.dart';

void main() {
  initialize();

  runApp(const MyApp());
}

void initialize() {
  Get.lazyPut(() => Authcontroller());
  get.testmode = true;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const Splash1(),
    );
  }
}
