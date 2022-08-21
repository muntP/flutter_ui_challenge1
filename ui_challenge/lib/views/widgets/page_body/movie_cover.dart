import 'package:flutter/material.dart';

class MovieCover extends StatelessWidget {
  const MovieCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      height: 145,
      width: 101,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset('lib/assets/images/image_4.png'),
      ),
    );
  }
}