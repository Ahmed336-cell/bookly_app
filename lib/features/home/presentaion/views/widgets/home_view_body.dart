
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_listview.dart';
import 'custom_appbar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
      SliverToBoxAdapter(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBookListView(),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Best Seller",
                style: Styles.textStyle18,
              ),
            ),


          ],
        ) ,
      ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}



