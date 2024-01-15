import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerWidget extends StatelessWidget {
  String text;
  Color color;
  ContainerWidget({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
      ),
      child:  Text(text,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
    );
  }
}
