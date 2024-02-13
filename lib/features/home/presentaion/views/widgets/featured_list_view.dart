import 'package:bookly/core/common/custom_error_widget.dart';
import 'package:bookly/core/common/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <FeaturedBooksCubit,FeaturedBooksState>(

      builder: (context,state){
        if(state is FeaturedBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,),
                  );
                }),
          );
        }else if(state is FeaturedBooksFailuer){
          return Center(child: CustomErrorWidget(errMessage: state.errMessage));
        }else{
          return const CustomLoadingIndicator();
        }
      }
    );
  }
  }

