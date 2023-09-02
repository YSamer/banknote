import 'package:banknote/src/app/resources/color.dart';
import 'package:flutter/material.dart';

class ArrowBackContainer extends StatelessWidget {
  const ArrowBackContainer({super.key, required this.onpress});
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 45,
        width: 55,
        decoration:
            BoxDecoration(color: p1, borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
