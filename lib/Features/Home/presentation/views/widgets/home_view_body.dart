import 'package:booksy/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_list_view.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/custom_app_.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        BookListView(),
        SizedBox(
          height: 14,
        ),
        Divider(
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: EdgeInsets.only(right: 220, top: 5),
          child: Text("Best Seller ✨",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        BestSellerListView()
      ],
    );
  }
}

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
