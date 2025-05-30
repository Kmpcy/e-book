import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 15, bottom: 20),
      child: Row(
        children: [
          Image.asset(Booksy.logo, height: 20),
          const Spacer(),
          IconButton(
              onPressed: () {
                context.go(AppRouter.searchView);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
        ],
      ),
    );
  }
}
