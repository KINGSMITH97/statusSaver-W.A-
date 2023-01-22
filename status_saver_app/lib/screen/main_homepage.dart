import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status_saver_app/screen/bottom_nav_pages/image_home.dart';
import 'package:status_saver_app/screen/bottom_nav_pages/video_home.dart';

import '../provider/bottom_nav_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = const [
    ImageHomePage(),
    VideoHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context, nav, child) => 
      Scaffold(
        body: pages[nav.currentIndex],
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: nav.currentIndex,
        onTap: (value) {
          nav.setCurrentIndex(value);
        },
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.image), label: "Images"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Videos"),
       ],),
      ),
    );
  }
}
