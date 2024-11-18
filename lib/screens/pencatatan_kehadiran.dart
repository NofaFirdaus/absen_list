import 'package:absen_list/providers/Kehadiran.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PencatatanKehadiran extends StatefulWidget {
  const PencatatanKehadiran({super.key});

  @override
  State<PencatatanKehadiran> createState() => _PencatatanKehadiranState();
}

class _PencatatanKehadiranState extends State<PencatatanKehadiran> {
  // List<Map<String, dynamic>> data = [
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  //   {"nama": "hello world", "check": false},
  // ];

  @override
  Widget build(BuildContext context) {
       final provider = Provider.of<Kehadiran>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("pencatatan kehadiran"),
      ),
      body: ListView.builder(
        itemCount: provider.data.length,
        itemBuilder: (context, index) {
          final dataSiswa = provider.data[index]; 
          return Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${dataSiswa.name}"),
                Checkbox(
                  value:  dataSiswa.check,
                  onChanged: (value) {
                      print(value);
                    setState(() {
                      dataSiswa.check = value ?? false;
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton:
          ElevatedButton(onPressed: () {}, child: Text("simpan")),
          // bottomNavigationBar: ,
    );
    
  }
}
