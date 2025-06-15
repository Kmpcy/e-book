import 'package:booksy/Core/errors/Api/api_services.dart';
import 'package:booksy/Core/errors/failures.dart';
import 'package:booksy/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImp({required this.apiServices});
  @override
  Future<Either<Failures, List<Item>>> fetchFeatureBooks() async {
    try {
      var data = await apiServices.get(endpoint: "volumes?q=علم+نفس");

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

  @override
  Future<Either<Failures, List<Item>>> fetchBestSellerBooks() async {
    try {
      var data = await apiServices.get(endpoint: "volumes?q=novels");

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

  @override
  Future<Either<Failures, List<Item>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data =
          await apiServices.get(endpoint: "volumes?q=books&Sorting=relevance");

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
