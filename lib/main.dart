import 'package:flutter/material.dart';
import 'package:navigation/art_route.dart';
import 'package:navigation/art_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Art',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const ArtRoute(
        art: ArtUtil.IMG_VANGOGH,
      ),
    );
  }
}
