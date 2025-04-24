import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/featured_book_list_view.dart';
import 'package:bookly/core/utils/asstes.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              left: 12,
            ),
            child: Text(
              'Best Seller',
              style: Style.textStyle18,
            ),
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AsstesData.testImage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
