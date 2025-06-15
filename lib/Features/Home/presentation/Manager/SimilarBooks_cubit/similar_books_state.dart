part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksFailed extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksFailed( this.errorMessage);
}

final class SimilarBooksSuccess extends SimilarBooksState {
final List<Item> items;

  const SimilarBooksSuccess(this.items);

}
