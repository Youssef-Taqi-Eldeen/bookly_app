import 'package:bookly/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/featured_book_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
