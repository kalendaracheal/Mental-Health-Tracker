// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'package:meta/meta.dart';

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserField {
  static const String lastMessageTime = 'lastMessageTime';
}

class User {
  final String idUser;
  final String name;
  final String urlAvatar;
  final Timestamp lastMessageTime;

  const User({
    required this.idUser,
    required this.name,
    required this.urlAvatar,
    required this.lastMessageTime,
  });

  User copyWith({
    String? idUser,
    String? name,
    String? urlAvatar,
    Timestamp? lastMessageTime,
  }) {
    return User(
      idUser: idUser ?? this.idUser,
      name: name ?? this.name,
      urlAvatar: urlAvatar ?? this.urlAvatar,
      lastMessageTime: lastMessageTime ?? this.lastMessageTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idUser': idUser,
      'name': name,
      'urlAvatar': urlAvatar,
      'lastMessageTime': lastMessageTime,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      idUser: map['idUser'] as String,
      name: map['name'] as String,
      urlAvatar: map['urlAvatar'] as String,
      lastMessageTime: map['lastMessageTime'] as Timestamp,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(idUser: $idUser, name: $name, urlAvatar: $urlAvatar, lastMessageTime: $lastMessageTime)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.idUser == idUser &&
      other.name == name &&
      other.urlAvatar == urlAvatar &&
      other.lastMessageTime == lastMessageTime;
  }

  @override
  int get hashCode {
    return idUser.hashCode ^
      name.hashCode ^
      urlAvatar.hashCode ^
      lastMessageTime.hashCode;
  }
}

