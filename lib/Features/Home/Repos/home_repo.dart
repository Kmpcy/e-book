import 'package:booksy/Core/errors/failures.dart';
import 'package:booksy/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future <Either< Failures,List<Item>>> fetchFeatureBooks();
Future <Either< Failures,List<Item>>> fetchBestSellerBooks();
}
