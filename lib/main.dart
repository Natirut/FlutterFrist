// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/about/about.dart';
import 'package:flutter_app1/pages/camera/takeimg.dart';
import 'package:flutter_app1/pages/listdata/listdata.dart';
import 'package:flutter_app1/pages/rowcolumn/rowcolumn.dart';
import "package:fluttertoast/fluttertoast.dart";
import 'package:http/http.dart' as http;

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
  String uusername = "";
  String ppassword = "";

  void checklogin() {
    if (uusername == "" || ppassword == "") {
      Fluttertoast.showToast(msg: "USER OR PASS", fontSize: 16.0);
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AboutPage(
                    username: uusername,
                    password: ppassword,
                  )));
    }
  }

  void showgrid() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const RowColumn(
                // username: uusername,
                // password: ppassword,
                )));
  }

  void showlistdata() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ListData(
                // username: uusername,
                // password: ppassword,
                )));
  }

  // void opencamera() {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) =>  const TakePictureScreen(
  //                camera: uusername,
  //               )));
  // }

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
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onChanged: (value) {
                  uusername = value;
                  // Fluttertoast.showToast(msg: value, fontSize: 16.0);
                },
                //  controller: textFieldController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onChanged: (value) {
                  ppassword = value;
                  // Fluttertoast.showToast(msg: value, fontSize: 16.0);
                },
                obscureText: true,
                decoration: const InputDecoration(
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
            OutlinedButton(
              onPressed: showgrid,
              child: const Text("ShowGrid"),
            ),
            OutlinedButton(
              onPressed: showlistdata,
              child: const Text("ShowGetAPI"),
            ),
            //     OutlinedButton(
            //   onPressed: opencamera,
            //   child: const Text("OpenCamera"),
            // ),
          ],
        ),
      ),
    );
  }
}
