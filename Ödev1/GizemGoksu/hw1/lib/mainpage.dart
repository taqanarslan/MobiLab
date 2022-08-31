import 'package:flutter/material.dart';
import 'colorfultexts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int no = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            rowwithboxes(Box(index: 1, renk: Colors.purple), Box(index: 2, renk: Colors.blue), Box(index: 3, renk: Colors.orange)),
            SizedBox(height: 5),
            rowwithboxes(Box(index: 4, renk: Colors.pink), Box(index: 5, renk: Colors.yellow), Box(index: 6, renk: Colors.brown)),
            SizedBox(height: 5),
            rowwithboxes(Box(index: 7, renk: Colors.red), Box(index: 8, renk: Colors.green), Box(index: 9, renk: Colors.grey)),
            SizedBox(height: 40),
            colorfultext[no],
          ]),
        ),
      ),
    );
  }

  Row rowwithboxes(Box box1, Box box2, Box box3) {
    //buraya 3 renk 3 index olmak üzere 6 değişken vermek yerine box class'ı oluşturarak her bir box için index ve renk alarak parantez içindeki değişken sayısını üçe düşürdüm.
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        colorfulbox(box1.index, box1.renk),
        SizedBox(width: 5),
        colorfulbox(box2.index, box2.renk),
        SizedBox(width: 5),
        colorfulbox(box3.index, box3.renk),
      ],
    );
  }

  InkWell colorfulbox(int number, Color colour) {
    return InkWell(
      onTap: () {
        setState(() {
          no = number;
          //buradaki no değişkenini colorfultext listesindeki yazılara ulaşmak için kullandım.Her yeni number geldiğinde no değişeceğinden ve stateful widget kullandığımızdan dolayı yazılar değişecek.
        });
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: colour),
        width: 100,
        height: 100,
      ),
    );
  }
}

class Box {
  int index; //buradaki index değişkeni sayesinde o renge ait yazının colorfultext listesindeki indexini alıyoruz.
  Color renk;
  Box({this.renk = Colors.transparent, this.index = 0});
}
