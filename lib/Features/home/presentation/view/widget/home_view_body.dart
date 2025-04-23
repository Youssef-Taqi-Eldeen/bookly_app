import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/featured_book_list_view.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 24,
          ),
          child: Text(
            'Best Seller',
            style: Style.titleMedium,
          ),
        ),
      ],
    );
  }
}
