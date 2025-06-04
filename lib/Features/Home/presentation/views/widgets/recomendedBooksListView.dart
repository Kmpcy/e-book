import 'package:booksy/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class RecomendedBooksListView extends StatelessWidget {
  const RecomendedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(5),
              child: CustomListViewItem(imageUrl: "https://media.istockphoto.com/id/2150381137/photo/young-woman-using-mobile-phone-for-online-shopping-via-mobile-app-at-home-casual-business.jpg?s=1024x1024&w=is&k=20&c=mD3xKhNNg_8bd_Sy-036ScIBPhshK-Ow63IiW3yXCRw=",),
            );
          }),
    );
  }
}
