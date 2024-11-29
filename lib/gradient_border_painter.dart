import 'package:flutter/material.dart';

class GradientBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final radius = 20.0;

    final rRect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    final borderPaint = Paint()
      ..shader = LinearGradient(
        colors: [Colors.transparent, Colors.white],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawRRect(rRect, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}