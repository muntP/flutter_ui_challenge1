import 'package:flutter/material.dart';
import 'package:ui_challenge/views/widgets/page_header/favorite_button.dart';

import '../../assets/style.dart';
import 'custom_back_button.dart';
import 'page_header/movie_background.dart';
import 'page_header/movie_category.dart';
import 'page_header/play_button.dart';

class PageHeader extends StatefulWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  State<PageHeader> createState() => _PageHeaderState();
}

class _PageHeaderState extends State<PageHeader> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 437,
      height: 258 + 67 / 2,
      child: Stack(
        children: [
          Stack(
            children: const[
              MovieBackground(),
              Positioned(
                // width: 211,
                left: 16,
                top: 116,
                child: Text('RATU ILMU HITAM', style: nameMovieTextStyle),
              ),
              Positioned(
                // width: 124,
                left: 36,
                top: 157,
                child: Text('8,9 / 10 from IMDb', style: ratingMovieTextStyle),
              ),
              Positioned(
                left: 16,
                top: 160,
                child: Icon(Icons.star, color: starColor, size: 16),
              ),
              FavoriteButton(),
              CustomBackButton(),
              MovieCategory(),
            ],
          ),
          const PlayButton(),
        ],
      ),
    );
  }
}
