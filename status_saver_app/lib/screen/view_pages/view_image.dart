import 'dart:developer';

import 'package:flutter/material.dart';

class ViewImagePage extends StatefulWidget {
  const ViewImagePage({super.key});

  @override
  State<ViewImagePage> createState() => _ViewImagePageState();
}

class _ViewImagePageState extends State<ViewImagePage> {
  List<Widget> iconList = const [
    Icon(Icons.download),
    Icon(Icons.print),
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
                log("Print");
                break;
                case 2:
                log("share");
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
