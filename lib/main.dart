// ignore_for_file: prefer_const_constructors

import 'package:exam_project/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter;
  var box = await Hive.openBox('projectbox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
