import 'package:booksy/Features/Home/presentation/views/home_view.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(), transition: Transition.cupertino);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          Booksy.logo,
        ),
        const Text(
          Booksy.slogan,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.lightGreen),
        ),
        const Center(
          child: Divider(
            color: Colors.white,
            endIndent: 120,
            indent: 120,
          ),
        )
      ],
    );
  }
}

