import 'package:booksy/Features/Home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            text: "19.99€",
            textColor: Colors.black,
          )),
          Expanded(
              child: CustomButton(
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
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