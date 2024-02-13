import 'package:bookly/core/common/custom_error_widget.dart';
import 'package:bookly/core/common/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarListViewBooks extends StatelessWidget {
  const SimilarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder: (context,state){
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??"",),
                  );
                }),
          );
        }else if(state is SimilarBooksFailuer){
          return Center(child: CustomErrorWidget(errMessage: state.errMessage,),);
        }else{
          return const Center(child: CustomLoadingIndicator(),);
        }
      },

    );
  }
}
