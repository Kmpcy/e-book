import 'package:bloc/bloc.dart';
import 'package:booksy/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/Repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerCubitState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerCubitLoading());

    var result = await homeRepo.fetchBestSellerBooks();

    result.fold(
      (failure) {
        emit(BestSellerCubitFailed(erorrMessage: failure.errorMessage));
      },
      (items) {
        emit(BestSellerCubitSuccess(items: items));
      },
    );
  }
}
