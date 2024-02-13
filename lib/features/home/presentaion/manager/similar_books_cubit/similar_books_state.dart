import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class SimilarBooksState extends Equatable{
  const SimilarBooksState();
  @override
  List<Object?> get props => [];
}

class SimilarBooksIntial extends SimilarBooksState{}
class SimilarBooksLoading extends SimilarBooksState{}
class SimilarBooksFailuer extends SimilarBooksState{
  final String errMessage;

  const SimilarBooksFailuer(this.errMessage);

}
class SimilarBooksSuccess extends SimilarBooksState{
  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);

}