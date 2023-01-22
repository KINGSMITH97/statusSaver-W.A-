import 'dart:developer';

import 'package:flutter/material.dart';

class ViewVideoPage extends StatefulWidget {
  const ViewVideoPage({super.key});

  @override
  State<ViewVideoPage> createState() => _ViewVideoPageState();
}

class _ViewVideoPageState extends State<ViewVideoPage> {
  List<Widget> iconList = const [
    Icon(Icons.download),
    Icon(Icons.share),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(iconList.length, (index) {
          return FloatingActionButton(
            heroTag: "$index",
            onPressed: () {
              switch(index){
                case 0:
                log("Download");
                break;
                case 1:
                log("Share");
                break;
              }
            },
            child: iconList[index],
          );
        }),
      ),
    );
  }
}
