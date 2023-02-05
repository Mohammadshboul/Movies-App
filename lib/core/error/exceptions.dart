import 'package:movies/core/network/error_message_model.dart';

class ServerEception implements Exception {
  final ErrorMessageModel errorMessageModel;
  const ServerEception({
    required this.errorMessageModel,
  });
}

class LocalDataBaseEception implements Exception {
  final String message;
  LocalDataBaseEception({
    required this.message,
  });
}
