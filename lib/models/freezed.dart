import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FreezedClass {
  Map<String, dynamic> toJson();
  Map<String, dynamic> toDocument();
}
