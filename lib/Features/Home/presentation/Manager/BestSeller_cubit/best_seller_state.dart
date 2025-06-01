part of 'best_seller_cubit.dart';

sealed class BestSellerCubitState extends Equatable {
  const BestSellerCubitState();

  @override
  List<Object> get props => [];
}

final class BestSellerCubitInitial extends BestSellerCubitState {}

final class BestSellerCubitLoading extends BestSellerCubitState {}

final class BestSellerCubitFailed extends BestSellerCubitState {
  final String erorrMessage;

  const BestSellerCubitFailed({required this.erorrMessage});
}

final class BestSellerCubitSuccess extends BestSellerCubitState {
  final List<BookModel> books;

  const BestSellerCubitSuccess({required this.books});

  
}
