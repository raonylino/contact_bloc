part of 'contact_list_bloc.dart';

@freezed
class ContactListEvent with _$ContactListEvent {

  const factory ContactListEvent.findAll() = _ContactListEventFindAll;
  const factory ContactListEvent.delete(
    {required ContactsModel model}
  ) = _ContactListEventDelete;

}