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
    final books = await homeRepo.fetchNewsBooks();
    books.fold(
      (failure) => emit(NewsBookFailure(errMessage: failure.errMessage)),
      (books) => emit(NewsBookSuccess(books: books)),
    );
  }
}
