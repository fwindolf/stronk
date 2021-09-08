import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataTransferException implements Exception {
  final String? message;

  const DataTransferException({this.message = "Data transfer failed!"});

  String toString() => 'DataTransferException [message $message]';
}

class AuthenticationException implements Exception {
  final String? message;
  final String? userId;

  const AuthenticationException({this.message = "Authentication failed!", this.userId = null});

  String toString() => 'AuthenticationException [message $message, user $userId]';
}
