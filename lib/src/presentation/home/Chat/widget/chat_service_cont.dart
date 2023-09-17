import 'package:flutter/material.dart';

class ChatServicCont extends StatelessWidget {
  const ChatServicCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 350,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 248, 245, 245),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/images/person.png"),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Customers Service"),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Online",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
