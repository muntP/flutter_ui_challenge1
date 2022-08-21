import 'package:flutter/material.dart';

import '../../assets/style.dart';
import '../widgets/page_body.dart';
import '../widgets/page_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: const[
            PageHeader(),
            BodyPage(),
          ],
        ),
      ),
    );
  }
}
