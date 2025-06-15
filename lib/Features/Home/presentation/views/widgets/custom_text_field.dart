
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
    CustomTextField({
    super.key, required this.onSumitted,required this.controller,
  });
 final void Function(String) onSumitted ;
   TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted:onSumitted, 
      controller: controller,
        decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      hintText: 'Search',
      suffixIcon: const Icon(Icons.search),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.grey),
      ),
    ));
  }
}
