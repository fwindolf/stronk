import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/models/challenge/completed_challenge.dart';

class ChallengePainter extends CustomPainter {
  final List<DateTime> dates;
  final Map<String, Map<DateTime, double>> challenges;

  const ChallengePainter(this.dates, this.challenges);

  Path triangle(Offset pos, Offset c1, Offset c2, Offset c3) {
    return Path()
      ..moveTo(pos.dx + c1.dx, pos.dy + c1.dy)
      ..lineTo(pos.dx + c2.dx, pos.dy + c2.dy)
      ..lineTo(pos.dx + c3.dx, pos.dy + c3.dy)
      ..lineTo(pos.dx + c1.dx, pos.dy + c1.dy);
    // ..moveTo(pos.dx, pos.dy - y / 2)
    // ..lineTo(pos.dx + x / 2, pos.dy + y / 2)
    // ..lineTo(pos.dx - x / 2, pos.dy + y / 2)
    // ..lineTo(pos.dx, pos.dy - y / 2);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final blackPaint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..color = Colors.black;

    // Draw the X axis
    canvas.drawPath(
      triangle(
        Offset(size.width - 20, size.height - 5),
        Offset(-5, -5),
        Offset(5, 0),
        Offset(-5, 5),
      ),
      blackPaint,
    );
    canvas.drawLine(
      Offset(20, size.height - 5),
      Offset(size.width - 20, size.height - 5),
      blackPaint,
    );

    // Draw the Y axis
    canvas.drawPath(
      triangle(
        Offset(20, 10),
        Offset(0, -5),
        Offset(5, 5),
        Offset(-5, 5),
      ),
      blackPaint,
    );
    canvas.drawLine(
      Offset(20, 10),
      Offset(20, size.height - 5),
      blackPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ChallengeChart extends ConsumerWidget {
  final int monthsShown;

  const ChallengeChart([this.monthsShown = 2]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final challenges = <CompletedChallenge>[];

    final today = DateTime.now();
    final earliest = today.subtract(Duration(days: monthsShown * 30));
    final startOfChart = DateTime(earliest.year, earliest.month, 1);
    final dayCount = today.difference(startOfChart).inDays;

    final challengesPerDate = <String, Map<DateTime, double>>{};
    challenges.forEach((challenge) {
      final startOfDay = DateTime(
        challenge.startTime.year,
        challenge.startTime.month,
        challenge.startTime.day,
      );
      if (startOfDay.isBefore(startOfChart)) return;

      final name = challenge.challenge.name;
      challengesPerDate[name] = Map.from(challengesPerDate[name] ?? {})
        ..putIfAbsent(
          startOfDay,
          () => challenge.exercise.configuration.loadEquivalent,
        );
    });

    final dates = Iterable<int>.generate(dayCount).map((days) {
      return startOfChart.add(Duration(days: days));
    }).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: LayoutBuilder(
        builder: (_, constraints) => Container(
          width: constraints.widthConstraints().maxWidth,
          height: constraints.heightConstraints().maxHeight,
          child: CustomPaint(
            painter: ChallengePainter(dates, challengesPerDate),
          ),
        ),
      ),
    );
  }
}
