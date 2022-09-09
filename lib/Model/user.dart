//import 'package:meta/meta.dart';

import '../utils.dart';

class UserField {
  static final String lastMessageTime = 'lastMessageTime';
}

class User {
  final String idUser;
  final String name;
  final String urlAvatar;
  final DateTime lastMessageTime;

  const User({
    required this.idUser,
    required this.name,
    required this.urlAvatar,
    required this.lastMessageTime,
  });

  User copyWith({
    required String idUser,
    required String name,
    required String urlAvatar,
    required DateTime  lastMessageTime,
  }) =>
      User(
        idUser: idUser ,
        name: name ,
        urlAvatar: urlAvatar,
        lastMessageTime: lastMessageTime,
      );

  static User fromJson(Map<String, dynamic> json) => User(
    idUser: json['idUser'],
    name: json['name'],
    urlAvatar: json['urlAvatar'],
    lastMessageTime: json['lastMessageTime'],
  );

  Map<String, dynamic> toJson() => {
    'idUser': idUser,
    'name': name,
    'urlAvatar': urlAvatar,
    'lastMessageTime': Utils.fromDateTimeToJson(lastMessageTime),
  };
}