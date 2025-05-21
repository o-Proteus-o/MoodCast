import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class DioFailure extends Failure {
  final DioExceptionType? type;
  final int? statusCode;

  DioFailure({required String message, this.type, this.statusCode})
    : super(message);

  factory DioFailure.fromDioException(DioException exception) {
    String message = "Something went wrong";

    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout";
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout";
        break;
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;
        if (statusCode != null) {
          message = _handleHttpError(statusCode);
        } else {
          message = "Received invalid status code";
        }
        break;
      case DioExceptionType.cancel:
        message = "Request was cancelled";
        break;
      case DioExceptionType.unknown:
        message = "Unknown error: ${exception.message}";
        break;
      default:
        message = exception.message ?? "Unexpected Dio error";
    }

    return DioFailure(
      message: message,
      type: exception.type,
      statusCode: exception.response?.statusCode,
    );
  }

  static String _handleHttpError(int statusCode) {
    switch (statusCode) {
      case 400:
        return "Bad request";
      case 401:
        return "Unauthorized";
      case 403:
        return "Forbidden";
      case 404:
        return "Not found";
      case 500:
        return "Internal server error";
      default:
        return "Unexpected error (Status code: $statusCode)";
    }
  }
}
