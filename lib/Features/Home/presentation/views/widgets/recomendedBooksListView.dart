import 'package:booksy/Features/Home/presentation/Manager/SimilarBooks_cubit/similar_books_cubit.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  final String tempImage =
      "https://media.istockphoto.com/id/2150381137/photo/young-woman-using-mobile-phone-for-online-shopping-via-mobile-app-at-home-casual-business.jpg?s=1024x1024&w=is&k=20&c=mD3xKhNNg_8bd_Sy-036ScIBPhshK-Ow63IiW3yXCRw=";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksFailed) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  final book = state.items[index];
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: CustomListViewItem(
                      imageUrl:
                          book.volumeInfo?.imageLinks?.thumbnail ?? tempImage,
                    ),
                  );
                }),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
