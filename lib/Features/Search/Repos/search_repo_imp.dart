import 'package:booksy/Core/errors/Api/api_services.dart';
import 'package:booksy/Core/errors/failures.dart';
import 'package:booksy/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Search/Repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo{
  final ApiServices apiServices;

  SearchRepoImp({required this.apiServices});
  @override
  Future<Either<Failures, List<Item>>> fetshSearchBooks({required String query}) async {
    try {
      var data = await apiServices.get(endpoint: "volumes?q=$query");

      BookModel bookModel = BookModel.fromJson(data);
      return Right(bookModel.items ?? []);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
  }
