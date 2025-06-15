 import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_rate.dart';
import 'package:booksy/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
 
class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key,   required this.item});
   
  final Item item;

  final String tempImage =
      'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1546267498i/43419104.jpg';
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth * 0.25;
    final imageHeight = imageWidth * 1.3;

    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 6),
      child: SizedBox(
        height: 140,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: imageWidth,
              height: imageHeight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AspectRatio(
                  aspectRatio: 3 / 3.9,
                  child: CachedNetworkImage(
                    imageUrl:
                        item.volumeInfo?.imageLinks?.thumbnail ?? tempImage,
                    fit: BoxFit.fill,
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
            const SizedBox(width: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.volumeInfo?.title ?? "Unknown Title",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Booksy.text30.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.volumeInfo?.authors?.isNotEmpty == true
                          ? item.volumeInfo!.authors!.first
                          : "Unknown Author",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Booksy.text14,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.saleInfo?.retailPrice?.amount != null
                              ? '\$${item.saleInfo!.retailPrice!.amount.toString()}'
                              : 'Free',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Booksy.text20.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                            child: BookRate(
                          count: item.volumeInfo!.pageCount ?? 100,
                          rate: item.volumeInfo!.pageCount! ~/ 5 ?? 5,
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
