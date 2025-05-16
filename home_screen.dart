import 'package:flutter/material.dart';
import 'package:watts__app/chatts_screen.dart';

import 'package:watts__app/communities_screen.dart';
import 'package:watts__app/updates_screen.dart';
import 'package:watts__app/calls_screen.dart';

import 'package:watts__app/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget selectedWidget = ChattsScreen();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.photo_camera)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ],
        ),
        body: selectedWidget,
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            selectedItemColor: Colors.black,
            onTap: (value) {
              selectedIndex = value;
              if (selectedIndex == 0) {
                selectedWidget = ChattsScreen();
              } else if (selectedIndex == 1) {
                selectedWidget = UpdatesScreen();
              } else if (selectedIndex == 2) {
                selectedWidget = CommunitiesScreen();
              } else if (selectedIndex == 3) {
                selectedWidget = CallsScreen();
              } else {
                selectedWidget = SettigsScreen();
              }
              setState(() {});
            },
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat, color: Colors.black), label: "chat"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.update, color: Colors.black),
                  label: "update"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people, color: Colors.black),
                  label: "people"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call, color: Colors.black), label: "call"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings, color: Colors.black),
                  label: "settings"),
            ]));
  }
}
