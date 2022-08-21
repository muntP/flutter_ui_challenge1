import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  var _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 32,
      height: 24.19,
      right: 24,
      top: 45, // 55
      child: IconButton(
        onPressed: () => setState(() => _isFavorite = !_isFavorite),
        icon: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_outline,
          color: _isFavorite ? red : white85,
          size: 32,
        ),
      ),
    );
  }
}
