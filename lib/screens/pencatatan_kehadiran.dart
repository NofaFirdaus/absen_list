import 'package:flutter/material.dart';

class PencatatanKehadiran extends StatefulWidget {
  const PencatatanKehadiran({super.key});

  @override
  State<PencatatanKehadiran> createState() => _PencatatanKehadiranState();
}

class _PencatatanKehadiranState extends State<PencatatanKehadiran> {
  List<Map<String, dynamic>> data = [
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
    {"nama": "hello world", "check": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pencatatan kehadiran"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data[index]["nama"]),
                Checkbox(
                  value: data[index]["check"],
                  onChanged: (bool? value) {
                    setState(() {
                      data[index]["check"] = value!;
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
