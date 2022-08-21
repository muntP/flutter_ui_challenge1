import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class MovieBackground extends StatelessWidget {
  const MovieBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 256,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/image_9.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [black12, black26]),
        ),
      ),
    );
  }
}
