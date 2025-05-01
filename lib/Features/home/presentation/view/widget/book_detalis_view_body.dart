import 'package:bookly/Features/home/presentation/view/widget/book_action.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/view/widget/similar_books_list_view.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.268),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'The Jungle Book',
          style: Style.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle18.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 18,
        ),
        const BookAction(),
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Style.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
