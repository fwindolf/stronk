import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stronk/models/freezed.dart';

enum RepetitionType {
  SetRepetition,
  CircuitSetRepetition,
  ThreeToSeven,
  DoPause,
}

enum HoldType {
  Hold,
}

class ExecutionType {
  final dynamic type;

  const ExecutionType(this.type);

  static List<ExecutionType> get values => [
        ExecutionType(RepetitionType.SetRepetition),
        ExecutionType(RepetitionType.CircuitSetRepetition),
        ExecutionType(RepetitionType.ThreeToSeven),
        ExecutionType(RepetitionType.DoPause),
        ExecutionType(HoldType.Hold),
      ];

  String get name {
    switch (type) {
      case RepetitionType.SetRepetition:
        return "Set Repetition";
      case RepetitionType.CircuitSetRepetition:
        return "Circuit Set Repetition";
      case RepetitionType.ThreeToSeven:
        return "Three To Seven";
      case RepetitionType.DoPause:
        return "Do Pause Set";
      case HoldType.Hold:
        return "Hold";
      default:
        return "Invalid Type";
    }
  }

  String get short {
    switch (type) {
      case RepetitionType.SetRepetition:
        return "SR";
      case RepetitionType.CircuitSetRepetition:
        return "CSR";
      case RepetitionType.ThreeToSeven:
        return "3-7";
      case RepetitionType.DoPause:
        return "DP";
      case HoldType.Hold:
        return "HLD";
      default:
        return "??";
    }
  }

  String get description {
    switch (type) {
      case RepetitionType.SetRepetition:
        return "Do the exercise for a given number of sets and repetitions within each set";
      case RepetitionType.CircuitSetRepetition:
        return "Do the exercise for a given number of sets with reduced weights";
      case RepetitionType.ThreeToSeven:
        return "Repeat the exercise 3x, 4x, ..., 7x with short pause in between";
      case RepetitionType.DoPause:
        return "Do the exercise until exhaustion, pause and repeat until you finish all repetitions";
      case HoldType.Hold:
        return "Hold the exercise for a defined duration";
      default:
        return "Undefined type";
    }
  }

  Color get color {
    switch (type) {
      case RepetitionType.SetRepetition:
        return Colors.red.shade800;
      case RepetitionType.CircuitSetRepetition:
        return Colors.purple.shade800;
      case RepetitionType.ThreeToSeven:
        return Colors.orange.shade800;
      case RepetitionType.DoPause:
        return Colors.blue.shade800;
      case HoldType.Hold:
        return Colors.green.shade800;
      default:
        return Colors.grey.shade800;
    }
  }
}

class ExecutionController {
  static final ExecutionController _instance = ExecutionController._internal();
  final Map<dynamic, Function> _executionCreationFunction;

  factory ExecutionController.instance() => _instance;

  ExecutionController._internal() : _executionCreationFunction = {};

  void register(dynamic type, Function creationFunction) {
    _executionCreationFunction[type] = creationFunction;
  }

  void unregister(dynamic type) {
    _executionCreationFunction.remove(type);
  }

  Execution create(dynamic type, dynamic arguments) {
    try {
      final creationFunction = _executionCreationFunction[type];
      if (creationFunction == null) {
        throw Exception("Register Execution $type");
      }
      return creationFunction(arguments);
    } on Exception catch (e) {
      throw Exception("Could not create Execution $type: ${e.toString}");
    }
  }
}

abstract class Execution extends FreezedClass {
  Execution();

  ExecutionType get type;

  int get totalCount;
  double? get totalWeight;
  double get totalLoad;

  factory Execution.fromJson(Map<String, dynamic> json) => throw UnimplementedError();
  factory Execution.fromDocument(DocumentSnapshot doc) => throw UnimplementedError();

  factory Execution.create(dynamic type, Map<String, dynamic> json) {
    final types = List<dynamic>.from(RepetitionType.values) + List<dynamic>.from(HoldType.values);
    for (var el in types) {
      if (ExecutionType(el).name.toLowerCase().replaceAll(" ", "_") == type) {
        final controller = ExecutionController.instance();
        return controller.create(el, json);
      }
    }
    throw Exception("Could not create Equipment $type");
  }
}
