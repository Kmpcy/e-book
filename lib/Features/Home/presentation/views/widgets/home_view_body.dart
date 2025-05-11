import 'package:booksy/Features/Home/presentation/views/widgets/book_list_view.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/custom_app_.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        Padding(
          padding: EdgeInsets.only(right: 250),
          child: Text("Best Seller", style: Booksy.mediumText),
        )
      ],
    );
  }
}
