import 'package:flutter/material.dart';

import '../../../assets/style.dart';
import 'reservation_deatils.dart';

class SeatReservation extends StatelessWidget {
  const SeatReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> timeAvailable = [
    {
      'color': playButtonColor,
      'time': '15:05',
      'seats': 12,
    },
    {
      'color': categoryColor,
      'time': '16:00',
      'seats': 12,
    },
    {
      'color': shdowScheduleColor,
      'time': '16:55',
      'seats': 0,
    },
  ];
    
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
      height: 94,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('REGULAR 2D', style: scheduleTextStyle),
              Text(
                'RP 30.000',
                style: ratingMovieTextStyle.copyWith(color: white85),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                timeAvailable.length,
                (index) => ReservationDeatils(
                  color: timeAvailable[index]['color'],
                  time: timeAvailable[index]['time'],
                  seats: timeAvailable[index]['seats'],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
