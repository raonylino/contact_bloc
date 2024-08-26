import 'dart:async';

import 'package:bloc/bloc.dart';
part 'exemple_event.dart';
part 'exemple_state.dart';

class ExempleBloc extends Bloc<ExempleEvent, ExempleState> {
  ExempleBloc() : super(ExempleStateInitial()) {
    on<ExempleFindNameEvent>(_findName);
    on<ExempleRemoveNameEvent>(_removeName);
    on<ExempleAddNameEvent>(_addName);
  }

  FutureOr<void> _addName(ExempleAddNameEvent event, Emitter<ExempleState> emit) {

    final stateExemple = state;

    if(stateExemple is ExempleStateData){
      final names =[...stateExemple.names];
      names.add(event.name);
      emit(ExempleStateData(names: names));
    }
  }
  
  FutureOr<void> _removeName(ExempleRemoveNameEvent event, Emitter<ExempleState> emit) {

    final stateExemple = state;

    if(stateExemple is ExempleStateData){
      final names =[...stateExemple.names];
      names.retainWhere((element) => element != event.name);
      emit(ExempleStateData(names: names));
    }
  }


 FutureOr<void> _findName(
    ExempleFindNameEvent event, Emitter<ExempleState> emit) async {
  final names = ['Raony Lino', 'Lino Raony', 'Lino', 'Raony'];
  
  // Adiciona um atraso de 4 segundos
  await Future.delayed(const Duration(seconds: 4));
  
  emit(ExempleStateData(names: names));
}
}
