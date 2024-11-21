import 'package:absen_list/providers/Kehadiran.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// class RiwayatKehadiran extends StatefulWidget {
//   const RiwayatKehadiran({super.key});

//   @override
//   State<RiwayatKehadiran> createState() => _RiwayatKehadiranState();
// }

// class _RiwayatKehadiranState extends State<RiwayatKehadiran> {
//   @override
//   Widget build(BuildContext context) {
//     dynamic format = DateFormat('dd MMMM yyyy');

//     final provider = Provider.of<Kehadiran>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Riwayat Kehadiran"),
//       ),
//       body: ListView.builder(
//         itemCount: provider.dataRiwayat.length,
//         itemBuilder: (context, index) {
//           final riwayat = provider.dataRiwayat[index];
//           return Container(
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(color: Colors.brown, width: 2.0),
//                   bottom: BorderSide(color: Colors.brown, width: 2.0),
//                 ),
//               ),
//               padding: EdgeInsets.all(20),
//               margin: EdgeInsets.symmetric(vertical: 5),
//               child: Column(
//                 children: [
//                   Text(format.format(riwayat.tanggal)),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text("Hadir : ${riwayat.hadir}"),
//                       Text("Tidak Hadir : ${riwayat.tidakHadir}"),
//                     ],
//                   )
//                 ],
//               ));
//         },
//       ),
//     );
//   }
// }

class RiwayatKehadiran extends StatelessWidget {
  const RiwayatKehadiran({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic format = DateFormat('dd MMMM yyyy');

    final provider = Provider.of<Kehadiran>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riwayat Kehadiran"),
      ),
      body: ListView.builder(
        itemCount: provider.dataRiwayat.length,
        itemBuilder: (context, index) {
          final riwayat = provider.dataRiwayat[index];
          return Container(
              decoration:const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.brown, width: 2.0),
                  bottom: BorderSide(color: Colors.brown, width: 2.0),
                ),
              ),
              padding:const  EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [
                  Text(format.format(riwayat.tanggal)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Hadir : ${riwayat.hadir}"),
                      Text("Tidak Hadir : ${riwayat.tidakHadir}"),
                    ],
                  )
                ],
              ));
        },
      ),
    );

  }
}
