import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
          ),
          const SizedBox(
            width: 6.3,
          ),
          const Text(
            '4.8',
            style: Style.textStyle16,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            '245',
            style: Style.textStyle14.copyWith(
              color: const Color(0xff707070),
            ),
          ),
        ],
      ),
    );
  }
}
