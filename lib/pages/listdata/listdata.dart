import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_app1/pages/contract/contract.dart';
import 'package:http/http.dart' as http;

class Album {
  final int id;
  final String firstName;
  final String lastName;
  final String gender;
  final int salary;

  Album({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.salary,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      gender: json['gender'] as String,
      salary: json['salary'] as int,
    );
  }
}

Future<List<Album>> fetchPhotos(http.Client client) async {
  final response = await client.get(Uri.parse(
      'http://canon-api-alb-8540867.us-east-1.elb.amazonaws.com:8089/api/Employee/GetEmployees?%20content-type=application/json'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response.body);
}

List<Album> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Album>((json) => Album.fromJson(json)).toList();
}

class ListData extends StatelessWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     body: Center(
    //   child: Expanded(
    //       child: SizedBox(
    //     child: Padding(
    //       padding: const EdgeInsets.all(16.0),
    //       child: FutureBuilder<List<Album>>(
    //         future: fetchPhotos(http.Client()),
    //         builder: (context, snapshot) {
    //           if (snapshot.hasError) {
    //             return const Center(
    //               child: Text('An error has occurred!'),
    //             );
    //           } else if (snapshot.hasData) {
    //             return PhotosList(users: snapshot.data!);
    //           } else {
    //             return const Center(
    //               child: CircularProgressIndicator(),
    //             );
    //           }
    //         },
    //       ),
    //     ),
    //     height: 500,
    //   )),
    // )
    // );
    return Scaffold(
      body: FutureBuilder<List<Album>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return PhotosList(test: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class PhotosList extends StatelessWidget {
  const PhotosList({Key? key, required this.test}) : super(key: key);

  final List<Album> test;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: test.length,
      itemBuilder: (context, index) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // padding: EdgeInsets.all(15.0),
                Text(
                  test[index].id.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(test[index].firstName),
                Text(test[index].lastName),
                Text(test[index].gender),
                Text(test[index].salary.toString()),
                ElevatedButton(
                  child: const Text('ออก'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
        // Text(test[index].firstName);
      },
    );
  }
}
