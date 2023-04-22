import 'package:airbnb/ui/screens/splash_screen.dart';
import 'package:airbnb/ui/screens/details_screen/details_screen.dart';
import 'package:airbnb/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'route_constants.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case RouteConstants.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case RouteConstants.detailsScreen:
        return MaterialPageRoute(
          builder: (context) => const DetailsScreen(),
        );

      case RouteConstants.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      default:
        throw Exception('Invalid route: ${settings.name}');
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
