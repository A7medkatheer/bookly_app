import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'news_book_state.dart';

class NewsBookCubit extends Cubit<NewsBookState> {
  NewsBookCubit(this.homeRepo) : super(NewsBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsBooks() async {
    emit(NewsBookLoading());
    try {
      final books = await homeRepo.fetchNewsBooks();
      emit(books.fold(
        (failure) => NewsBookFailure(errMessage: failure.toString()),
        (bookList) => NewsBookSuccess(books: bookList),
      ));
    } catch (e) {
      emit(NewsBookFailure(errMessage: e.toString()));
    }
  }
}
