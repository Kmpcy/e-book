import 'package:booksy/Core/Service_locator.dart';
import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/Repos/home_repo_imp.dart';
import 'package:booksy/Features/Home/presentation/Manager/SimilarBooks_cubit/similar_books_cubit.dart';
import 'package:booksy/Features/Home/presentation/views/book_details_view.dart';
import 'package:booksy/Features/Home/presentation/views/home_view.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/animation_view.dart';
import 'package:booksy/Features/Search/Presentaion/Manager/cubit/search_cubit.dart';
import 'package:booksy/Features/Search/Presentaion/views/search_view.dart';
import 'package:booksy/Features/Search/Repos/search_repo_imp.dart';
import 'package:booksy/Features/Splash/Presentation/Views/Widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String homeView = '/home';
  static const String bookDetailsView = '/bookDetails';
  static const String animationView = '/animation/:index';
  static const String searchView = '/searchView';

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: splashView,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        }),
    GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        }),
    GoRoute(
        path: bookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImp>()),
            child: BookDetailsView(item: state.extra as Item),
          );
        }),
    // GoRoute(
    //     path: animationView,
    //     builder: (BuildContext context, GoRouterState state) {
    //    final index = int.parse(state.pathParameters['index']!);
    //       final image = state.extra as String; // extra هو الـ imageUrl مباشرة
    //       return AnimationView(index: index, image: image);
    //     }),
    GoRoute(
        path: searchView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SearchCubit(
              getIt.get<SearchRepoImp>(),
            ),
            child: SearchView(),
          );
        }),
  ]);
}
