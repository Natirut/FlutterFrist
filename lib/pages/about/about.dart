import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/contract/contract.dart';

class AboutPage extends StatelessWidget {
  String username = "";
  String password = "";
  // const AboutPage({Key? key}) : super(key: key);
  AboutPage({Key? key, required this.username, required this.password})
      : super(key: key);

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
      Text('USER: $username'),
      Text('PASS: $password'),
      const Text(
        "ff",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      ElevatedButton(
        child: const Text('Open route'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      ElevatedButton(
        child: const Text('Open Dialog'),
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => const DialogContract(),
        ),
      ),
    ])));
  }
}
