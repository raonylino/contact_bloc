import 'dart:convert';

class ContactsModel {
  final int? id; // Alterado para int
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
      id: map['id'] != null ? map['id'] as int : null, // Alterado para int
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactsModel.fromJson(String source) => ContactsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}