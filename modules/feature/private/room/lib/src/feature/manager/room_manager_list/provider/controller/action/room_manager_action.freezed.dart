// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_manager_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomManagerAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomManagerActionCopyWith<$Res> {
  factory $RoomManagerActionCopyWith(
          RoomManagerAction value, $Res Function(RoomManagerAction) then) =
      _$RoomManagerActionCopyWithImpl<$Res, RoomManagerAction>;
}

/// @nodoc
class _$RoomManagerActionCopyWithImpl<$Res, $Val extends RoomManagerAction>
    implements $RoomManagerActionCopyWith<$Res> {
  _$RoomManagerActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnAppearTappedImplCopyWith<$Res> {
  factory _$$OnAppearTappedImplCopyWith(_$OnAppearTappedImpl value,
          $Res Function(_$OnAppearTappedImpl) then) =
      __$$OnAppearTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$OnAppearTappedImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$OnAppearTappedImpl>
    implements _$$OnAppearTappedImplCopyWith<$Res> {
  __$$OnAppearTappedImplCopyWithImpl(
      _$OnAppearTappedImpl _value, $Res Function(_$OnAppearTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$OnAppearTappedImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$OnAppearTappedImpl implements _OnAppearTapped {
  const _$OnAppearTappedImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RoomManagerAction.onAppear(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAppearTappedImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAppearTappedImplCopyWith<_$OnAppearTappedImpl> get copyWith =>
      __$$OnAppearTappedImplCopyWithImpl<_$OnAppearTappedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements RoomManagerAction {
  const factory _OnAppearTapped(final BuildContext context) =
      _$OnAppearTappedImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$OnAppearTappedImplCopyWith<_$OnAppearTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonTappedImplCopyWith<$Res> {
  factory _$$ButtonTappedImplCopyWith(
          _$ButtonTappedImpl value, $Res Function(_$ButtonTappedImpl) then) =
      __$$ButtonTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Room room});
}

/// @nodoc
class __$$ButtonTappedImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$ButtonTappedImpl>
    implements _$$ButtonTappedImplCopyWith<$Res> {
  __$$ButtonTappedImplCopyWithImpl(
      _$ButtonTappedImpl _value, $Res Function(_$ButtonTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$ButtonTappedImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$ButtonTappedImpl implements _ButtonTapped {
  const _$ButtonTappedImpl(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomManagerAction.buttonTapped(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonTappedImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonTappedImplCopyWith<_$ButtonTappedImpl> get copyWith =>
      __$$ButtonTappedImplCopyWithImpl<_$ButtonTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return buttonTapped(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return buttonTapped?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return buttonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return buttonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped(this);
    }
    return orElse();
  }
}

abstract class _ButtonTapped implements RoomManagerAction {
  const factory _ButtonTapped(final Room room) = _$ButtonTappedImpl;

  Room get room;
  @JsonKey(ignore: true)
  _$$ButtonTappedImplCopyWith<_$ButtonTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonAddRoomTappedImplCopyWith<$Res> {
  factory _$$ButtonAddRoomTappedImplCopyWith(_$ButtonAddRoomTappedImpl value,
          $Res Function(_$ButtonAddRoomTappedImpl) then) =
      __$$ButtonAddRoomTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ButtonAddRoomTappedImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$ButtonAddRoomTappedImpl>
    implements _$$ButtonAddRoomTappedImplCopyWith<$Res> {
  __$$ButtonAddRoomTappedImplCopyWithImpl(_$ButtonAddRoomTappedImpl _value,
      $Res Function(_$ButtonAddRoomTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ButtonAddRoomTappedImpl implements _ButtonAddRoomTapped {
  const _$ButtonAddRoomTappedImpl();

  @override
  String toString() {
    return 'RoomManagerAction.buttonAddRoomTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonAddRoomTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return buttonAddRoomTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return buttonAddRoomTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (buttonAddRoomTapped != null) {
      return buttonAddRoomTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return buttonAddRoomTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return buttonAddRoomTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (buttonAddRoomTapped != null) {
      return buttonAddRoomTapped(this);
    }
    return orElse();
  }
}

abstract class _ButtonAddRoomTapped implements RoomManagerAction {
  const factory _ButtonAddRoomTapped() = _$ButtonAddRoomTappedImpl;
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
      _$ServiceImpl _value, $Res Function(_$ServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceImpl implements _Service {
  const _$ServiceImpl();

  @override
  String toString() {
    return 'RoomManagerAction.service()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return service();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return service?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class _Service implements RoomManagerAction {
  const factory _Service() = _$ServiceImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RoomManagerAction.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
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
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RoomManagerAction {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomSettingResponseDTO dto});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SuccessImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as RoomSettingResponseDTO,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.dto);

  @override
  final RoomSettingResponseDTO dto;

  @override
  String toString() {
    return 'RoomManagerAction.success(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return success(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return success?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RoomManagerAction {
  const factory _Success(final RoomSettingResponseDTO dto) = _$SuccessImpl;

  RoomSettingResponseDTO get dto;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorInfo error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final ErrorInfo error;

  @override
  String toString() {
    return 'RoomManagerAction.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RoomManagerAction {
  const factory _Failure(final ErrorInfo error) = _$FailureImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterRoomByTextImplCopyWith<$Res> {
  factory _$$FilterRoomByTextImplCopyWith(_$FilterRoomByTextImpl value,
          $Res Function(_$FilterRoomByTextImpl) then) =
      __$$FilterRoomByTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$FilterRoomByTextImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$FilterRoomByTextImpl>
    implements _$$FilterRoomByTextImplCopyWith<$Res> {
  __$$FilterRoomByTextImplCopyWithImpl(_$FilterRoomByTextImpl _value,
      $Res Function(_$FilterRoomByTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$FilterRoomByTextImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterRoomByTextImpl implements _FilterRoomByText {
  const _$FilterRoomByTextImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'RoomManagerAction.filterRoomByText(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterRoomByTextImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterRoomByTextImplCopyWith<_$FilterRoomByTextImpl> get copyWith =>
      __$$FilterRoomByTextImplCopyWithImpl<_$FilterRoomByTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return filterRoomByText(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return filterRoomByText?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (filterRoomByText != null) {
      return filterRoomByText(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return filterRoomByText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return filterRoomByText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (filterRoomByText != null) {
      return filterRoomByText(this);
    }
    return orElse();
  }
}

abstract class _FilterRoomByText implements RoomManagerAction {
  const factory _FilterRoomByText(final String userName) =
      _$FilterRoomByTextImpl;

  String get userName;
  @JsonKey(ignore: true)
  _$$FilterRoomByTextImplCopyWith<_$FilterRoomByTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PullToRefreshImplCopyWith<$Res> {
  factory _$$PullToRefreshImplCopyWith(
          _$PullToRefreshImpl value, $Res Function(_$PullToRefreshImpl) then) =
      __$$PullToRefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PullToRefreshImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$PullToRefreshImpl>
    implements _$$PullToRefreshImplCopyWith<$Res> {
  __$$PullToRefreshImplCopyWithImpl(
      _$PullToRefreshImpl _value, $Res Function(_$PullToRefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PullToRefreshImpl implements _PullToRefresh {
  const _$PullToRefreshImpl();

  @override
  String toString() {
    return 'RoomManagerAction.pullToRefresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PullToRefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return pullToRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return pullToRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullToRefresh implements RoomManagerAction {
  const factory _PullToRefresh() = _$PullToRefreshImpl;
}

/// @nodoc
abstract class _$$OfflineServiceImplCopyWith<$Res> {
  factory _$$OfflineServiceImplCopyWith(_$OfflineServiceImpl value,
          $Res Function(_$OfflineServiceImpl) then) =
      __$$OfflineServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfflineServiceImplCopyWithImpl<$Res>
    extends _$RoomManagerActionCopyWithImpl<$Res, _$OfflineServiceImpl>
    implements _$$OfflineServiceImplCopyWith<$Res> {
  __$$OfflineServiceImplCopyWithImpl(
      _$OfflineServiceImpl _value, $Res Function(_$OfflineServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OfflineServiceImpl implements _OfflineService {
  const _$OfflineServiceImpl();

  @override
  String toString() {
    return 'RoomManagerAction.offlineService()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfflineServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function() buttonAddRoomTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String userName) filterRoomByText,
    required TResult Function() pullToRefresh,
    required TResult Function() offlineService,
  }) {
    return offlineService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function()? buttonAddRoomTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String userName)? filterRoomByText,
    TResult? Function()? pullToRefresh,
    TResult? Function()? offlineService,
  }) {
    return offlineService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function()? buttonAddRoomTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String userName)? filterRoomByText,
    TResult Function()? pullToRefresh,
    TResult Function()? offlineService,
    required TResult orElse(),
  }) {
    if (offlineService != null) {
      return offlineService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonAddRoomTapped value) buttonAddRoomTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FilterRoomByText value) filterRoomByText,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_OfflineService value) offlineService,
  }) {
    return offlineService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FilterRoomByText value)? filterRoomByText,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
    TResult? Function(_OfflineService value)? offlineService,
  }) {
    return offlineService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonAddRoomTapped value)? buttonAddRoomTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_FilterRoomByText value)? filterRoomByText,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_OfflineService value)? offlineService,
    required TResult orElse(),
  }) {
    if (offlineService != null) {
      return offlineService(this);
    }
    return orElse();
  }
}

abstract class _OfflineService implements RoomManagerAction {
  const factory _OfflineService() = _$OfflineServiceImpl;
}
