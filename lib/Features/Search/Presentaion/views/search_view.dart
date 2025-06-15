import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/search_view_body.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
   SearchView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go(AppRouter.homeView);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Booksy.kPrimaryColor,
        centerTitle: true,
        title: const Text("Find Your Book"),
        automaticallyImplyLeading: true,
      ),
      body:   SafeArea(child: SerachViewBody()),
    );
  }
}


