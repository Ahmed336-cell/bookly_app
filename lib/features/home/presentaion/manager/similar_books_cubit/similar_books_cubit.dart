import 'package:bookly/features/home/presentaion/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState>{
  SimilarBooksCubit(this.homeRepo):super(SimilarBooksIntial());

  final HomeRepo homeRepo;

  Future<void>fetchSimilarBooks({required String category})async{
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBook(categroy:category);
    result.fold((failure){
      emit(SimilarBooksFailuer(failure.errMessage));
    }, (books){
      emit(SimilarBooksSuccess(books));
    });
  }
  
}