import 'package:flutter/material.dart';
import 'package:inecta_exercise/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:  AppRoutes.offload,
      routes: AppRoutes.getRoutes(),
    );
  }
}


