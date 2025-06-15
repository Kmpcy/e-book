part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchFailed extends SearchState {
  final String errorMessage;

  const SearchFailed(this.errorMessage);


}
final class SearchSuccess extends SearchState {
  final List<Item> items;

  const SearchSuccess(this.items);

}
