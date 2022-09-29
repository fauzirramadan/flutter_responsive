import 'package:flutter/material.dart';
import 'package:flutter_responsive/responsive/dekstop_screen.dart';
import 'package:flutter_responsive/responsive/responsive_layout.dart';
import 'package:flutter_responsive/responsive/tablet_screen.dart';

import 'responsive/mobile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ResponsiveLayout(
          mobileScreen: MobileScreen(),
          tabletScreen: TabletScreen(),
          dekstopScreen: DekstopScreen()),
    );
  }
}
