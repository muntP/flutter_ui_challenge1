import 'package:flutter/material.dart';

import '../../../assets/style.dart';

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  List<String> items = [
    'Cinema XXI Ambarukmo Plaza',
    'Cinema XI Ambarukmo Plaza'
  ];

  String selectedItem = 'Cinema XXI Ambarukmo Plaza';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 21),
      height: 64,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Select Cinema', style: selectCinemaTextStyle),
          DropdownButton<String>(
            icon: const Icon(Icons.keyboard_arrow_down_sharp, color: white6),
            isExpanded: true,
            dropdownColor: categoryColor,
            underline: Container(
              height: 1,
              width: double.infinity,
              color: grey800
            ),
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item, style: scheduleTextStyle),
                    ))
                .toList(),
            onChanged: (item) => setState(() => selectedItem = item!),
          ),
        ],
      ),
    );
  }
}
