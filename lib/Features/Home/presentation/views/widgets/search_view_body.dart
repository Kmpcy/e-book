  import 'package:booksy/Features/Home/presentation/views/widgets/custom_text_field.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/serach_result.dart';
import 'package:flutter/material.dart';
 
class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child:   CustomTextField(),
        ),
        SearchResult(),
      ],
    );
  }
}



