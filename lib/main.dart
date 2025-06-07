import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/Core/Service_locator.dart';
import 'package:booksy/Core/errors/Api/api_services.dart';
import 'package:booksy/Features/Home/Repos/home_repo_imp.dart';
import 'package:booksy/Features/Home/presentation/Manager/BestSeller_cubit/best_seller_cubit.dart';
import 'package:booksy/Features/Home/presentation/Manager/FeaturedBooks_cubit/featured_books_cubit.dart';
 import 'package:booksy/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp( const ebook());
}

class ebook extends StatelessWidget {
  const ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider( 
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImp>())..fetchFeaturedBooks()),
          BlocProvider(
          create: (context) => BestSellerCubitCubit(getIt.get<HomeRepoImp>())),
        
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
       debugShowCheckedModeBanner: false,
       theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Booksy.kPrimaryColor,
        textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme
       )), 
       
        ),
    );
  }
  
}


