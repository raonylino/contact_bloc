import 'package:contact_bloc/models/contacts_model.dart';
import 'package:dio/dio.dart';

class ContactsRepository {
Future<List<ContactsModel>> findAll() async {
  try {
    final response = await Dio().get('http://10.0.2.2:3031/contacts');
    return response.data?.map<ContactsModel>((contact) => ContactsModel.fromMap(contact)).toList();
  } catch (e) {
    throw Exception('Erro ao buscar contatos: $e');
  }
}

  Future <void> create(ContactsModel model) async {
    await Dio().post('http://10.0.2.2:3031/contacts', data: model.toMap());
  }
  
  Future <void> update(ContactsModel model) async =>
    Dio().put('http://10.0.2.2:3031/contacts/${model.id}', data: model.toMap());

  Future <void> delete(ContactsModel model) async =>
    Dio().delete('http://10.0.2.2:3031/contacts/${model.id}');  
}
