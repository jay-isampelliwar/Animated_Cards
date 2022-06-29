import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String image;
  final String name;
  final double height;
  final double width;

  const MyCard({
    required this.image,
    required this.name,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      duration: const Duration(milliseconds: 200),
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        border: Border.all(
            width: 2, color: Colors.white10, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
