import './pages/splash_page.dart';
import './pages/main_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  //runApp(const MyApp());
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () => runApp(
         const ProviderScope(
          child: MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flicked',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext _context) => MainPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

