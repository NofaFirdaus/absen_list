import 'package:absen_list/components/bottom_navigator.dart';
import 'package:absen_list/components/bottom_navigator_with_page_view.dart';
import 'package:absen_list/providers/Kehadiran.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Kehadiran(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home:  BottomNavigatorWithPageView(),
    );
  }
}


