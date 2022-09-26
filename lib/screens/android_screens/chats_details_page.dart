import 'package:flutter/material.dart';

import '../../global.dart';

class ChatsDetailsScreen extends StatefulWidget {
  const ChatsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsDetailsScreen> createState() => _ChatsDetailsScreenState();
}

class _ChatsDetailsScreenState extends State<ChatsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Global.mainColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              backgroundImage: NetworkImage('${args["img"]}'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${args["name"]}'),
                Text('last seen ${args["time"]}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.video_call_rounded),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.call),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Row(
            children: [
              Container(
                height: 55,
                margin: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.78,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    const Text(
                      '🙂',
                      style: TextStyle(fontSize: 30),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Message',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.camera_alt,
                      color: Global.mainColor,
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Global.mainColor,
                child: const Icon(Icons.mic),
              )
            ],
          ),
        ],
      ),
    );
  }
}