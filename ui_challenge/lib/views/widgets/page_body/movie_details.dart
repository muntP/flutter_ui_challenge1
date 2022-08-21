import 'package:flutter/material.dart';

import '../../../assets/style.dart';
import 'movie_cover.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 173,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MovieCover(),
          Overview(isKey: true),
          SizedBox(width: 8),
          Overview(isKey: false),
        ],
      ),
    );
  }
}

class Overview extends StatelessWidget {
  const Overview({Key? key, required this.isKey}) : super(key: key);
  
  // final Map<String, String> details;
  final bool isKey;
  @override
  Widget build(BuildContext context) {
    Map<String, String> details = {
      'Director': 'Kimo Stamboel',
      'Writter': 'Joko Anwar',
      'Duration': '1 hour 39 minute(s)',
      'Rating': 'D (17+)',
    };

    return SizedBox(
      width: isKey ? 61 : 146,
      height: 128,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: details.entries
              .map(
                (e) => Text(
                  isKey ? e.key : ': ${e.value}',
                  style: ratingMovieTextStyle.copyWith(color: white85, letterSpacing: 0),
                ),
              )
              .toList()),
    );
  }
}
