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

  final String tempImage =
      'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1546267498i/43419104.jpg';
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth * 0.25;
    final imageHeight = imageWidth * 1.3;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SizedBox(
        height: 140, // ارتفاع ثابت لضمان مساحة رأسية كافية
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // الصورة
            SizedBox(
              width: imageWidth,
              height: imageHeight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AspectRatio(
                  aspectRatio: 3 / 3.9,
                  child: InkWell(
                    onTap: () {
                      context.go(AppRouter.animationView, extra: index);
                    },
                    child: Hero(
                      tag: '$index',
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
              ),
            ),
            const SizedBox(width: 16),
            // المعلومات
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // لتجنب مشاكل الارتفاع
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // العنوان
                    Text(
                      item.volumeInfo?.title ?? "Unknown Title",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: Booksy.text20,
                    ),
                    const SizedBox(height: 4),
                    // المؤلف
                    Text(
                      item.volumeInfo?.authors?.isNotEmpty == true
                          ? item.volumeInfo!.authors!.first
                          : "Unknown Author",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Booksy.text14,
                    ),
                    const SizedBox(height: 10),
                    // السعر و BookRate
                    Row(
                      mainAxisSize: MainAxisSize
                          .min, // تغيير من mainAxisAlignment لتقليل المساحة
                      children: [
                        Text(
                          item.saleInfo?.retailPrice?.amount.toString() ??
                              "Free",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1, // السعر على سطر واحد
                          style: Booksy.text20.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                            width: 16), // تقليل المسافة لتوفير المساحة
                        Expanded(child: BookRate()), // جعل BookRate مرن
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
