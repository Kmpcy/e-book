import 'dart:developer';

import 'package:booksy/Features/Home/presentation/Manager/FeaturedBooks_cubit/featured_books_cubit.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,itemCount: state.items.length,
                itemBuilder: (context, index) {
                  log(
                      'Image URL: ${state.items[index].volumeInfo!.imageLinks?.thumbnail }');
                  return Padding(
                    padding: EdgeInsets.all(9.5),
                    child: CustomListViewItem(
                        imageUrl: state.items[index].volumeInfo!.imageLinks!
                                .thumbnail ??
                            'https://media.istockphoto.com/id/2150381137/photo/young-woman-using-mobile-phone-for-online-shopping-via-mobile-app-at-home-casual-business.jpg?s=1024x1024&w=is&k=20&c=mD3xKhNNg_8bd_Sy-036ScIBPhshK-Ow63IiW3yXCRw='),
                  );
                }),
          );
        }  else if (state is FeaturedBooksFailed) {
          return Center(
            child: Text(
              state.errorMessage,
              style: const TextStyle(color: Colors.red, fontSize: 16),
            ),
          );
        }else   {
          return const Center(child: CircularProgressIndicator());
        };
      
      },
    );
  }
}
