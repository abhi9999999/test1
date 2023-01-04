// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api/page.dart';
import 'package:http/http.dart' as http;

import 'data_fetching/homepage.dart';
import 'home_page.dart';

// class Album {
//   Album({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.body,
//   });

//   int userId;
//   int id;
//   String title;
//   String body;

//   factory Album.fromJson(Map<String, dynamic> json) => Album(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//       );

//   Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//       };
// }

void main() => runApp(const MyApp());
var StringRespance;
var mapresponce;
var datarespose;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Future fetchAlbum() async {
  // http.Response response;
  // response = await http.get(Uri.parse('https://reqres.in/api/users/2'));

  // if (response.statusCode == 200) {
  // If the server did return a 200 OK response,
  // then parse the JSON.

  // setState(() {
  // StringRespan ce =

  // mapresponce = jsonDecode(response.body);
  // datarespose = mapresponce["data"];
  // print(mapresponce);
  // });
  // }
  // }

  // @override
  // void initState() {
  // fetchAlbum();
  // super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fetch Data Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage()

        // Scaffold(
        //   appBar: AppBar(
        //     title: const Text('Fetch Data Example'),
        //   ),
        //   body: ListView.builder(
        //       itemCount: datarespose == null ? null : datarespose.length,
        //       itemBuilder: (context, index) {
        //         return Center(
        //           child: Container(
        //             child: Text("${datarespose["first_name"].toString()}"),
        //           ),
        //         );
        //       }),
        // ),
        // ),
        );
  }
}
