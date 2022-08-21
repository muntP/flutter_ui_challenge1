import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 310,
      top: 222,
      child: MaterialButton(
        onPressed: () {},
        color: playButtonColor,
        height: 67,
        minWidth: 67,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(67 / 2),
        ),
        child: const Icon(Icons.play_arrow, color: white85, size: 32),
      ),
    );
  }
}
