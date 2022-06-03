import 'package:flutter/material.dart';
import 'package:flutter_carousel/screens/custom_carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Flutter Carousel',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(
          backgroundColor: Color(0xFFffffff),
          body: SafeArea(child: CustomCarousel())),
      debugShowCheckedModeBanner: false,
    );
  }
}
