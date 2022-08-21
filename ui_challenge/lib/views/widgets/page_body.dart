import 'package:flutter/material.dart';

import 'page_body/dropdown_menu.dart';
import 'page_body/movie_details.dart';
import 'page_body/movie_tabs.dart';
import 'page_body/seat_button.dart';
import 'page_body/seat_reservation.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        MovieDetails(),
        MovieTabs(),
        DropdownMenu(),
        SeatReservation(),
        SeatButton(),
      ],
    );
  }
}
