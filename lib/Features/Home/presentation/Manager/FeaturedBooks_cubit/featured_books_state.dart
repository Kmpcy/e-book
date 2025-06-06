part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksFailed extends FeaturedBooksState {
 final String errorMessage;

  const FeaturedBooksFailed(this.errorMessage);

}
final class FeaturedBooksSuccess extends FeaturedBooksState {

 final  List<Item> items;
  const FeaturedBooksSuccess(this.items);
}

