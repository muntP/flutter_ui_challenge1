import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class SeatButton extends StatelessWidget {
  const SeatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49, // 63
      width: double.infinity,
      child: MaterialButton(
        onPressed: (){},
        color: playButtonColor,
        child: const Text('Take a seat', style: seatButtonTextStyle),
      ),
    );
  }
}
