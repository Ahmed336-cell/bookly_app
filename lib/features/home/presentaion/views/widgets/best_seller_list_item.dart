import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage(AssetsData.test_image)
                  )
              ),
            ),
          ),
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
