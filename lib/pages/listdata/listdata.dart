import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/contract/contract.dart';
import 'package:http/http.dart' as http;

class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class ListData extends StatelessWidget {
  const ListData({Key? key}) : super(key: key);
  Future<Album> fetchPost() async {
    String url = 'https://jsonplaceholder.typicode.com/albums/1';
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Album.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder<Album>(
            future: fetchPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_outlined),
                      title: Text(snapshot.data!.title),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text(snapshot.data!.userId.toString()),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(snapshot.data!.id.toString()),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
