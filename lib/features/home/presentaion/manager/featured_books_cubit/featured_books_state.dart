import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBooksState extends Equatable{
  const FeaturedBooksState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FeaturedBooksIntial extends FeaturedBooksState{}
class FeaturedBooksLoading extends FeaturedBooksState{}
class FeaturedBooksFailuer extends FeaturedBooksState{
  final String errMessage;

const  FeaturedBooksFailuer(this.errMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState{
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}