import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43,),
          
          const Text("The Jungle Book" ,
            style: Styles.textStyle30,
          ),
          const SizedBox(height: 6,),

          Opacity(
            opacity: 0.7,
            child: Text("Rudyard Kipling" ,
              style: Styles.textStyle18.
              copyWith(fontStyle: FontStyle.italic , fontWeight: FontWeight.w500),
            ),
          ),


        ],

      ),
    );
  }
}

