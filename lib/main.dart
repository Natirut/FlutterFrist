import 'package:flutter/material.dart';

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
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     // ignore: prefer_const_constructors
      //     icon: Icon(Icons.person),
      //   ),
      //   title: Text(widget.title),
      //   actions: <Widget>[
      //     IconButton(
      //         onPressed: () {
      //           // ignore: avoid_print
      //           print('add');
      //         },
      //         // ignore: prefer_const_constructors
      //         icon: Icon(Icons.add))
      //   ],
      // ),
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

            // const TextField(
            //   obscureText: true,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Password',
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                // obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
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
              onPressed: () {},
              child: const Text("Login"),
            ),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
