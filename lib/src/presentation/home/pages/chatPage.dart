import 'package:flutter/material.dart';

import '../widget/chat_service_cont.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/Screen.jpg",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    Center(child: Image.asset("assets/images/logodark.png")),
                    const Text(
                      "Chat",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 25,
                    ),
                    const ChatServicCont(),
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.attach_file_outlined,
                                size: 30,
                              ),
                              hintText: "Type your message",
                              hintStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        const Icon(
                          Icons.send,
                          size: 35,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
