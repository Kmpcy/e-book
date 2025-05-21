import 'package:booksy/Features/Home/presentation/views/book_details_view.dart';
import 'package:booksy/Features/Home/presentation/views/home_view.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/animation_view.dart';
import 'package:booksy/Features/Search/Presentaion/views/search_view.dart';
import 'package:booksy/Features/Splash/Presentation/Views/Widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String homeView = '/home';
  static const String bookDetailsView = '/bookDetails';
  static const String animationView = '/animationView';
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
          return const BookDetailsView();
        }),
    GoRoute(
        path: animationView,
        builder: (BuildContext context, GoRouterState state) {
          return AnimationView(index: state.extra as int);
        }),
    GoRoute(
        path: searchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        }),
  ]);
}
