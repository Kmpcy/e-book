import 'package:booksy/Features/Home/presentation/views/widgets/custom_text_field.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/serach_result.dart';
import 'package:booksy/Features/Search/Presentaion/Manager/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SerachViewBody extends StatelessWidget {
   SerachViewBody({super.key});
 final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(

            onSumitted:(query){
BlocProvider.of<SearchCubit>(context).fetchSearchedBooks(query);
            } ,
            controller:controller ,

          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "   Search Result",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SearchResult(),
      ],
    );
  }
}
