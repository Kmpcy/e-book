import 'package:booksy/Features/Home/presentation/views/widgets/custom_text_field.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/serach_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextField(),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "   Search Result",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SearchResult(),
      ],
    );
  }
}
