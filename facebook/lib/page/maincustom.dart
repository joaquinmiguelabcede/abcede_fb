
import 'package:facebook/page/friend.dart';
import 'package:facebook/page/marketplace.dart';
import 'package:facebook/page/newsfeed.dart';
import 'package:facebook/page/notification.dart';
import 'package:facebook/page/profile.dart';
import 'package:flutter/material.dart';

class MaincustomPage extends StatefulWidget {
  @override
  _MaincustomPageState createState() => _MaincustomPageState();
}

class _MaincustomPageState extends State<MaincustomPage> {
  int currentpage = 0;

  final List<Widget> pages = [
    const Newsfeed(),
    const Marketplacepage(),
    const FriendsPage(),
    const ProfilePage(),
    const NotificationPage()
  ];

  void onTap(int index) {
    setState(() {
      currentpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentpage,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "Watch"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Market Place"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Groups"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),
    );
  }
}