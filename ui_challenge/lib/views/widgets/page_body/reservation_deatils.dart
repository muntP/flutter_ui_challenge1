import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class ReservationDeatils extends StatelessWidget {
  const ReservationDeatils(
      {Key? key, required this.color, required this.time, required this.seats})
      : super(key: key);

  final Color color;
  final String time;
  final int seats;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: reservationTimeTextStyle),
          Text(
            seats == 0 ? 'All seat taken' : '$seats seat available',
            style: reservationSeatTextStyle.copyWith(color: white3),
          ),
        ],
      ),
    );
  }
}
