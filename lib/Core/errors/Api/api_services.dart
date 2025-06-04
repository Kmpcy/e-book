import 'package:dio/dio.dart';

   class ApiServices {
  final String _baseUrl = "https://www.googleapis.com/books/v1/volumes?q=علم+نفس";
  final Dio dio;
  ApiServices({ required this.dio});

  Future<Map<String, dynamic>> get() async {
    var response = await dio.get(_baseUrl);
    return response.data;
  }
}
