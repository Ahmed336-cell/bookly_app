import 'package:bookly/core/common/custom_error_widget.dart';
import 'package:bookly/core/common/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manager/newset_books_cubit/newset_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit,NewsetBooksState>(
      builder:(context,state){
        if(state is NewsetBooksSuccess){
          return   ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: BookListViewItem(bookModel: state.books[index],),
                );
              }
          );
        }else if(state is NewsetBooksFailuer){
          return Center(child: CustomErrorWidget(errMessage: state.errMessage,),
          );
        }else{
          return const Center(child: CustomLoadingIndicator(),);
        }

      }


    );
  }
}
