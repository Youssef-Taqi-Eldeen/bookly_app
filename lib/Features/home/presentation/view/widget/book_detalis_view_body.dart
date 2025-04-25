import 'package:bookly/Features/home/presentation/view/widget/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: const CustomBookImage(),
        ),
      ],
    );
  }
}
