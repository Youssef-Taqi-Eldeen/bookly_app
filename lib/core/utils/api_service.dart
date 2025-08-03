import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/volumes?';
  final Dio _dio;
  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endUrl}) async {
    var response = await _dio.get('$_baseUrl$endUrl');
    return response.data;
  }
}
