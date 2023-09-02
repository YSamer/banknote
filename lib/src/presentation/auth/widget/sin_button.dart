import 'package:banknote/src/app/resources/color.dart';
import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  SignButton({super.key, required this.iconImage, required this.hintText});
  String iconImage;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(7),
          child: Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: p5),
              child: Image.asset(iconImage)),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 15),
        fillColor: Colors.grey,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 0.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
