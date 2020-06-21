import 'package:flutter/material.dart';
import 'package:live_drone/pages/home/home_page.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
