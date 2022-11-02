import 'package:flutter/material.dart';

import 'page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consumer API',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
