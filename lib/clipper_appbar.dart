import 'package:flutter/material.dart';

class ClipperAppbar extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double w = size.width;
    double h = size.height;

    var path = Path();

    path.lineTo(0, h + 8);

    path.quadraticBezierTo(w, h + 38, w, h - 50);

    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
