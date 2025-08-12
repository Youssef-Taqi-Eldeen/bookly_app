import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate from server');
      case DioExceptionType.badResponse:
        final response = dioError.response;
        return ServerFailure.fromResponse(
          response?.statusCode ?? 0,
          response?.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with API server');
      case DioExceptionType.unknown:
        if (dioError.error is SocketException) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return ServerFailure(
            response?['error']?['message'] ?? 'Unauthorized request');
      case 404:
        return ServerFailure('Your request was not found, please try later');
      case 500:
        return ServerFailure('Internal server error, please try later');
      default:
        return ServerFailure('Oops! There was an error, please try again');
    }
  }
}

// import 'package:dio/dio.dart';

// abstract class Failure {
//   final String errMessage;

//   Failure(this.errMessage);
// }

// class ServerFailure extends Failure {
//   ServerFailure(super.errMessage);

//   factory ServerFailure.fromDioError(DioException  dioError) {
//     switch (dioError.type) {
//       case DioExceptionType.connectionTimeout:
//         return ServerFailure('Connection time out with ApiServer');
//       case DioExceptionType.sendTimeout:
//         return ServerFailure('Send time out with ApiServer');
//       case DioExceptionType.receiveTimeout:
//         return ServerFailure('Receive time out with ApiServer');
//       case DioExceptionType.badCertificate:
//       //        return ServerFailure('Bad certificate from server');
//       case DioExceptionType.badResponse:
//         return ServerFailure.fromResponse(
//             dioError.response!.statusCode, dioError.response!.data);
//       case DioExceptionType.cancel:
//         return ServerFailure('Requrst to ApiServer was canceld');
//       case DioExceptionType.connectionError:
//       // TODO: Handle this case.
//       case DioExceptionType.unknown:
//         if (dioError.message!.contains('SocketException')) {
//           return ServerFailure('No Internet Connection');
//         }
//         return ServerFailure('UnExpected error, Please try again');
//       default:
//         return ServerFailure('Oop There was an Error, Please try again');
//     }
//   }

//   factory ServerFailure.fromResponse(int statusCode, dynamic response) {
//     if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
//       return ServerFailure(response['error']['message']);
//     } else if (statusCode == 404) {
//       return ServerFailure('Your request not found, Please try later!');
//     } else if (statusCode == 500) {
//       return ServerFailure('Internal server error, Please try later');
//     } else {
//       return ServerFailure('Oop There was an Error, Please try again');
//     }
//   }
// }
