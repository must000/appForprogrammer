import 'package:flutter/material.dart';
import 'package:forprogrammer/utility/constant.dart';

class Superpage extends StatelessWidget {
  String name;
  Superpage({Key? key, required this.name}) : super(key: key);
  List<String> abount = [];
  List<String> gorount = [];
  int i = -1;
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
          backgroundColor: Constant.primary,
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            i++;
            return buildlist();
          },
          itemCount: abount.length,
        ));
  }

  Widget buildlist() {
    return ExpansionTile(
      title: Text(
        abount[i],
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            gorount[i],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
    
  }
}
