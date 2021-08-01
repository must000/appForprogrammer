import 'package:flutter/material.dart';
import 'package:forprogrammer/map.dart';
import 'package:forprogrammer/utility/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Must App",
      routes: Mapclass().map,
      initialRoute: '/authen',
      theme: ThemeData(
        accentColor: Constant.dark
      )
    );
  }
}
