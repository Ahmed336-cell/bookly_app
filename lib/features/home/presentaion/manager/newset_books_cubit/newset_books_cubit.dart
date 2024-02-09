import 'package:bookly/features/home/presentaion/manager/newset_books_cubit/newset_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState>{
  NewsetBooksCubit(this.homeRepo):super(NewsetBooksIntial());

  final HomeRepo homeRepo;

  Future<void>fetchNewsetBooks()async{
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewsedBooks();
    result.fold((failure){
      emit(NewsetBooksFailuer(failure.errMessage));
    }, (books){
      emit(NewsetBooksSuccess(books));
    });
  }

}