import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/screens/home_page.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'UI-Challenge',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
