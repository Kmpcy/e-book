import 'package:booksy/Features/Home/presentation/views/widgets/book_rate.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: SizedBox(
            height: 135,
            child: AspectRatio(
              aspectRatio: 2.85 / 4.5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  image: const DecorationImage(
                      image: AssetImage(Booksy.test), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  width: 200,
                  child: Text("Harry Potter and the Goblet of Fire",
                      style: Booksy.text20)),
              const Text("J.K. Rowling", style: Booksy.text14),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("19.99 €",
                        style: Booksy.text20.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 20)),
                  ),
                  const SizedBox(width: 45),
                  const BookRate(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
