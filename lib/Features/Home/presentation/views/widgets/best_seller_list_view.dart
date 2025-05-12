import 'package:booksy/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const BestSellerItem();
          }),
    );
  }
}
