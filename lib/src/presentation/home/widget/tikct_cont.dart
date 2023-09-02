import 'package:banknote/src/app/resources/color.dart';
import 'package:flutter/material.dart';

class TiketContainer extends StatelessWidget {
  const TiketContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: p6, borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Stack(
                      children:[
                        Image.asset(
                        "assets/icon/Ellipse 1653.png",
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                       Image.asset(
                        "assets/icon/Credit card_light.png",
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                      ] 
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const SizedBox(
                      width: 182,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "loan 1",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Amet minim mollit non \ndeserunt ullamco est sit aliqua ",
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 80,
                        width: 115,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(color: p1, fontSize: 12),
                            ),
                            Text(
                              "+50.20 EGY",
                              style: TextStyle(color: p1, fontSize: 12),
                            )
                          ],
                        ))
                  ]),
                ),
              ),
            ],
          ),
        );
  }
}