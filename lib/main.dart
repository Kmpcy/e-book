import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/Features/Splash/Presentation/Views/Widgets/splash_view.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( const ebook());
}

class ebook extends StatelessWidget {
  const ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
     debugShowCheckedModeBanner: false,
     theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor:Booksy.kPrimaryColor,
      textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme
     )), 
     
      );
  }
}


