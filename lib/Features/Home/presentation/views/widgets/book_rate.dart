import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 24,
      ),
      SizedBox(width: 5),
      Text("4.5", style: Booksy.text14),
      SizedBox(width: 5),
      Text("(200)", style: Booksy.text14),
    ]);
  }
}
