import 'package:flutter/material.dart';
import 'package:formularios/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: appRoutes,
      initialRoute: 'home_page',
    );
  }
}
