import 'package:flutter/material.dart';
import 'package:world_time/screens/Home.dart';
import 'package:world_time/screens/Locations.dart';
import 'package:world_time/screens/Splash.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Splash(),
    '/home': (context) => Home(),
    '/locations': (context) => ChooseLocation(),
  },
));
