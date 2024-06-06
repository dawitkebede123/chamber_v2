// navigation.dart
// import 'dart:js';

import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Discovery.dart';
import 'package:chamber_of_commerce/pages/user/Favorite.dart';
import 'package:flutter/material.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  // '/discovery': (context) => Discovery(),
  '/business': (context) => Business(),
  '/almanac': (context) => Almanac(),
  // '/favorite': (context) => Favorite()
};
