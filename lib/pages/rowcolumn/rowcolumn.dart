import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  // const AboutPage({Key? key}) : super(key: key);
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      const Text(
        "GRID",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "รอบการขับรถ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              // backgroundColor: Colors.green,
            ),
          ),
          const Text(
            "นติรุต ดวงภาค",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "2 สิงหาคม 2564",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      //  style: TextStyle(color: Colors.white),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "2 สิงหาคม 2564",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("01 Shuttle Bus ภัชราภรณ์"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("สถานะระบบ"),
          const Text("ผลการสแกนบัตร"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("พร้อม"),
          const Text("ผ่าน"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("เวลา"),
          const Text("จำนวนผู้โดยสาร"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("17:20",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.green,
              )),
          const Text(
            "15",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text('ส่งข้อมูล'),
            onPressed: () {
              // Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: const Text('ออก'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // const Text("15"),
        ],
      ),
    ])));
  }
}
