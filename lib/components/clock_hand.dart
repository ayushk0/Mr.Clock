import 'dart:math';
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;
  ClockPainter(this.context, this.dateTime);
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

// Hour Calculation
    double hourX = centerX +
        size.width *
            0.3 *
            cos(((dateTime.hour * 30 + dateTime.minute * 0.5) - 90) * pi / 180);
    double hourY = centerY +
        size.width *
            0.3 *
            sin(((dateTime.hour * 30 + dateTime.minute * 0.5) - 90) * pi / 180);

// Hours Hand of Clock
    canvas.drawLine(
      center,
      Offset(hourX, hourY),
      Paint()
        ..color = Theme.of(context).colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

// Minute Calculation
    double minuteX = centerX +
        size.width * 0.35 * cos((dateTime.minute * 6 - 90) * pi / 180);
    double minuteY = centerY +
        size.width * 0.35 * sin((dateTime.minute * 6 - 90) * pi / 180);

// Minutes Hand of Clock
    canvas.drawLine(
      center,
      Offset(minuteX, minuteY),
      Paint()
        ..color = Theme.of(context).colorScheme.tertiary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

// Second Calculation
    double secondX =
        centerX + size.width * 0.4 * cos((dateTime.second * 6 - 90) * pi / 180);
    double secondY =
        centerY + size.width * 0.4 * sin((dateTime.second * 6 - 90) * pi / 180);

// Seconds Hand of Clock
    canvas.drawLine(
      center,
      Offset(secondX, secondY),
      Paint()..color = Theme.of(context).primaryColor,
    );

// Center point of Analog Clock
    Paint dotPainter = Paint()..color = Theme.of(context).primaryColor;
    canvas.drawCircle(center, 18, dotPainter);
    canvas.drawCircle(
        center, 17, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
