import 'package:booksy/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_list_view.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/custom_app_.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
 
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const BookListView(),
        const SizedBox(
          height: 14,
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
        ),
        const Text("    Best Seller ✨",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        BestSellerListView()
      ],
    );
  }
}
