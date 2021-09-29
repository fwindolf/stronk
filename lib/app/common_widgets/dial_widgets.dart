import 'dart:math';

import 'package:flutter/material.dart';

class Dial<T extends num> extends StatelessWidget {
  final Function(T) onUpdate;
  final T value;
  final T increment;
  final T? minv;
  final T? maxv;

  const Dial({
    required this.value,
    required this.onUpdate,
    required this.increment,
    this.minv,
    this.maxv,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 1,
          child: IconButton(
            iconSize: 24,
            onPressed: () => onUpdate(
              minv != null
                  ? max<num>(minv!, value - increment) as T
                  : value - increment as T,
            ),
            icon: Icon(Icons.remove),
            splashRadius: 20,
            padding: const EdgeInsets.all(4.0),
            constraints: BoxConstraints(),
          ),
        ),
        Flexible(
          flex: 1,
          child: Center(
            child: Text(
              value.toString(),
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: IconButton(
            iconSize: 24,
            onPressed: () => onUpdate(
              maxv != null
                  ? min<num>(maxv!, value + increment) as T
                  : value + increment as T,
            ),
            icon: Icon(Icons.add),
            splashRadius: 20,
            padding: const EdgeInsets.all(4.0),
            constraints: BoxConstraints(),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
