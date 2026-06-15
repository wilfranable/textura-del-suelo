import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {
  final double arcilla;
  final double arena;

  TrianglePainter({required this.arcilla, required this.arena});

  @override
  void paint(Canvas canvas, Size size) {
    final border = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, border);

    double x = ((arena + (arcilla / 2)) / 100) * size.width;
    double y = size.height - ((arcilla / 100) * size.height);

    canvas.drawRect(
      Rect.fromCenter(center: Offset(x, y), width: 12, height: 12),
      Paint()..color = Colors.red,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}