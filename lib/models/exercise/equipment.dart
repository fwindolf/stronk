import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stronk/models/freezed.dart';

import 'instruction.dart';

part 'equipment.freezed.dart';
part 'equipment.g.dart';

class EquipmentController {
  static final EquipmentController _instance = EquipmentController._internal();
  final Map<EquipmentType, Function> _equipmentCreationFunctions;

  factory EquipmentController.instance() => _instance;

  EquipmentController._internal() : _equipmentCreationFunctions = {};

  void register(EquipmentType type, Function creationFunction) {
    _equipmentCreationFunctions[type] = creationFunction;
  }

  void unregister(EquipmentType type) {
    _equipmentCreationFunctions.remove(type);
  }

  Equipment create(EquipmentType type, dynamic arguments) {
    try {
      final creationFunction = _equipmentCreationFunctions[type];
      if (creationFunction == null) {
        throw Exception("Register Equipment $type");
      }
      return creationFunction(arguments);
    } on Exception catch (e) {
      throw Exception("Could not create Equipment $type: ${e.toString}");
    }
  }
}

enum EquipmentType {
  Band,
  Dumbbells,
  Barbells,
  Bodyweight,
  None,
}

enum BandMode {
  Loop,
  Double,
}

enum SideMode {
  Single,
  Both,
  Alternating,
}

abstract class Equipment extends FreezedClass {
  List<Instruction> get instructions;

  factory Equipment.fromJson(Map<String, dynamic> json) => throw UnimplementedError();
  factory Equipment.fromDocument(DocumentSnapshot doc) => throw UnimplementedError();

  factory Equipment.create(String type, Map<String, dynamic> json) {
    for (var el in EquipmentType.values) {
      if (el.toString().toLowerCase().contains(type)) {
        final controller = EquipmentController.instance();
        return controller.create(el, json);
      }
    }
    throw Exception("Could not create Equipment $type");
  }
}

@freezed
class BandEquipment with _$BandEquipment {
  static final type = EquipmentType.Band;

  const BandEquipment._();

  @Implements(Equipment)
  factory BandEquipment({
    String? id,
    required List<Instruction> instructions,
    required BandMode mode,
  }) = _BandEquipment;

  factory BandEquipment.fromJson(Map<String, dynamic> json) => _$BandEquipmentFromJson(json);

  factory BandEquipment.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return BandEquipment.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}

var bC = EquipmentController.instance()
  ..register(EquipmentType.Band, (args) => BandEquipment.fromJson(args));

@freezed
class DumbbellEquipment with _$DumbbellEquipment {
  const DumbbellEquipment._();

  @Implements(Equipment)
  factory DumbbellEquipment({
    String? id,
    required List<Instruction> instructions,
    required SideMode mode,
  }) = _DumbbellEquipment;

  factory DumbbellEquipment.fromJson(Map<String, dynamic> json) =>
      _$DumbbellEquipmentFromJson(json);

  factory DumbbellEquipment.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return DumbbellEquipment.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}

var dC = EquipmentController.instance()
  ..register(EquipmentType.Dumbbells, (args) => DumbbellEquipment.fromJson(args));
