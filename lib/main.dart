import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/about/about.dart';
import "package:fluttertoast/fluttertoast.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Pagee'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final textFieldController = TextEditingController();
  String username = "";
  String password = "";

  void checklogin() {
    if (username == "" || password == "") {
      Fluttertoast.showToast(msg: "USER OR PASS", fontSize: 16.0);
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AboutPage(
                    username: username,
                    password: password,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              // padding: EdgeInsets.all(15.0),
              child: Text(
                'MY APP SYSTEM',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                onChanged: (value) {
                  username = value;
                  // Fluttertoast.showToast(msg: value, fontSize: 16.0);
                },
                //  controller: textFieldController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                onChanged: (value) {
                  password = value;
                  // Fluttertoast.showToast(msg: value, fontSize: 16.0);
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            // const Text(
            //   'You have pushed the button this many timesdd:',
            // ),

            OutlinedButton(
              onPressed: checklogin,
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
