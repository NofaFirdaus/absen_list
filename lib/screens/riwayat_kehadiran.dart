import 'package:flutter/material.dart';

class RiwayatKehadiran extends StatefulWidget {
  const RiwayatKehadiran({super.key});

  @override
  State<RiwayatKehadiran> createState() => _RiwayatKehadiranState();
}

class _RiwayatKehadiranState extends State<RiwayatKehadiran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Riwayat Kehadiran"),),
    );
  }
}