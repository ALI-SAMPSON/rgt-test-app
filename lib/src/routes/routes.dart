import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test_app/src/features/home/presentation/views/home.view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String homeRoute = '/home-route';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const THomeView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const THomeView());
      default:
        return unDefinedRoute();
    }
  }

  // undefined route
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(_)!.noRouteFound),
        ),
        body: Center(
          child: Text(AppLocalizations.of(_)!.noRouteFound),
        ),
      ),
    );
  }
}
