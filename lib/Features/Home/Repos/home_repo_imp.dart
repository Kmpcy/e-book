import 'package:booksy/Core/errors/Api/api_services.dart';
import 'package:booksy/Core/errors/failures.dart';
import 'package:booksy/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booksy/Features/Home/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImp( {required this.apiServices});
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiServices.get(endpoint: "q=علم+نفس");

      List<BookModel> books = [];
      books.add(BookModel.fromJson(data));
      return Right(books);
    }  catch (e) {
      if (e is DioException){

        return Left(ServerFailure.fromDioException(e));
      }else {return Left(ServerFailure(e.toString()));}
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() async{
    try {
      var data = await apiServices.get(endpoint: "q=علم +نفس+حديث");

      List<BookModel> books = [];
      books.add(BookModel.fromJson(data));
      return Right(books);
    }  catch (e) {
      if (e is DioException){

        return Left(ServerFailure.fromDioException(e));
      }else {return Left(ServerFailure(e.toString()));}
    }
  }
}
