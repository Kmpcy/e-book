import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.25 / 2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          image: const DecorationImage(
              image: AssetImage(Booksy.test), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
