import 'package:flutter/material.dart';

class OverlapSquare extends StatelessWidget {
  double size;
  Color color = Colors.white;
  OverlapSquare(this.size,{this.color});
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      clipBehavior: Clip.hardEdge,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
