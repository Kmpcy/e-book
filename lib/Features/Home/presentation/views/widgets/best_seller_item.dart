import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_rate.dart';
import 'package:booksy/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.index, required this.item});
  final int index;
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: SizedBox(
            height: 135,
            child: AspectRatio(
              aspectRatio: 2.85 / 4.5,
              child: InkWell(
                onTap: () {
                  context.go(AppRouter.animationView, extra: index);
                },
                child: Hero(
                  tag: '$index ',
                  child: CachedNetworkImage(
                    imageUrl:item.volumeInfo!.imageLinks!
                                .thumbnail ??
                            'https://media.istockphoto.com/id/2150381137/photo/young-woman-using-mobile-phone-for-online-shopping-via-mobile-app-at-home-casual-business.jpg?s=1024x1024&w=is&k=20&c=mD3xKhNNg_8bd_Sy-036ScIBPhshK-Ow63IiW3yXCRw=',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(
                        color: Booksy.kPrimaryColor,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  width: 200,
                  child: Text("Harry Potter and the Goblet of Fire",
                      style: Booksy.text20)),
              const Text("J.K. Rowling", style: Booksy.text14),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("19.99 €",
                        style: Booksy.text20.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 20)),
                  ),
                  const SizedBox(width: 45),
                  BookRate(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
