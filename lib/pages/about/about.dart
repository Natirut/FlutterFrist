import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String props_username = "";
  final String props_password = "";
  const AboutPage({Key? key, username, password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //     child: ElevatedButton(
    //       child: const Text('Open route'),
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //     ),
    //   ),
    // );
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Text(
        "ff",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      ElevatedButton(
        child: const Text('Open route'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ])));
  }
}
