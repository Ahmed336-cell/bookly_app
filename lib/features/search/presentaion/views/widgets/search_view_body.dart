import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_textfeild.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomTextFeild(),
        ),
        SizedBox(height: 16,),
        Text(
          "Search Result",
          style: Styles.textStyle18,
        ),
        SizedBox(height: 16,),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            // child: BookListViewItem(),
            child: Text("helllo"),
          );
        });
  }
}

