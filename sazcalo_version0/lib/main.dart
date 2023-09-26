import 'package:flutter/material.dart';
import 'package:sazcalo_version0/constants.dart';
import 'package:sazcalo_version0/views/screens/instrument_pick.dart';
import 'package:sazcalo_version0/views/screens/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Sazcalo Version 0',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ListViewPicker(),
    );
  }
}
