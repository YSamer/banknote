import 'package:banknote/src/app/utils/color.dart';
import 'package:flutter/material.dart';

class ArrowBackContainer extends StatelessWidget {
  const ArrowBackContainer({super.key, required this.onpress});
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: CircleAvatar(
        backgroundColor: p7,
        radius: 20,
        child: const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
