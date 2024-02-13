import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarListViewBooks extends StatelessWidget {
  const SimilarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ficonduck.com%2Ficons%2F94312%2Fflutter&psig=AOvVaw2sh6GfbMz0CMK7SYDvGc29&ust=1707920767203000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOCWyubCqIQDFQAAAAAdAAAAABAJ",),
            );
          }),
    );
  }
}
