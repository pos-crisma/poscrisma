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
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function(String userId) buttonUserTapped,
    required TResult Function(bool isLoading) loading,
    required TResult Function() service,
    required TResult Function(Room dto) success,
    required TResult Function(ErrorInfo error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
    TResult? Function(bool isLoading)? loading,
    TResult? Function()? service,
    TResult? Function(Room dto)? success,
    TResult? Function(ErrorInfo error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    TResult Function(bool isLoading)? loading,
    TResult Function()? service,
    TResult Function(Room dto)? success,
    TResult Function(ErrorInfo error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Service value) service,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Service value)? service,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult Function(_Loading value)? loading,
    TResult Function(_Service value)? service,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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
  $Res call({BuildContext context});
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
    return 'DetailAction.onAppear(context: $context)';
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
    required TResult Function(String userId) buttonUserTapped,
    required TResult Function(bool isLoading) loading,
    required TResult Function() service,
    required TResult Function(Room dto) success,
    required TResult Function(ErrorInfo error) failure,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
    TResult? Function(bool isLoading)? loading,
    TResult? Function()? service,
    TResult? Function(Room dto)? success,
    TResult? Function(ErrorInfo error)? failure,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    TResult Function(bool isLoading)? loading,
    TResult Function()? service,
    TResult Function(Room dto)? success,
    TResult Function(ErrorInfo error)? failure,
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
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Service value) service,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Service value)? service,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult Function(_Loading value)? loading,
    TResult Function(_Service value)? service,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements DetailAction {
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
    extends _$DetailActionCopyWithImpl<$Res, _$ButtonTappedImpl>
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
    return 'DetailAction.buttonTapped(room: $room)';
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
    required TResult Function(String userId) buttonUserTapped,
    required TResult Function(bool isLoading) loading,
    required TResult Function() service,
    required TResult Function(Room dto) success,
    required TResult Function(ErrorInfo error) failure,
  }) {
    return buttonTapped(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
    TResult? Function(bool isLoading)? loading,
    TResult? Function()? service,
    TResult? Function(Room dto)? success,
    TResult? Function(ErrorInfo error)? failure,
  }) {
    return buttonTapped?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    TResult Function(bool isLoading)? loading,
    TResult Function()? service,
    TResult Function(Room dto)? success,
    TResult Function(ErrorInfo error)? failure,
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
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Service value) service,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return buttonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Service value)? service,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return buttonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult Function(_Loading value)? loading,
    TResult Function(_Service value)? service,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped(this);
    }
    return orElse();
  }
}

abstract class _ButtonTapped implements DetailAction {
  const factory _ButtonTapped(final Room room) = _$ButtonTappedImpl;

  Room get room;
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
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function(String userId) buttonUserTapped,
    required TResult Function(bool isLoading) loading,
    required TResult Function() service,
    required TResult Function(Room dto) success,
    required TResult Function(ErrorInfo error) failure,
  }) {
    return buttonUserTapped(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
    TResult? Function(bool isLoading)? loading,
    TResult? Function()? service,
    TResult? Function(Room dto)? success,
    TResult? Function(ErrorInfo error)? failure,
  }) {
    return buttonUserTapped?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    TResult Function(bool isLoading)? loading,
    TResult Function()? service,
    TResult Function(Room dto)? success,
    TResult Function(ErrorInfo error)? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Service value) service,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return buttonUserTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Service value)? service,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return buttonUserTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult Function(_Loading value)? loading,
    TResult Function(_Service value)? service,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DetailActionCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingImpl(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'DetailAction.loading(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(Room room) buttonTapped,
    required TResult Function(String userId) buttonUserTapped,
    required TResult Function(bool isLoading) loading,
    required TResult Function() service,
    required TResult Function(Room dto) success,
    required TResult Function(ErrorInfo error) failure,
  }) {
    return loading(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
    TResult? Function(bool isLoading)? loading,
    TResult? Function()? service,
    TResult? Function(Room dto)? success,
    TResult? Function(ErrorInfo error)? failure,
  }) {
    return loading?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    TResult Function(bool isLoading)? loading,
    TResult Function()? service,
    TResult Function(Room dto)? success,
    TResult Function(ErrorInfo error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Service value) service,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Service value)? service,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult Function(_Loading value)? loading,
    TResult Function(_Service value)? service,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DetailAction {
  const factory _Loading(final bool isLoading) = _$LoadingImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$DetailActionCopyWithImpl<$Res, _$ServiceImpl>
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
    return 'DetailAction.service()';
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
    required TResult Function(String userId) buttonUserTapped,
    required TResult Function(bool isLoading) loading,
    required TResult Function() service,
    required TResult Function(Room dto) success,
    required TResult Function(ErrorInfo error) failure,
  }) {
    return service();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
    TResult? Function(bool isLoading)? loading,
    TResult? Function()? service,
    TResult? Function(Room dto)? success,
    TResult? Function(ErrorInfo error)? failure,
  }) {
    return service?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    TResult Function(bool isLoading)? loading,
    TResult Function()? service,
    TResult Function(Room dto)? success,
    TResult Function(ErrorInfo error)? failure,
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
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Service value) service,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Service value)? service,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult Function(_Loading value)? loading,
    TResult Function(_Service value)? service,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class _Service implements DetailAction {
  const factory _Service() = _$ServiceImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Room dto});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DetailActionCopyWithImpl<$Res, _$SuccessImpl>
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
              as Room,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.dto);

  @override
  final Room dto;

  @override
  String toString() {
    return 'DetailAction.success(dto: $dto)';
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
    required TResult Function(String userId) buttonUserTapped,
    required TResult Function(bool isLoading) loading,
    required TResult Function() service,
    required TResult Function(Room dto) success,
    required TResult Function(ErrorInfo error) failure,
  }) {
    return success(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
    TResult? Function(bool isLoading)? loading,
    TResult? Function()? service,
    TResult? Function(Room dto)? success,
    TResult? Function(ErrorInfo error)? failure,
  }) {
    return success?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    TResult Function(bool isLoading)? loading,
    TResult Function()? service,
    TResult Function(Room dto)? success,
    TResult Function(ErrorInfo error)? failure,
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
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Service value) service,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Service value)? service,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult Function(_Loading value)? loading,
    TResult Function(_Service value)? service,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements DetailAction {
  const factory _Success(final Room dto) = _$SuccessImpl;

  Room get dto;
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
    extends _$DetailActionCopyWithImpl<$Res, _$FailureImpl>
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
    return 'DetailAction.failure(error: $error)';
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
    required TResult Function(String userId) buttonUserTapped,
    required TResult Function(bool isLoading) loading,
    required TResult Function() service,
    required TResult Function(Room dto) success,
    required TResult Function(ErrorInfo error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(Room room)? buttonTapped,
    TResult? Function(String userId)? buttonUserTapped,
    TResult? Function(bool isLoading)? loading,
    TResult? Function()? service,
    TResult? Function(Room dto)? success,
    TResult? Function(ErrorInfo error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(Room room)? buttonTapped,
    TResult Function(String userId)? buttonUserTapped,
    TResult Function(bool isLoading)? loading,
    TResult Function()? service,
    TResult Function(Room dto)? success,
    TResult Function(ErrorInfo error)? failure,
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
    required TResult Function(_ButtonUserTapped value) buttonUserTapped,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Service value) service,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Service value)? service,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_ButtonUserTapped value)? buttonUserTapped,
    TResult Function(_Loading value)? loading,
    TResult Function(_Service value)? service,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements DetailAction {
  const factory _Failure(final ErrorInfo error) = _$FailureImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
