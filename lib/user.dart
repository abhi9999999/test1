// import 'dart:convert';
//
// List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));
//
// String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class User {
// User({
// this.createdAt,
// this.name,
// this.avatar,
// this.id,
// this.qualifications,
// });
//
// DateTime? createdAt;
// String? name;
// String? avatar;
// String? id;
// List<Qualification>? qualifications;
//
// factory User.fromJson(Map<String, dynamic> json) => User(
// createdAt: DateTime.parse(json["createdAt"]),
// name: json["name"],
// avatar: json["avatar"],
// id: json["id"],
// qualifications: json["qualifications"] != null
// ? List<Qualification>.from(json["qualifications"].map((x) => Qualification.fromJson(x)))
// : [],
// );
//
// Map<String, dynamic> toJson() => {
// "name": name,
// "qualifications": qualifications != null ? List<dynamic>.from(qualifications!.map((x) => x.toJson())) : [],
// };
// }
//
// class Qualification {
// Qualification({
// this.degree,
// this.completionData,
// });
//
// String? degree;
// String? completionData;
//
// factory Qualification.fromJson(Map<String, dynamic> json) => Qualification(
// degree: json["degree"],
// completionData: json["completionData"],
// );
//
// Map<String, dynamic> toJson() => {
// "degree": degree,
// "completionData": completionData,
// };
// }
//

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.createdAt,
    this.name,
    this.avatar,
    this.id,
    this.qualifications,
    this.agentId,
    this.allOrder,
  });

  DateTime? createdAt;
  String? name;
  String? avatar;
  String? id;
  List<Qualification>? qualifications;
  String? agentId;
  String? allOrder;

  factory User.fromJson(Map<String, dynamic> json) => User(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        id: json["id"],
        qualifications: json["qualifications"] != null
            ? List<Qualification>.from(
                json["qualifications"].map((x) => Qualification.fromJson(x)))
            : [],
        agentId: json["agentID"] == null ? null : json["agentID"],
        allOrder: json["allOrder"] == null ? null : json["allOrder"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt!.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "id": id,
        "qualifications": qualifications == null
            ? null
            : List<dynamic>.from(qualifications!.map((x) => x.toJson())),
        "agentID": agentId == null ? null : agentId,
        "allOrder": allOrder == null ? null : allOrder,
      };
}

class Qualification {
  Qualification({
    required this.degree,
    required this.completionData,
  });

  String degree;
  String completionData;

  factory Qualification.fromJson(Map<String, dynamic> json) => Qualification(
        degree: json["degree"],
        completionData: json["completionData"],
      );

  Map<String, dynamic> toJson() => {
        "degree": degree,
        "completionData": completionData,
      };
}
