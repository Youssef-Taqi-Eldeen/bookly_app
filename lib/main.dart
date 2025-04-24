import 'package:bookly/Features/Splach/presentation/view/splach_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ).copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplachView(),
    );
  }
}
