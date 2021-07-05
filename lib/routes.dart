import 'package:flutter/material.dart';
import 'package:http_json_latihan_mandiri/screens/assess_screen.dart';
import 'package:http_json_latihan_mandiri/screens/home_screen.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/home':
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
    case '/assess':
      return MaterialPageRoute(builder: (context) => AssessScreen());
  }
}
