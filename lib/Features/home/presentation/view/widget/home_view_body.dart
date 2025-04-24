import 'package:bookly/Features/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/featured_book_list_view.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              Padding(
                padding: EdgeInsets.only(
                  top: 35,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Best Seller',
                    style: Style.textStyle18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
