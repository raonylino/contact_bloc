part of 'exemple_bloc.dart';
abstract class ExempleState {}

 class ExempleStateInitial extends ExempleState {}
  class ExempleStateData extends ExempleState {
    final List<String> names;

    ExempleStateData({required this.names});
  }
