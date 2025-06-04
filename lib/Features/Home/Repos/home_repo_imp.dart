import 'package:booksy/Core/errors/Api/api_services.dart';
import 'package:booksy/Core/errors/failures.dart';
import 'package:booksy/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImp( {required this.apiServices});
  @override
  Future<Either<Failures, List<Item>>> fetchFeatureBooks() async {
    try {
      var data = await apiServices.get();

         BookModel bookModel = BookModel.fromJson(data);
      return Right(bookModel.items ?? []);
    }  catch (e) {
      if (e is DioException){

        return Left(ServerFailure.fromDioException(e));
      }else {return Left(ServerFailure(e.toString()));}
    }
  }
  
  @override
  Future<Either<Failures, List<Item>>>fetchBestSellerBooks () {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  // @override
  // Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() async{
  //   try {
  //     var data = await apiServices.get(endpoint: "q=علم +نفس+حديث");

  //     List<BookModel> books = [];
  //     books.add(BookModel.fromJson(data));
  //     return Right(books);
  //   }  catch (e) {
  //     if (e is DioException){

  //       return Left(ServerFailure.fromDioException(e));
  //     }else {return Left(ServerFailure(e.toString()));}
  //   }
  // }
}
