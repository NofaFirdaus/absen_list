import 'package:flutter/material.dart';

class PencatatanKehadiran extends StatefulWidget {
  const PencatatanKehadiran({super.key});

  @override
  State<PencatatanKehadiran> createState() => _PencatatanKehadiranState();
}

class _PencatatanKehadiranState extends State<PencatatanKehadiran> {
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pencatatan kehadiran"),
      ),
      body: ListView(
        children: [

          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(20),
            child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hello World"),
              Checkbox(
                  value:_isCheck,
                  onChanged: (bool? value) {
                    setState(() {
                      _isCheck = value!;
                    });
                  })
            ],
          ),
          )
          
        ],
      ),
    );
  }
}
