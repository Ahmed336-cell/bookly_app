import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating_row.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ficonduck.com%2Ficons%2F94312%2Fflutter&psig=AOvVaw2sh6GfbMz0CMK7SYDvGc29&ust=1707920767203000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOCWyubCqIQDFQAAAAAdAAAAABAJ",),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 5,
          count: 250,
        ),
        const SizedBox(
          height: 30,
        ),
        const BookAction(),
      ],
    );
  }
}
