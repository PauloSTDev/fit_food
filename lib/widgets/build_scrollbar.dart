import 'package:flutter/material.dart';

class BuildScrollBar extends StatelessWidget {
  final String label;

  const BuildScrollBar({Key? key, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12)
      ),
      child: Column(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
    );
  }
}
