import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const CustomAppBar(),
        FeaturedBookListView(),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text("Best Seller",
          style: Styles.titleMedium,
          ),
        )
      ],
    );
  }
}
