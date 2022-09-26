import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/android_screens/calls_page.dart';

import 'package:whatsapp_clone/screens/android_screens/camera_page.dart';
import 'package:whatsapp_clone/screens/android_screens/chats_page.dart';
import 'package:whatsapp_clone/screens/android_screens/status_page.dart';

import 'global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = orjWidth / 24;
    double yourWidth = (orjWidth - cameraWidth) / 5;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Global.mainColor,
          title: const Text(
            "whatsApp",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelPadding: EdgeInsets.symmetric(
                horizontal: (orjWidth - (cameraWidth + yourWidth * 3)) / 8),
            isScrollable: true,
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            tabs: <Widget>[
              SizedBox(
                child: const Tab(icon: Icon(Icons.camera_alt)),
                width: cameraWidth,
              ),
              SizedBox(
                child: const Tab(
                  text: "chats",
                ),
                width: yourWidth,
              ),
              SizedBox(
                child: const Tab(
                  text: "status",
                ),
                width: yourWidth,
              ),
              SizedBox(
                child: const Tab(
                  text: "calls",
                ),
                width: yourWidth,
              ),
            ],
          ),
        ),
        body:  const TabBarView(
          children: <Widget>[
            CameraTabScreen(),
            ChatsTabScreen(),
            StatusTabScreen(),
            CallTabScreen(),
          ],
        ),
      ),
    );
  }
}
