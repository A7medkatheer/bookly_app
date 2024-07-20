part of 'news_book_cubit.dart';

sealed class NewsBookState extends Equatable {
  const NewsBookState();

  @override
  List<Object> get props => [];
}

final class NewsBookInitial extends NewsBookState {}

final class NewsBookLoading extends NewsBookState {}

final class NewsBookSuccess extends NewsBookState {
  final List<BookModel> books;

  const NewsBookSuccess({required this.books});
}

final class NewsBookFailure extends NewsBookState {
  final String errMessage;

  const NewsBookFailure({required this.errMessage});
}
