part of 'exemple_freezed_bloc.dart';

@freezed
class ExempleFreezedState with _$ExempleFreezedState {
  const factory ExempleFreezedState.initial() = _ExempleFreezedStateInitial;
  const factory ExempleFreezedState.data({required List<String> names}) = _ExempleFreezedStateData;
}

