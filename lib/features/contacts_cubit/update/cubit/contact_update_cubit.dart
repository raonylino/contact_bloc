import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contacts_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_cubit_state.dart';
part 'contact_update_cubit.freezed.dart';

class ContactUpdateCubit extends Cubit<ContactUpdateCubitState> {
  final ContactsRepository _contactsRepository;

  ContactUpdateCubit({required contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const ContactUpdateCubitState.initial());

  Future<void> update(ContactsModel contact) async {
    emit(const ContactUpdateCubitState.loading());
    await Future.delayed(const Duration(seconds: 2));
    try {
      final model = ContactsModel(
          name: contact.name, email: contact.email, id: contact.id);
      await _contactsRepository.update(model);
      emit(const ContactUpdateCubitState.success());
    } catch (e, s) {
      log('Erro ao atualizar o contato', error: e, stackTrace: s);
      emit(const ContactUpdateCubitState.error('Erro ao atualizar o contato'));
    }
  }
}
