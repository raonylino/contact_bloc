import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contacts_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_state.dart';
part 'contact_register_event.dart';

part 'contact_register_bloc.freezed.dart';

class ContactRegisterBloc extends Bloc<ContactRegisterEvent, ContactRegisterState> {

  final ContactsRepository _contactsRepository;

  ContactRegisterBloc({required ContactsRepository contactsRepository}) :
   _contactsRepository = contactsRepository, 
   super(const ContactRegisterState.initial()) {
    on<_Save>(_save);
  }

  FutureOr<void> _save(_Save event, Emitter<ContactRegisterState> emit) async {
    final contactModel = ContactsModel(
      name: event.name, 
      email:event.email,
      );
    await _contactsRepository.create(contactModel); 
  }
}