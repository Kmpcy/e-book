import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  context.go(AppRouter.bookDetailsView);
                },
                child: Text("data"));
            
                //  BestSellerItem(index: index));
          }),
    );
  }
}