import 'package:flutter/material.dart';
import '../views/initial.dart';
import '../views/about.dart';
import '../views/gallery.dart';
import '../views/more.dart';
import '../views//schedule.dart';
import '../views/social.dart';


class AppRoutes {
  static const String initial = '/';
  static const String about = '/about';
  static const String gallery = '/gallery';
  static const String more = '/more';
  static const String schedule = '/schedule';
  static const String social = '/social';


  static Map<String, WidgetBuilder> routes = {
    initial: (_) => const InitialPage(),
    about: (_) => const AboutPage(),
    gallery: (_) => const GalleryPage(),
    more: (_) => const MorePage(),
    schedule: (_) => const SchedulePage(),
    social: (_) => const SocialPage(),
  };
}