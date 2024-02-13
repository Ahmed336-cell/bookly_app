import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImo implements HomeRepo {
  ApiService apiService;

  HomeRepoImo(this.apiService);

  @override
  Future<Either<Faliuer, List<BookModel>>> fetchNewsedBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
          "volumes?Filtering=free-ebooks&q=computer science&Sorting=newest");
      List<BookModel> books = [];
      for (var items in data['items']) {
        books.add(BookModel.fromJson(items));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Faliuer, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
          "volumes?Filtering=free-ebooks&q=subject:Programming");
      List<BookModel> books = [];
      for (var items in data['items']) {
        books.add(BookModel.fromJson(items));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Faliuer, List<BookModel>>> fetchSimilarBook(
      {required String categroy}) async {
    try {
      var data = await apiService.get(
          endpoint:
          "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting:relevance");
      List<BookModel> books = [];
      for (var items in data['items']) {
        books.add(BookModel.fromJson(items));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
