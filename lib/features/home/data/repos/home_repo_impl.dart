import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(
    this.apiService,
  );
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=promramming&filtering=free_ebooks',
        // endPoint: 'volumes?q=promramming',
      );

      List<BookModel> newsBooks = [];
      for (var item in data['items']) {
        newsBooks.add(BookModel.fromJson(item));
      }
      return Right(newsBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure(e.error.toString()));
      }
    }
    return left(ServerFailure('Server Failure'));
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var jsonData = await apiService.get(
          endPoint: 'volumes?q=computer&filtering=free_ebooks&sorting=newest');

      List<BookModel> books = [];
      for (var item in jsonData['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure(e.error.toString()));
      }
    }
    return left(ServerFailure('Server Failure'));
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async{
try {
      var jsonData = await apiService.get(
          endPoint: 'volumes?q=computer&filtering=free_ebooks&sorting=relevance');

      List<BookModel> books = [];
      for (var item in jsonData['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure(e.error.toString()));
      }
    }
    return left(ServerFailure('Server Failure'));
  }


    
  
}
