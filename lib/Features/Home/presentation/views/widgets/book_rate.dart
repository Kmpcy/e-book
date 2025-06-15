import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  BookRate(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.center,
      required this.rate,
      required this.count});
  MainAxisAlignment mainAxisAlignment;
  final int rate;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxisAlignment, children: [
      const Icon(
        Icons.star,
        color: Colors.amber,
        size: 23,
      ),
      const SizedBox(width: 5),
      Text(rate.toString(),
          style: Booksy.text14.copyWith(fontWeight: FontWeight.bold)),
      const SizedBox(width: 5),
      Opacity(opacity: .6, child: Text("($count)" , style: Booksy.text14)),
    ]);
  }
}
