// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Room room) onAppear,
    required TResult Function(String roomId) buttonTapped,
    required TResult Function(String userId) buttonUserTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Room room)? onAppear,
    TResult? Function(String roomId)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Room room)? onAppear,
    TResult Function(String roomId)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailActionCopyWith<$Res> {
  factory $DetailActionCopyWith(
          DetailAction value, $Res Function(DetailAction) then) =
      _$DetailActionCopyWithImpl<$Res, DetailAction>;
}

/// @nodoc
class _$DetailActionCopyWithImpl<$Res, $Val extends DetailAction>
    implements $DetailActionCopyWith<$Res> {
  _$DetailActionCopyWithImpl(this._value, this._then);

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
  $Res call({BuildContext context, Room room});
}

/// @nodoc
class __$$OnAppearTappedImplCopyWithImpl<$Res>
    extends _$DetailActionCopyWithImpl<$Res, _$OnAppearTappedImpl>
    implements _$$OnAppearTappedImplCopyWith<$Res> {
  __$$OnAppearTappedImplCopyWithImpl(
      _$OnAppearTappedImpl _value, $Res Function(_$OnAppearTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? room = null,
  }) {
    return _then(_$OnAppearTappedImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$OnAppearTappedImpl implements _OnAppearTapped {
  const _$OnAppearTappedImpl(this.context, this.room);

  @override
  final BuildContext context;
  @override
  final Room room;

  @override
  String toString() {
    return 'DetailAction.onAppear(context: $context, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAppearTappedImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAppearTappedImplCopyWith<_$OnAppearTappedImpl> get copyWith =>
      __$$OnAppearTappedImplCopyWithImpl<_$OnAppearTappedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Room room) onAppear,
    required TResult Function(String roomId) buttonTapped,
    required TResult Function(String userId) buttonUserTapped,
  }) {
    return onAppear(context, room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Room room)? onAppear,
    TResult? Function(String roomId)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
  }) {
    return onAppear?.call(context, room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Room room)? onAppear,
    TResult Function(String roomId)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(context, room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements DetailAction {
  const factory _OnAppearTapped(final BuildContext context, final Room room) =
      _$OnAppearTappedImpl;

  BuildContext get context;
  Room get room;
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
  $Res call({String roomId});
}

/// @nodoc
class __$$ButtonTappedImplCopyWithImpl<$Res>
    extends _$DetailActionCopyWithImpl<$Res, _$ButtonTappedImpl>
    implements _$$ButtonTappedImplCopyWith<$Res> {
  __$$ButtonTappedImplCopyWithImpl(
      _$ButtonTappedImpl _value, $Res Function(_$ButtonTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$ButtonTappedImpl(
      null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ButtonTappedImpl implements _ButtonTapped {
  const _$ButtonTappedImpl(this.roomId);

  @override
  final String roomId;

  @override
  String toString() {
    return 'DetailAction.buttonTapped(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonTappedImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonTappedImplCopyWith<_$ButtonTappedImpl> get copyWith =>
      __$$ButtonTappedImplCopyWithImpl<_$ButtonTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Room room) onAppear,
    required TResult Function(String roomId) buttonTapped,
    required TResult Function(String userId) buttonUserTapped,
  }) {
    return buttonTapped(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Room room)? onAppear,
    TResult? Function(String roomId)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
  }) {
    return buttonTapped?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Room room)? onAppear,
    TResult Function(String roomId)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
  }) {
    return buttonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
  }) {
    return buttonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped(this);
    }
    return orElse();
  }
}

abstract class _ButtonTapped implements DetailAction {
  const factory _ButtonTapped(final String roomId) = _$ButtonTappedImpl;

  String get roomId;
  @JsonKey(ignore: true)
  _$$ButtonTappedImplCopyWith<_$ButtonTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonUserTappedImplCopyWith<$Res> {
  factory _$$ButtonUserTappedImplCopyWith(_$ButtonUserTappedImpl value,
          $Res Function(_$ButtonUserTappedImpl) then) =
      __$$ButtonUserTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$ButtonUserTappedImplCopyWithImpl<$Res>
    extends _$DetailActionCopyWithImpl<$Res, _$ButtonUserTappedImpl>
    implements _$$ButtonUserTappedImplCopyWith<$Res> {
  __$$ButtonUserTappedImplCopyWithImpl(_$ButtonUserTappedImpl _value,
      $Res Function(_$ButtonUserTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ButtonUserTappedImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ButtonUserTappedImpl implements _ButtonUserTapped {
  const _$ButtonUserTappedImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'DetailAction.buttonUserTapped(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonUserTappedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonUserTappedImplCopyWith<_$ButtonUserTappedImpl> get copyWith =>
      __$$ButtonUserTappedImplCopyWithImpl<_$ButtonUserTappedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Room room) onAppear,
    required TResult Function(String roomId) buttonTapped,
    required TResult Function(String userId) buttonUserTapped,
  }) {
    return buttonUserTapped(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Room room)? onAppear,
    TResult? Function(String roomId)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
  }) {
    return buttonUserTapped?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Room room)? onAppear,
    TResult Function(String roomId)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    required TResult orElse(),
  }) {
    if (buttonUserTapped != null) {
      return buttonUserTapped(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
  }) {
    return buttonUserTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
  }) {
    return buttonUserTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    required TResult orElse(),
  }) {
    if (buttonUserTapped != null) {
      return buttonUserTapped(this);
    }
    return orElse();
  }
}

abstract class _ButtonUserTapped implements DetailAction {
  const factory _ButtonUserTapped(final String userId) = _$ButtonUserTappedImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$ButtonUserTappedImplCopyWith<_$ButtonUserTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
