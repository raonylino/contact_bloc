part of 'contact_update_cubit.dart';

@freezed
class ContactUpdateCubitState with _$ContactUpdateCubitState {
  const factory ContactUpdateCubitState.initial() = _Initial;
  const factory ContactUpdateCubitState.success() = _Success;
  const factory ContactUpdateCubitState.loading() = _Loading;
  const factory ContactUpdateCubitState.error(String message) = _Error; 
}
