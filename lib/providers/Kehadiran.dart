
import 'package:absen_list/models/riwayat.dart';
import 'package:absen_list/models/siswa.dart';
import 'package:flutter/material.dart';

class Kehadiran with ChangeNotifier {
  List<Siswa>data = [
    Siswa(name: "hello world"),
    Siswa(name: "hello world"),
    Siswa(name: "hello world"),
    Siswa(name: "hello world")
  ];

  List<Riwayat>dataRiwayat=[];
void saveKehadiran(BuildContext context) {
  DateTime now = DateTime.now();
  // dynamic format = DateFormat('dd MMMM yyyy');
  int kehadiranCount = data.where((s) => s.check).length;
  int tidakHadir = data.length - kehadiranCount;
  // print(kehadiranCount);
  // print(format.runtimeType);
  // print(format.format(now));
  
  dataRiwayat.add(Riwayat(hadir: kehadiranCount, tidakHadir:tidakHadir, tanggal:now));
  for (var siswa in data) {
    siswa.check = false;
  }
   showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Peringatan'),
                content:
                    Text('Data sudah disimpan'),
                actions: [
                  Center(
                      child: SizedBox(
                        width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Tutup'),
                    ),
                  ))
                ],
              );
            });
  notifyListeners();
}} 