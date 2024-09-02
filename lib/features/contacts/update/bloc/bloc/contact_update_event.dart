part of 'contact_update_bloc.dart';

@freezed
class ContactUpdateEvent with _$ContactUpdateEvent {
  const factory ContactUpdateEvent.save({
    required String name,
    required String email,
    required int id,
  }) = _Save;

}

