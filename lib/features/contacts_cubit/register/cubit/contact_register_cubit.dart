import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contacts_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_cubit_state.dart';

part 'contact_register_cubit.freezed.dart';

class ContactRegisterCubit extends Cubit<ContactRegisterCubitState> {

  final ContactsRepository _contactsRepository;

  ContactRegisterCubit(
  {required ContactsRepository contactsRepository}):
  _contactsRepository = contactsRepository,
  super(const ContactRegisterCubitState.initial());

  Future<void> register(ContactsModel contact) async {
    emit(const ContactRegisterCubitState.loading());
    await Future.delayed(const Duration(seconds: 2));
    try {
      await _contactsRepository.create(contact);
      emit(const ContactRegisterCubitState.success());
    } catch (e,s) {
      log('Erro ao registrar contato', error: e , stackTrace: s);
      emit(const ContactRegisterCubitState.error('Erro ao registrar contato'));
    }

  }
}
