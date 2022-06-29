import 'package:aimetated_card_container/card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<List<String>> list = [
    ["black-panther.jpg", "Blcak Panther"],
    ["doctor.jpg", "Dr. Strange"],
    ["hawkeye.jpg", "Hawkeye"],
    ["hulk.jpg", "Hulk"],
    ["ironman.jpg", "Ironman"],
    ["loki.jpg", "Loki"],
    ["spider-man.jpg", "Spider Man"],
    ["thor.jpg", "Thor"],
    ["wanda.jpg", "Wanda"],
    ["wido.jpg", "Wido"],
  ];

  int curret_index = -1;
  bool isTaped = false;
  double height = 70;
  double width = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 70),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (curret_index == index && isTaped) {
                  isTaped = false;
                  curret_index = -1;
                } else {
                  isTaped = true;
                  curret_index = index;
                }
              });
            },
            child: index == curret_index
                ? MyCard(
                    image: "assets/${list[index][0]}",
                    name: list[index][1],
                    width: width,
                    height: 300,
                  )
                : MyCard(
                    image: "assets/${list[index][0]}",
                    name: list[index][1],
                    width: width,
                    height: height,
                  ),
          );
        },
      ),
    );
  }
}
