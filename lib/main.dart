import 'package:flutter/material.dart';
import 'package:http_json_latihan_mandiri/routes.dart';
import 'package:http_json_latihan_mandiri/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Peer Assessment'),
      //initialise router
      initialRoute: '/home',
      onGenerateRoute: createRoute,
    );
  }
}
