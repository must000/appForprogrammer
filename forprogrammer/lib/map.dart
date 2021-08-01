import 'package:flutter/material.dart';
import 'package:forprogrammer/page/chap.dart';
import 'package:forprogrammer/page/dart.dart';
import 'package:forprogrammer/states/authen.dart';
import 'package:forprogrammer/page/cpage.dart';
import 'package:forprogrammer/page/javapage.dart';

class Mapclass {
  final Map<String, WidgetBuilder> map = {
    '/authen': (BuildContext context) => Authen(),
    '/่javapage': (BuildContext context) => Javapage("JAVA"),
    '/Cpage': (BuildContext context) => Cpage("C"),
    '/Chappage': (BuildContext context) => Cchap("C#"),
    '/Dartpage': (BuildContext context) => Dart("Dart")
  };
}
