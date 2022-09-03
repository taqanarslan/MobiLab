import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({Key? key}) : super(key: key);

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  dynamic color_;

  Color color1 = Colors.pink;
  Color color2 = Colors.purple;
  Color color3 = Colors.green;
  Color color4 = Colors.blue;
  Color color5 = Colors.grey;
  Color color6 = Colors.indigo;
  Color color7 = Colors.red;
  Color color8 = Colors.yellow;
  Color color9 = Colors.orange;

  String text1 = "pink";
  String text2 = "purple";
  String text3 = "green";
  String text4 = "blue";
  String text5 = "grey";
  String text6 = "indigo";
  String text7 = "red";
  String text8 = "yellow";
  String text9 = "orange";
  String texts = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox_(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  texts = text1;
                  color_ = color1;
                });
              },
              child: customContainer(boxColor: color1),
            ),
            SizedBox_(),
            TextButton(
              onPressed: () {
                setState(() {
                  texts = text2;
                  color_ = color2;
                });
              },
              child: customContainer(boxColor: color2),
            ),
            SizedBox_(),
            TextButton(
              onPressed: () {
                setState(() {
                  texts = text3;
                  color_ = color3;
                });
              },
              child: customContainer(boxColor: color3),
            ),
            SizedBox_(),
          ],
        ),
        SizedBox_(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: customContainer(boxColor: color4),
              onPressed: () {
                setState(() {
                  texts = text4;
                  color_ = color4;
                });
              },
            ),
            SizedBox_(),
            TextButton(
                child: customContainer(boxColor: color5),
                onPressed: () {
                  setState(() {
                    texts = text5;
                    color_ = color5;
                  });
                }),
            SizedBox_(),
            TextButton(
                child: customContainer(boxColor: color6),
                onPressed: () {
                  setState(() {
                    texts = text6;
                    color_ = color6;
                  });
                }),
          ],
        ),
        SizedBox_(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                child: customContainer(boxColor: color7),
                onPressed: () {
                  setState(() {
                    texts = text7;
                    color_ = color7;
                  });
                }),
            SizedBox_(),
            TextButton(
                child: customContainer(boxColor: color8),
                onPressed: () {
                  setState(() {
                    texts = text8;
                    color_ = color8;
                  });
                }),
            SizedBox_(),
            TextButton(
                child: customContainer(boxColor: color9),
                onPressed: () {
                  setState(() {
                    texts = text9;
                    color_ = color9;
                  });
                }),
          ],
        ),
        SizedBox_(),
        TextButton(
            child: Container_(
              textcolor: Colors.black,
              text: texts,
              color: color_,
            ),
            onPressed: () {}),
      ],
    );
  }
}

customContainer({required Color boxColor}) {
  return Container(
    color: boxColor,
    height: 50,
    width: 90,
  );
}

SizedBox_({height, width}) {
  return SizedBox(
    height: 65,
    width: 20,
  );
}

Container_({color, text, textcolor}) {
  return Container(
    color: color,
    width: 100,
    height: 65,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: textcolor, fontSize: 30, fontWeight: FontWeight.w300),
    ),
  );
}
