import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/features/bloc_exemple/bloc/exemple_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exemple_freezed_state.dart';
part 'exemple_freezed_event.dart';
part 'exemple_freezed_bloc.freezed.dart';

class ExempleFreezedBloc
    extends Bloc<ExempleFreezedEvent, ExempleFreezedState> {
  ExempleFreezedBloc() : super(const ExempleFreezedState.initial()) {
    on<_ExempleFreezedEventFindNames>(_findName);
    on<_ExempleFreezedEventaddNames>(_addName);
    on< _ExempleFreezedEventremoveNames>(_removeName);
  }

FutureOr<void> _addName(
   _ExempleFreezedEventaddNames event, Emitter<ExempleFreezedState> emit) {
  final names = state.maybeMap(
    data: (names) => names,
    orElse: () => const <String>[],
  ) as Iterable<String>;
  final newNames = [...names];
  newNames.add(event.name);
  emit(ExempleFreezedState.data(names: newNames));
}

FutureOr<void> _removeName(
  _ExempleFreezedEventremoveNames event, Emitter<ExempleFreezedState> emit) {
     final names = state.maybeMap(
    data: (names) => names,
    orElse: () => const <String>[],
  ) as Iterable<String>;
    final newNames = [...names];
    newNames.retainWhere((element) => element != event.name);
    emit(ExempleStateData(names: newNames) as ExempleFreezedState);
  }
  

  FutureOr<void> _findName(_ExempleFreezedEventFindNames event,
      Emitter<ExempleFreezedState> emit) async {
    final names = ['Raony Lino', 'Lino Raony', 'Lino', 'Raony'];

    // Adiciona um atraso de 4 segundos
    await Future.delayed(const Duration(seconds: 4));

    emit(ExempleFreezedState.data(names: names));
  }
}
