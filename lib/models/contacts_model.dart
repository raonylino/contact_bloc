// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ContactsModel {
  final String? id;
  final String name;
  final String email;

  ContactsModel({
    this.id, 
    required this.name, 
    required this.email,
    });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory ContactsModel.fromMap(Map<String, dynamic> map) {
    return ContactsModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactsModel.fromJson(String source) => ContactsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
