import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());

  final SearchRepo searchRepo;

  Future<void> featuredSearchBooks({required String category}) async {
    emit(SearchBookLoading());

    final books = await searchRepo.fetchSearchBook(category: category);
    books.fold(
      (failure) => emit(SearchBookFailure(errMessage: failure.errMessage)),
      (books) => emit(SearchBookSuccess(books: books)),
    );
  }
}
