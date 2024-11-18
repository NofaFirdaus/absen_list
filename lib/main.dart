import 'package:absen_list/components/bottom_navigator.dart';
import 'package:absen_list/providers/Kehadiran.dart';
import 'package:absen_list/screens/pencatatan_kehadiran.dart';
import 'package:absen_list/screens/riwayat_kehadiran.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const BottomNavigator(),
    );
  }
}


