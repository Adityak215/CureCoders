import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height*0.3); // Start at the bottom-left corner
    path.cubicTo(
        size.width*0.25, (size.height*0.5), 3*(size.width/4), size.height*0.25,size.width, size.height*0.5); // Define the curve
    path.lineTo(size.width, 0); // End at the top-right corner
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
