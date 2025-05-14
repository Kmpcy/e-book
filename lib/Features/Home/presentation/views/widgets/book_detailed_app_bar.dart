import 'package:booksy/Core/App_Router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDeatailsAppBar extends StatelessWidget {
  const BookDeatailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                context.go(AppRouter.homeView);
              },
              icon: const Icon(Icons.arrow_back_ios_sharp)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined, size: 30)),
        ],
      ),
    );
  }
}