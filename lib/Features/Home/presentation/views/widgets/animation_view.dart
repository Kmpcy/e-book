import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimationView extends StatelessWidget {
  @override
  final int index ;
  const AnimationView({super.key, required this.index});

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                 context.go(AppRouter.homeView);
                },
                icon:
                    const Icon(Icons.arrow_back, color: Colors.white, size: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Hero(
                tag: "$index",
                child: Image.asset(
                  Booksy.test,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
