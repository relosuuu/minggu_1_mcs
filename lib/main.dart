import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mcs bab 1',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 35, 2, 92)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
