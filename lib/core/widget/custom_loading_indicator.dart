import 'package:flutter/material.dart';

class CustomLoadingIndicater extends StatelessWidget {
  const CustomLoadingIndicater({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
