import 'package:booksy/Features/Home/presentation/views/home_view.dart';
import 'package:booksy/Features/Splash/Presentation/Views/Widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter {

static const String splashView = '/';
static const String homeView = '/home';
static const String bookDetailsView = '/bookDetails';

  static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: splashView,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      }
    ),
     GoRoute(
      path: homeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      }
    ),
    
    
    
    
    ]);

}