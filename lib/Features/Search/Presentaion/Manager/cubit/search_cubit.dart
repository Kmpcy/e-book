import 'package:bloc/bloc.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Search/Repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks(String query) async {
    emit(SearchLoading());

    final result = await searchRepo.fetshSearchBooks(query: query);
    result.fold(
      (failure) {
        emit(SearchFailed(failure.errorMessage));
      },
      (books) {
        emit(SearchSuccess(books));
      },
    );
  }
}
