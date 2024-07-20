import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService(Dio dio) : _dio = dio;
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
      final response = await _dio.get('$_baseUrl$endPoint');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
