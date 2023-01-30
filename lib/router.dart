import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'common/bottom_bar.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
      );
    case HomeScrean.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScrean(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        builder: (_) => const BottomBar(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text('Screen Does not exist!')),
        ),
      );
  }
}
