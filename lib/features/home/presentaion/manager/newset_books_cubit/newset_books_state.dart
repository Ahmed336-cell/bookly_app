import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class NewsetBooksState extends Equatable{
  const NewsetBooksState();
  @override
  List<Object?> get props => [];
}

class NewsetBooksIntial extends NewsetBooksState{}
class NewsetBooksLoading extends NewsetBooksState{}
class NewsetBooksFailuer extends NewsetBooksState{
  final String errMessage;

     const NewsetBooksFailuer(this.errMessage);

}
class NewsetBooksSuccess extends NewsetBooksState{
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);

}