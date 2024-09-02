// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactsModel model) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactsModel model)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactsModel model)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListEventFindAll value)? findAll,
    TResult? Function(_ContactListEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListEventCopyWith<$Res> {
  factory $ContactListEventCopyWith(
          ContactListEvent value, $Res Function(ContactListEvent) then) =
      _$ContactListEventCopyWithImpl<$Res, ContactListEvent>;
}

/// @nodoc
class _$ContactListEventCopyWithImpl<$Res, $Val extends ContactListEvent>
    implements $ContactListEventCopyWith<$Res> {
  _$ContactListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContactListEventFindAllImplCopyWith<$Res> {
  factory _$$ContactListEventFindAllImplCopyWith(
          _$ContactListEventFindAllImpl value,
          $Res Function(_$ContactListEventFindAllImpl) then) =
      __$$ContactListEventFindAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactListEventFindAllImplCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$ContactListEventFindAllImpl>
    implements _$$ContactListEventFindAllImplCopyWith<$Res> {
  __$$ContactListEventFindAllImplCopyWithImpl(
      _$ContactListEventFindAllImpl _value,
      $Res Function(_$ContactListEventFindAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactListEventFindAllImpl
    with DiagnosticableTreeMixin
    implements _ContactListEventFindAll {
  const _$ContactListEventFindAllImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListEvent.findAll()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ContactListEvent.findAll'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListEventFindAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactsModel model) delete,
  }) {
    return findAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactsModel model)? delete,
  }) {
    return findAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactsModel model)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListEventFindAll value)? findAll,
    TResult? Function(_ContactListEventDelete value)? delete,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class _ContactListEventFindAll implements ContactListEvent {
  const factory _ContactListEventFindAll() = _$ContactListEventFindAllImpl;
}

/// @nodoc
abstract class _$$ContactListEventDeleteImplCopyWith<$Res> {
  factory _$$ContactListEventDeleteImplCopyWith(
          _$ContactListEventDeleteImpl value,
          $Res Function(_$ContactListEventDeleteImpl) then) =
      __$$ContactListEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactsModel model});
}

/// @nodoc
class __$$ContactListEventDeleteImplCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$ContactListEventDeleteImpl>
    implements _$$ContactListEventDeleteImplCopyWith<$Res> {
  __$$ContactListEventDeleteImplCopyWithImpl(
      _$ContactListEventDeleteImpl _value,
      $Res Function(_$ContactListEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ContactListEventDeleteImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ContactsModel,
    ));
  }
}

/// @nodoc

class _$ContactListEventDeleteImpl
    with DiagnosticableTreeMixin
    implements _ContactListEventDelete {
  const _$ContactListEventDeleteImpl({required this.model});

  @override
  final ContactsModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListEvent.delete(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactListEvent.delete'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListEventDeleteImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ContactListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactListEventDeleteImplCopyWith<_$ContactListEventDeleteImpl>
      get copyWith => __$$ContactListEventDeleteImplCopyWithImpl<
          _$ContactListEventDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactsModel model) delete,
  }) {
    return delete(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactsModel model)? delete,
  }) {
    return delete?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactsModel model)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListEventFindAll value)? findAll,
    TResult? Function(_ContactListEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _ContactListEventDelete implements ContactListEvent {
  const factory _ContactListEventDelete({required final ContactsModel model}) =
      _$ContactListEventDeleteImpl;

  ContactsModel get model;

  /// Create a copy of ContactListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactListEventDeleteImplCopyWith<_$ContactListEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactsModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactsModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactsModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res, ContactListState>;
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res, $Val extends ContactListState>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContactListStateInitialImplCopyWith<$Res> {
  factory _$$ContactListStateInitialImplCopyWith(
          _$ContactListStateInitialImpl value,
          $Res Function(_$ContactListStateInitialImpl) then) =
      __$$ContactListStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactListStateInitialImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateInitialImpl>
    implements _$$ContactListStateInitialImplCopyWith<$Res> {
  __$$ContactListStateInitialImplCopyWithImpl(
      _$ContactListStateInitialImpl _value,
      $Res Function(_$ContactListStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactListStateInitialImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateInitial {
  const _$ContactListStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ContactListState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactsModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactsModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactsModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateInitial implements ContactListState {
  const factory _ContactListStateInitial() = _$ContactListStateInitialImpl;
}

/// @nodoc
abstract class _$$ContactListStateDataImplCopyWith<$Res> {
  factory _$$ContactListStateDataImplCopyWith(_$ContactListStateDataImpl value,
          $Res Function(_$ContactListStateDataImpl) then) =
      __$$ContactListStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactsModel> contacts});
}

/// @nodoc
class __$$ContactListStateDataImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateDataImpl>
    implements _$$ContactListStateDataImplCopyWith<$Res> {
  __$$ContactListStateDataImplCopyWithImpl(_$ContactListStateDataImpl _value,
      $Res Function(_$ContactListStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$ContactListStateDataImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactsModel>,
    ));
  }
}

/// @nodoc

class _$ContactListStateDataImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateData {
  const _$ContactListStateDataImpl(
      {required final List<ContactsModel> contacts})
      : _contacts = contacts;

  final List<ContactsModel> _contacts;
  @override
  List<ContactsModel> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.data(contacts: $contacts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactListState.data'))
      ..add(DiagnosticsProperty('contacts', contacts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateDataImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactListStateDataImplCopyWith<_$ContactListStateDataImpl>
      get copyWith =>
          __$$ContactListStateDataImplCopyWithImpl<_$ContactListStateDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactsModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return data(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactsModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return data?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactsModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateData implements ContactListState {
  const factory _ContactListStateData(
          {required final List<ContactsModel> contacts}) =
      _$ContactListStateDataImpl;

  List<ContactsModel> get contacts;

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactListStateDataImplCopyWith<_$ContactListStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactListStateErrorImplCopyWith<$Res> {
  factory _$$ContactListStateErrorImplCopyWith(
          _$ContactListStateErrorImpl value,
          $Res Function(_$ContactListStateErrorImpl) then) =
      __$$ContactListStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ContactListStateErrorImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateErrorImpl>
    implements _$$ContactListStateErrorImplCopyWith<$Res> {
  __$$ContactListStateErrorImplCopyWithImpl(_$ContactListStateErrorImpl _value,
      $Res Function(_$ContactListStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ContactListStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactListStateErrorImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateError {
  const _$ContactListStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactListState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactListStateErrorImplCopyWith<_$ContactListStateErrorImpl>
      get copyWith => __$$ContactListStateErrorImplCopyWithImpl<
          _$ContactListStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactsModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactsModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactsModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateError implements ContactListState {
  const factory _ContactListStateError({required final String message}) =
      _$ContactListStateErrorImpl;

  String get message;

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactListStateErrorImplCopyWith<_$ContactListStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactListStateLoadingImplCopyWith<$Res> {
  factory _$$ContactListStateLoadingImplCopyWith(
          _$ContactListStateLoadingImpl value,
          $Res Function(_$ContactListStateLoadingImpl) then) =
      __$$ContactListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactListStateLoadingImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateLoadingImpl>
    implements _$$ContactListStateLoadingImplCopyWith<$Res> {
  __$$ContactListStateLoadingImplCopyWithImpl(
      _$ContactListStateLoadingImpl _value,
      $Res Function(_$ContactListStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactListStateLoadingImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateLoading {
  const _$ContactListStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ContactListState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactsModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactsModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactsModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateLoading implements ContactListState {
  const factory _ContactListStateLoading() = _$ContactListStateLoadingImpl;
}
