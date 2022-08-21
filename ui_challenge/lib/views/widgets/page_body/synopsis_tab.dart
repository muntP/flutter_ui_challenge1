import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class SynopsisTab extends StatelessWidget {
  const SynopsisTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Enim fugiat et cupidatat laborum ipsum sunt. Dolor commodo quis deserunt voluptate eu labore.Dolor officia voluptate amet mollit mollit culpa ullamco cillum duis consequat tempor enim quis. ',
          style: ratingMovieTextStyle,
        ),
      ),
    );
  }
}
