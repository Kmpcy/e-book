import 'package:booksy/Features/Splash/Presentation/Views/Widgets/splash_view.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp( const ebook());
}

class ebook extends StatelessWidget {
  const ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor:Booksy.kPrimaryColor,
     ),
      home: const SplashView(),
    );
  }
}


