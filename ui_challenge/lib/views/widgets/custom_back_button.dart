import 'package:flutter/material.dart';

import '../../assets/style.dart';

class CustomBackButton extends StatefulWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 20,
      height: 13,
      left: 12,
      top: 55, // 62
      child: BackButton(
        onPressed: () => setState(() => Navigator.pop(context)),
        color: white85,
      ),
    );
  }
}
