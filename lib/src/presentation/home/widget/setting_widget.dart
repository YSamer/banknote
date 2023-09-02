import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  InformationWidget({super.key, required this.infoText, required this.onpress});
  String infoText;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        const Divider(
          height: 5,
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(infoText),
            GestureDetector(
              onTap: onpress,
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ],
    );
  }
}
