import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' show DateFormat;

import 'package:stronk/models/challenge/completed_challenge.dart';

class CoordinateSystem<S, T extends num> {
  late Point<double> origin;
  late Point<double> xAx;
  late Point<double> yAx;

  late S minX;
  late S maxX;
  late double Function(S) interpolateX;

  late T minY;
  late T maxY;
  late double Function(T) interpolateY;

  CoordinateSystem({
    required Map<S, T> data,
    required Size size,
    S? minX,
    S? maxX,
    Function(S, S, S)? interpolateX,
    T? minY,
    T? maxY,
    Function(T, T, T)? interpolateY,
  }) {
    // Define coordinate system
    origin = Point(30.0, size.height - 5);
    xAx = Point(size.width - 20, origin.y);
    yAx = Point(origin.x, 10.0);

    assert(data.length > 0);

    // Define min/max values
    if (minX != null && maxX != null) {
      this.minX = minX;
      this.maxX = maxX;
    } else if (S == num) {
      this.minX = this.minX ??
          data.keys.fold(
            data.keys.first,
            (S a, S b) => (a as num) < (b as num) ? a : b,
          );
      this.maxX = this.maxX ??
          data.keys.fold(
            data.keys.last,
            (S a, S b) => (a as num) > (b as num) ? a : b,
          );
    } else if (S == DateTime) {
      this.minX = this.minX ?? data.keys.first;
      this.maxX = this.maxX ?? data.keys.last;
      data.keys.forEach((element) {
        final date = element as DateTime;
        if (date.isBefore(this.minX as DateTime)) this.minX = element;
        if (date.isAfter(this.maxX as DateTime)) this.maxX = element;
      });
    } else {
      throw Exception("Invalid type: $S");
    }

    if (minY == null || maxY == null) {
      this.minY = data.values.fold(data.values.first, min);
      this.maxY = data.values.fold(data.values.last, max);
    } else {
      this.minY = minY;
      this.maxY = maxY;
    }

    if (interpolateX == null) {
      this.interpolateX = _interpolateX;
    } else {
      this.interpolateX = (S item) => interpolateX(item, this.minX, this.maxX);
    }
    if (interpolateY == null) {
      this.interpolateY = _interpolateY;
    } else {
      this.interpolateY = (T item) => interpolateY(item, this.minY, this.maxY);
    }
  }

  double _interpolateX(S item) {
    // Returns a value between minX = 0 and maxX = 1
    if (S == num) {
      final num _min = minX as num;
      final num _max = maxX as num;
      final num _val = item as num;
      return _val / (_max - _min);
    } else if (S == DateTime) {
      final num _diff = (maxX as DateTime).difference(minX as DateTime).inDays;
      return (item as DateTime).difference(minX as DateTime).inDays / _diff;
    } else {
      throw Exception("Cannot use ${S.runtimeType}, please pass interpolation function");
    }
  }

  double _interpolateY(T item) {
    return (item - minY) / (maxY - minY);
  }

  double atX(S item) => origin.x + (0.95 * interpolateX(item)) * (xAx.x - origin.x) + 10;

  double atY(T item) => origin.y + (0.1 + 0.7 * interpolateY(item)) * (yAx.y - origin.y) - 10;
}

class ChallengePainter extends CustomPainter {
  final Color dataColor;
  final Color baseColor;
  final Map<DateTime, double> challenges;
  final DateTime? firstDate;
  final DateTime? lastDate;

  const ChallengePainter({
    required this.dataColor,
    required this.baseColor,
    required this.challenges,
    this.firstDate,
    this.lastDate,
  });

  Path triangle(Offset pos, Offset c1, Offset c2, Offset c3) {
    return Path()
      ..moveTo(pos.dx + c1.dx, pos.dy + c1.dy)
      ..lineTo(pos.dx + c2.dx, pos.dy + c2.dy)
      ..lineTo(pos.dx + c3.dx, pos.dy + c3.dy)
      ..lineTo(pos.dx + c1.dx, pos.dy + c1.dy);
  }

  void _drawXAxis(Canvas canvas, CoordinateSystem coord, List<DateTime> dates, Paint paint) {
    // Draw the X axis
    canvas.drawPath(
      triangle(
        Offset(coord.xAx.x, coord.xAx.y),
        Offset(-5.0, -5.0),
        Offset(5.0, 0),
        Offset(-5.0, 5.0),
      ),
      paint,
    );
    canvas.drawLine(
      Offset(coord.origin.x, coord.xAx.y),
      Offset(coord.xAx.x, coord.xAx.y),
      paint,
    );

    // Draw the X ticks
    final textStyle = TextStyle(color: paint.color, fontSize: 14);
    final dateFormat = DateFormat.MMMd();

    final span = DateTime.now().difference(coord.minX as DateTime).inDays;
    final tickDates = List.generate(span + 1, (index) {
      final date = DateTime.now().subtract(
        Duration(days: index),
      );
      return DateTime(date.year, date.month, date.day);
    }).where((date) => date.day == 1);

    tickDates.forEach((date) {
      // Draw xtick
      final x = coord.atX(date);
      canvas.drawLine(
        Offset(x, coord.xAx.y - 3),
        Offset(x, coord.xAx.y + 1),
        paint,
      );

      // Draw label
      final span = TextSpan(text: dateFormat.format(date), style: textStyle);
      final painter = TextPainter(
        text: span,
        textDirection: TextDirection.ltr,
      )..layout(
          minWidth: 0,
          maxWidth: (coord.xAx.x - coord.origin.x) / tickDates.length - 5,
        );

      painter.paint(
        canvas,
        Offset(
          x - painter.width / 2,
          coord.xAx.y + painter.height / 2 - 6,
        ),
      );
    });
  }

