import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl = "https://www.googleapis.com/books/v1/volumes";
  final Dio dio;
  ApiServices({ required this.dio});

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get(_baseUrl + endpoint);
    return response.data;
  }
}
