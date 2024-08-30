import 'dart:async';
import 'dart:developer';


import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contacts_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_bloc.freezed.dart';

part 'contact_list_event.dart';

part 'contact_list_state.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final ContactsRepository _repository;

  ContactListBloc({required ContactsRepository repository})
      : _repository = repository,
        super(const ContactListState.initial()) {
    on<_ContactListEventFindAll>(_findAll);
  }

  Future<void> _findAll(
      _ContactListEventFindAll event, Emitter<ContactListState> emit) async {
    try {
      emit(const ContactListState.loading());
      await Future.delayed(const Duration(seconds: 2));
      final contacts = await _repository.findAll();
      emit(ContactListState.data(contacts: contacts));
    } on Exception catch (e,s) {
      log('Erro ao buscar contatos', error: e , stackTrace: s);
      emit(const ContactListState.error(message: 'Erro ao buscar contatos'));
    }
  }
}
