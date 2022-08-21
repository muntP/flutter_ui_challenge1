import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class ScheduleTab extends StatelessWidget {
  const ScheduleTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> scheduleList = [
      {
        'date_day': 20,
        'day': 'WED',
        'month': 'Nov',
      },
      {
        'date_day': 21,
        'day': 'THU',
        'month': 'Nov',
      },
      {
        'date_day': 22,
        'day': 'FRI',
        'month': 'Nov',
      },
      {
        'date_day': 23,
        'day': 'SAT',
        'month': 'Nov',
      },
      {
        'date_day': 24,
        'day': 'SUN',
        'month': 'Nov',
      },
      {
        'date_day': 25,
        'day': 'MON',
        'month': 'Nov',
      },
      {
        'date_day': 26,
        'day': 'TUE',
        'month': 'Nov',
      },
      {
        'date_day': 27,
        'day': 'WED',
        'month': 'Nov',
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ScrollPhysics(),
      child: Row(
        children: [
          const SizedBox(width: 16),
          ...List.generate(
            scheduleList.length,
            (index) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: index == 0
                      ? playButtonColor
                      : index < 5
                          ? categoryColor
                          : shdowScheduleColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${scheduleList[index]['date_day']} ${scheduleList[index]['month']}',
                      style: scheduleTextStyle.copyWith(
                        color: textColor(index),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      scheduleList[index]['day'],
                      style: scheduleTextStyle.copyWith(
                        color: textColor(index),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  Color textColor(int index) {
    return (index == 0)
        ? (white85)
        : (index < 5 ? white6 : white3);
  }
}
