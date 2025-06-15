import 'package:booksy/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/presentation/Manager/SimilarBooks_cubit/similar_books_cubit.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_deatails_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.item});
  final Item item;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(
      context,
    ).fetchSimilarBooks(category:widget.item.volumeInfo?.categories?.first ?? "books");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BookDeatailsBody());
  }
}
