import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImo implements HomeRepo{
  ApiService apiService;

  HomeRepoImo(this.apiService);

  @override
  Future<Either<Faliuer, List<BookModel>>> fetchNewsedBooks() async{

    try{
      var data = await apiService.get(endpoint: "volumes?Filtering=free-ebooks&q=subject:Programming&sorting=newsed");
      List <BookModel>books = [];
      for(var items in data['items']){
        books.add(BookModel.fromJson(items));
      }

      return right(books);

    }on Exception catch(e){
      return Left(ServerFailuer());
    }
  }

  @override
  Future<Either<Faliuer, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

}