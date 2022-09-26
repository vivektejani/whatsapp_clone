import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/screens/ios_screen/calls_page_ios.dart';
import 'package:whatsapp_clone/screens/ios_screen/camera_page_ios.dart';
import 'package:whatsapp_clone/screens/ios_screen/chats_page_ios.dart';
import 'package:whatsapp_clone/screens/ios_screen/settings_page_ios.dart';
import 'package:whatsapp_clone/screens/ios_screen/status_screen_ios.dart';

class CupertinoHomeScreen extends StatefulWidget {
  const CupertinoHomeScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoHomeScreen> createState() => _CupertinoHomeScreenState();
}

class _CupertinoHomeScreenState extends State<CupertinoHomeScreen> {
  @override
  List<Widget> data = const [
    CupertinoStatusScreen(),
    CupertinoCallsScreen(),
    CupertinoCameraScreen(),
    CupertinoChatsScreen(),
    CupertinoSettingsScreen(),
  ];

  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.circle_fill),
            icon: Icon(CupertinoIcons.circle),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.phone_solid),
            icon: Icon(CupertinoIcons.phone),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.camera_fill),
            icon: Icon(CupertinoIcons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.settings_solid),
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return data[index];
          },
        );
      },
    );
  }
}
