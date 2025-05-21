import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  BookRate({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxisAlignment, children: [
      const Icon(
        Icons.star,
        color: Colors.amber,
        size: 23,
      ),
      const SizedBox(width: 5),
      Text("4.5", style: Booksy.text14.copyWith(fontWeight: FontWeight.bold)),
      const SizedBox(width: 5),
      const Opacity(
          opacity: .6, child: const Text("(200)", style: Booksy.text14)),
    ]);
  }
}
