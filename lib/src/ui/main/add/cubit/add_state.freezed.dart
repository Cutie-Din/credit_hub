// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddState {
  AddStatus get status => throw _privateConstructorUsedError;
  AddModel get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStateCopyWith<AddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStateCopyWith<$Res> {
  factory $AddStateCopyWith(AddState value, $Res Function(AddState) then) =
      _$AddStateCopyWithImpl<$Res, AddState>;
  @useResult
  $Res call({AddStatus status, AddModel data, String message});

  $AddModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AddStateCopyWithImpl<$Res, $Val extends AddState>
    implements $AddStateCopyWith<$Res> {
  _$AddStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddStatus,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddModelCopyWith<$Res> get data {
    return $AddModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddStateImplCopyWith<$Res>
    implements $AddStateCopyWith<$Res> {
  factory _$$AddStateImplCopyWith(
          _$AddStateImpl value, $Res Function(_$AddStateImpl) then) =
      __$$AddStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddStatus status, AddModel data, String message});

  @override
  $AddModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AddStateImplCopyWithImpl<$Res>
    extends _$AddStateCopyWithImpl<$Res, _$AddStateImpl>
    implements _$$AddStateImplCopyWith<$Res> {
  __$$AddStateImplCopyWithImpl(
      _$AddStateImpl _value, $Res Function(_$AddStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$AddStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddStatus,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddStateImpl with DiagnosticableTreeMixin implements _AddState {
  const _$AddStateImpl(
      {this.status = AddStatus.initial,
      this.data = const AddModel(),
      this.message = ''});

  @override
  @JsonKey()
  final AddStatus status;
  @override
  @JsonKey()
  final AddModel data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddState(status: $status, data: $data, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStateImplCopyWith<_$AddStateImpl> get copyWith =>
      __$$AddStateImplCopyWithImpl<_$AddStateImpl>(this, _$identity);
}

abstract class _AddState implements AddState {
  const factory _AddState(
      {final AddStatus status,
      final AddModel data,
      final String message}) = _$AddStateImpl;

  @override
  AddStatus get status;
  @override
  AddModel get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AddStateImplCopyWith<_$AddStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
