import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;



  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    try {
      final books = await homeRepo.fetchFeaturedBooks();
      emit(books.fold(
        (failure) => FeaturedBooksFailure(errMessage: failure.toString()),
        (bookList) => FeaturedBooksSuccess(books: bookList),
      ));
    } catch (e) {
      emit(FeaturedBooksFailure(errMessage: e.toString()));
    }
  }
}
