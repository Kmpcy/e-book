import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/Core/Notifications.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;
    Notifications _notifications = Notifications(); // Instantiate Notifications

  @override
  void initState() {
    super.initState();
    
    // Initialize AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Define fade animation
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    // Define slide animation for the divider
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1), // Start from below
      end: Offset.zero, // End at original position
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    // Define scale animation for the logo
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );

    // Start the animation
    _controller.forward();

    // Show notification and navigate to HomeView after 3 seconds
    Future.delayed(const Duration(seconds: 3), () async {
      // Show welcome notification
      await _notifications.showInstantNotification(
        id: 0,
        title: 'Welcome to Booksy!',
        body: 'Explore your favorite books now!',
      );
      // Navigate to HomeView
      context.go(AppRouter.homeView);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ScaleTransition(
          scale: _scaleAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Image.asset(
              Booksy.logo,
              width: 200,
            ),
          ),
        ),
        FadeTransition(
          opacity: _fadeAnimation,
          child: const Text(
            Booksy.slogan,
            textAlign: TextAlign.center,style:const TextStyle(color: Colors.amber) ,
            
          ),
        ),
        SlideTransition(
          position: _slideAnimation,
          child: const Center(
            child: Divider(
              
              endIndent: 120,
              indent: 120,
              thickness: 2,
            ),
          ),
        ),
      ],
    );
  }
}