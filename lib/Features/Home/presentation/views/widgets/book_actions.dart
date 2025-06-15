import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            text: item.saleInfo?.retailPrice?.amount != null
                ? '\$${item.saleInfo!.retailPrice!.amount.toString()}'
                : 'Free',
            textColor: Colors.black,
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
              final Uri url = Uri.parse(item.accessInfo?.webReaderLink ??
                  item.volumeInfo?.previewLink ??
                  "https://play.google.com/books/reader?id=lQB2DwAAQBAJ&pg=GBS.PP1&hl=&source=gbs_api");
              if (await canLaunchUrl(url)) {
                await launchUrl(url,);
              }
            },
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            text: "Free preview",
            textColor: Colors.white,
          )),
        ],
      ),
    );
  }
}
