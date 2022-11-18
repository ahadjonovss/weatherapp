import 'package:flutter/material.dart';
import 'package:weatherapp/pages/home/detailes_page.dart';
import 'package:weatherapp/pages/home/search_page.dart';

import '../../pages/home/home_page.dart';
import '../../pages/splash_page.dart';

class RouteName{
  static const splash_page="splash";
  static const home="home";
  static const detailes="dtls";
  static const search="search";
}

class AppRoutes{
  static Route generateRoutes(RouteSettings settings){
    var args=settings.arguments;
    switch(settings.name){
      case RouteName.splash_page: return MaterialPageRoute(builder: (_)=>SplashPage());
      case RouteName.home: return MaterialPageRoute(builder: (_)=>HomePage());
      case RouteName.detailes: return MaterialPageRoute(builder: (_)=>DetailesPage());
      case RouteName.search: return MaterialPageRoute(builder: (_)=>SearchPage());
      default: return MaterialPageRoute(builder: (_)=>Scaffold());
    }
  }
}