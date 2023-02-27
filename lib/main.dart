import 'package:app_self_control/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.black,
          elevation: 0,
          textTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
        ),
        tabBarTheme: TabBarTheme.of(context).copyWith(
          labelColor: Colors.indigo,
          unselectedLabelColor: Colors.grey[500],
          labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      home: const Home()
    );
  }
}


