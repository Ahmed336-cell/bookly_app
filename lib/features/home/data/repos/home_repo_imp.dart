import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImo implements HomeRepo{
  @override
  Future<Either<Faliuer, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Faliuer, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

}