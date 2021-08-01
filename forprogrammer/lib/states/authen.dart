import 'package:flutter/material.dart';
import 'package:forprogrammer/utility/constant.dart';
import 'package:forprogrammer/widget/show_image.dart';
import 'package:flutter/cupertino.dart';
class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            buildchoiselanguage(size, "JAVA", Constant.imgJAVA, "C",
                Constant.imgC, Constant.rountJAVA, Constant.rountC),
                buildchoiselanguage(size, "DART", Constant.imgDart, "C#",
                Constant.imgCchap, Constant.rountDart, Constant.rountCchap)
          ],
        ),
      ),
      backgroundColor: Constant.dark,
    );
  }

  Row buildchoiselanguage(double size, String title1, String path1,
      String title2, String path2, String whare1, String whare2) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(top:25),
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: ShowImage(path: path1),
                    width: size * 0.43,
                    height: 100,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title1,
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                    color: Constant.primary,
                  )
                ],
              ),
            ),
          ),
          onTap: () => Navigator.pushNamed(context, whare1),
        ),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(top:25),
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: ShowImage(path: path2),
                    width: size * 0.43,
                    height: 100,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title2,
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                    color: Constant.primary,
                  )
                ],
              ),
            ),
          ),
          onTap: () => Navigator.pushNamed(context, whare2),
        )
      ],
    );
  }
}
