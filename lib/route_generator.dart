import 'package:flutter/material.dart';
import 'package:navigator_islemleri/green_page.dart';
import 'package:navigator_islemleri/hata_sayfasi.dart';
import 'package:navigator_islemleri/red_page.dart';
import 'package:navigator_islemleri/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => RedPage());

      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => YellowPage());

      case "/greenPage":
        String name = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => GreenPage(ad: name));

      default:
        return MaterialPageRoute(builder: (context) => HataSayfasi());
    }
  }
}
