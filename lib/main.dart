import 'package:flutter/material.dart';
import 'package:mod3_kel33/widget/navigtion.dart';

void main() {
  runApp(MangaApp());
}

class MangaApp extends StatelessWidget {
  const MangaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MangaApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 4, 195, 10),
        ),
        useMaterial3: true,
      ),
      home: NavigationPage(),
    );
  }
}
