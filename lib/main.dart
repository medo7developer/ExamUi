import 'package:examingapp/home/home.dart';
import 'package:examingapp/providers/tab_manager.dart';
import 'package:examingapp/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TabManager(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Splash.routeName: (_) => Splash(),
        Home.routeName: (_) => Home(),
      },
      initialRoute: Splash.routeName,
    );
  }
}
