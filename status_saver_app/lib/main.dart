import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:status_saver_app/provider/bottom_nav_provider.dart';
import 'package:status_saver_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavProvider(),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreeen(),
      ),
    );
  }
}

