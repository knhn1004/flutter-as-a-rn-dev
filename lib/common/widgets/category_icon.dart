import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final dynamic bgColor;
  final IconData iconData;

  const CategoryIcon({Key? key, required this.bgColor, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor,
      ),
      child: Icon(
        iconData,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
