import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contacts_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_cubit_state.dart';
part 'contact_list_cubit_cubit.freezed.dart';

class ContactListCubit extends Cubit<ContactListCubitState> {

  final ContactsRepository _repository;



  ContactListCubit(
    {required ContactsRepository repository,}):
    _repository = repository,
    super(const ContactListCubitState.initial());

  Future<void> findAll() async {
    emit(const ContactListCubitState.loading());
    await Future.delayed(const Duration(seconds: 2));
    try {
      final contacts = await _repository.findAll();
      emit(ContactListCubitState.data(contacts: contacts));
    } catch (e,s) {
      log('Erro ao buscar contatos', error: e , stackTrace: s);
      emit(const ContactListCubitState.error(message: 'Erro ao buscar contatos'));
    }
  }

  Future<void> deleteByModel(ContactsModel model) async {
    try {
      emit(const ContactListCubitState.loading());
      await Future.delayed(const Duration(seconds: 2));
      await _repository.delete(model);
      findAll();
    } catch (e,s) {
      log('Erro ao deletar contato', error: e , stackTrace: s);
      emit(const ContactListCubitState.error(message: 'Erro ao deletar contato'));
    }
  }

}
