import 'package:bookly/Features/home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/featured_book_list_view.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.only(
              top: 35,
            ),
            child: Text(
              'Best Seller',
              style: Style.textStyle18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
