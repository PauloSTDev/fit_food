import 'package:flutter/material.dart';

class BuildList extends StatelessWidget {
  final String label;
  final String text;

  const BuildList({Key? key, required this.label, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Expanded(child: Text(label))
    );
  }
}
