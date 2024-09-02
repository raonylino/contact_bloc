part of 'contact_register_cubit.dart';

@freezed
class ContactRegisterCubitState with _$ContactRegisterCubitState {
  const factory ContactRegisterCubitState.initial() = _Initial;
  const factory ContactRegisterCubitState.success() = _Success;
  const factory ContactRegisterCubitState.error(String message) = _Error;
  const factory ContactRegisterCubitState.loading() = _Loading;
}