  void _drawYAxis(Canvas canvas, CoordinateSystem coord, List<double> loads, Paint paint) {
    // Draw the Y axis
    canvas.drawPath(
      triangle(
        Offset(coord.yAx.x, coord.yAx.y),
        Offset(0, -5),
        Offset(5, 5),
        Offset(-5, 5),
      ),
      paint,
    );
    canvas.drawLine(
      Offset(coord.yAx.x, coord.origin.y),
      Offset(coord.yAx.x, coord.yAx.y),
      paint,
    );

    // Draw the Y ticks
    final textStyle = TextStyle(color: paint.color, fontSize: 14);

    final minLoad = loads.fold<double>(loads.first, min);
    final maxLoad = loads.fold<double>(loads.last, max);

    final loadTicks = [
      min(minLoad, maxLoad - 5),
      maxLoad,
    ];

    loadTicks.forEach((tick) {
      // Draw xtick
      final y = coord.atY(tick);
      canvas.drawLine(
        Offset(coord.yAx.x - 3, y),
        Offset(coord.yAx.x + 1, y),
        paint,
      );

      // Draw label
      final span = TextSpan(text: tick.toStringAsFixed(0), style: textStyle);
      final painter = TextPainter(
        text: span,
        textDirection: TextDirection.ltr,
      )..layout(minWidth: 0, maxWidth: 30);

      painter.paint(
        canvas,
        Offset(
          coord.yAx.x - 5 - painter.width,
          y - painter.height / 2,
        ),
      );
    });
  }

  void _drawData(Canvas canvas, CoordinateSystem coord, Map<DateTime, double> data, Paint paint) {
    DateTime? lastDate = null;
    double? lastLoad = null;

    double? lastX = null;
    double? lastY = null;

    // Iterate through all the dates, sort to be able to connect
    final sortedDates = data.keys.toList()..sort();
    sortedDates.forEach((date) {
      final load = data[date];

      // Find the index for date and load
      final x = coord.atX(date);
      final y = coord.atY(load as num);

      // Paint the connector line
      if (lastDate != null && lastLoad != null) {
        var linePaint = Paint()
          ..style = paint.style
          ..strokeCap = paint.strokeCap
          ..strokeJoin = paint.strokeJoin
          ..color = paint.color;

        if (date.difference(lastDate!).inDays <= 2) {
          linePaint = linePaint..strokeWidth = 2.0;
        } else {
          linePaint = linePaint
            ..strokeWidth = 1.0
            ..color = Colors.grey;
        }
        canvas.drawLine(
          Offset(lastX!, lastY!),
          Offset(x, y),
          linePaint,
        );
      }

      // Paint the bullet for the load
      canvas.drawCircle(
        Offset(x, y),
        5.0,
        paint,
      );

      if (lastX != null && lastY != null) {
        canvas.drawCircle(
          Offset(lastX!, lastY!),
          5.0,
          paint,
        );
      }

      // Save last values
      lastX = x;
      lastY = y;
      lastDate = date;
      lastLoad = load;
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    final basePaint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..color = baseColor;

    final dataPaint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..color = dataColor;

    final coord = CoordinateSystem<DateTime, double>(
      data: challenges,
      size: size,
      minX: firstDate,
      maxX: lastDate,
    );

    _drawXAxis(canvas, coord, challenges.keys.toList(), basePaint);
    _drawYAxis(canvas, coord, challenges.values.toList(), basePaint);
    _drawData(canvas, coord, challenges, dataPaint);
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

    final data = List.generate(20, (index) => Random.secure().nextDouble()).asMap().map((i, v) {
      return MapEntry<DateTime, double>(
        DateTime.now().subtract(Duration(days: Random.secure().nextInt(4) + (4 * i))),
        100 * (0.6 + v * 0.4),
      );
    });

    final firstDate = DateTime(
      today.month > monthsShown ? today.year : today.year - 1,
      today.month > monthsShown ? today.month - monthsShown : 12 + today.month - monthsShown,
      1,
    );
    final lastDate = DateTime(today.year, today.month, today.day);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Text(
            "Completed Challenges",
            style: Theme.of(context).textTheme.headline5,
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (_, constraints) => Container(
                width: constraints.widthConstraints().maxWidth,
                height: constraints.heightConstraints().maxHeight,
                child: CustomPaint(
                  painter: ChallengePainter(
                    dataColor: Colors.green.shade600, //Theme.of(context).colorScheme.primary,
                    baseColor: Colors.black,
                    challenges: data,
                    firstDate: firstDate,
                    lastDate: lastDate,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
