
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_item.dart';
import 'custom_appbar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       CustomAppBar(),
        FeaturedBookListView(),
        SizedBox(height: 30,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text("Best Seller",
          style: Styles.textStyle18,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
          child: BestSellerListViewItem(),
        ),
      ],
    );
  }
}
