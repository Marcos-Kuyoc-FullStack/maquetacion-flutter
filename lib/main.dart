import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'home_screen': (_) => const HomeScreen(),
        'basic_screen': (_) => const BasicScreen(),
        'scroll_screen': (_) => const ScrollScreen()
      },
    );
  }
}
