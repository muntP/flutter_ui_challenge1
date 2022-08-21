import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class MovieCategory extends StatelessWidget {
  const MovieCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(16, 190),
      child: SizedBox(
        width: double.infinity,
        height: 32,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const ScrollPhysics(),
          children: const [
            CategoryName(category: 'Horror'),
            CategoryName(category: 'Drama'),
          ],
        ),
      ),
    );
  }
}

class CategoryName extends StatelessWidget {
  const CategoryName({Key? key, required this.category}) : super(key: key);

  final String category;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      alignment: Alignment.center,
      width: 93,
      height: 32,
      decoration: BoxDecoration(
        color: categoryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(category, style: ratingMovieTextStyle.copyWith(letterSpacing: 0.02)),
    );
  }
}
