// import 'package:flutter/material.dart';
// // import 'package:rest_api_example/model/user_model.dart';
// // import 'package:rest_api_example/services/api_service.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// class Home extends StatefulWidget {
  
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   late List<UserModel>? _userModel = [];
//   @override
//   void initState() {
//     super.initState();
//     _getData();
//   }

//   void _getData() async {
//     _userModel = (await ApiService().getUsers())!;
//     Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('REST API Example'),
//       ),
//       body: _userModel == null || _userModel!.isEmpty
//           ? const Center(
//               child: CircularProgressIndicator(),
//             )
//           : ListView.builder(
//               itemCount: _userModel!.length,
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(_userModel![index].id.toString()),
//                           Text(_userModel![index].username),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 20.0,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(_userModel![index].email),
//                           Text(_userModel![index].website),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }


// // import 'dart:developer';
// // 
// // 
// // import 'package:rest_api_example/constants.dart';
// // import 'package:rest_api_example/model/user_model.dart';

// class ApiService {
//   Future<List<Album>?> getUsers() async {
//     try {
//       var url = Uri.parse(ApiConstants.baseUrl);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         List<Album> _model = Album.fromJson(response.body);
//         return _model;
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }

// class ApiConstants {
//   static String baseUrl = 'https://jsonplaceholder.typicode.com/users';
//   static String usersEndpoint = '/users';
// }



// // List<Album> albumFromJson(String str) => List<Album>.from(json.decode(str).map((x) => Album.fromJson(x)));

// // String albumToJson(List<Album> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Album {
//     Album({
//         required this.id,
//        required this.name,
//       required  this.username,
//       required  this.email,
//       required  this.address,
//       required  this.phone,
//       required  this.website,
//       required  this.company,
//     });

//     int id;
//     String name;
//     String username;
//     String email;
//     Address address;
//     String phone;
//     String website;
//     Company company;

//     factory Album.fromJson(Map<String, dynamic> json) => Album(
//         id: json["id"],
//         name: json["name"],
//         username: json["username"],
//         email: json["email"],
//         address: Address.fromJson(json["address"]),
//         phone: json["phone"],
//         website: json["website"],
//         company: Company.fromJson(json["company"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "username": username,
//         "email": email,
//         "address": address.toJson(),
//         "phone": phone,
//         "website": website,
//         "company": company.toJson(),
//     };
// }

// class Address {
//     Address({
//      required  this.street,
//      required  this.suite,
//      required  this.city,
//      required  this.zipcode,
//      required  this.geo,
//     });

//     String street;
//     String suite;
//     String city;
//     String zipcode;
//     Geo geo;

//     factory Address.fromJson(Map<String, dynamic> json) => Address(
//         street: json["street"],
//         suite: json["suite"],
//         city: json["city"],
//         zipcode: json["zipcode"],
//         geo: Geo.fromJson(json["geo"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "street": street,
//         "suite": suite,
//         "city": city,
//         "zipcode": zipcode,
//         "geo": geo.toJson(),
//     };
// }

// class Geo {
//     Geo({
//      required   this.lat,
//      required   this.lng,
//     });

//     String lat;
//     String lng;

//     factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"],
//         lng: json["lng"],
//     );

//     Map<String, dynamic> toJson() => {
//         "lat": lat,
//         "lng": lng,
//     };
// }

// class Company {
//     Company({
//         this.name,
//         this.catchPhrase,
//         this.bs,
//     });

//     String name;
//     String catchPhrase;
//     String bs;

//     factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"],
//         catchPhrase: json["catchPhrase"],
//         bs: json["bs"],
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name,
//         "catchPhrase": catchPhrase,
//         "bs": bs,
//     };
// }
