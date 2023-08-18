import 'package:departure/provider/gita_provider.dart';
import 'package:departure/screen/detailscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/homescreen.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
      create: (context) => GitaProvider(),
      child: MyApp(),
      )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomeScreen(),
        'detailscreen': (context) => detailscreen(),
      },
    );
  }
}
