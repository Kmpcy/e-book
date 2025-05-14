 import 'package:booksy/Features/Home/presentation/views/widgets/book_actions.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_detailed_app_bar.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_rate.dart';
 import 'package:booksy/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDeatailsBody extends StatelessWidget {
  const BookDeatailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BookDeatailsAppBar(),
          SizedBox(
              width: MediaQuery.of(context).size.height * 0.23,
              child: const CustomListViewItem()),
          const SizedBox(
            height: 20,
          ),
          Text(
            "The Jungle Book",
            style: Booksy.text30,
          ),
          Text("Rudyard Kipling",
            style: Booksy.text18.copyWith(
                fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
          
          ),
          const SizedBox(height: 10),
          BookRate(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 30),
          const BookActions(),
          const SizedBox(height: 40),
          Text("You can also like",style:Booksy.text16)
        ],
      ),
    );
  }
}
class RecomendedBooksListView extends StatelessWidget {
  const RecomendedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

