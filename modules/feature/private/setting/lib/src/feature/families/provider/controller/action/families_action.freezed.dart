// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'families_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FamiliesAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(dynamic dto) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(dynamic dto)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(dynamic dto)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_Service value) service,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamiliesActionCopyWith<$Res> {
  factory $FamiliesActionCopyWith(
          FamiliesAction value, $Res Function(FamiliesAction) then) =
      _$FamiliesActionCopyWithImpl<$Res, FamiliesAction>;
}

/// @nodoc
class _$FamiliesActionCopyWithImpl<$Res, $Val extends FamiliesAction>
    implements $FamiliesActionCopyWith<$Res> {
  _$FamiliesActionCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$OnAppearTappedImplCopyWithImpl<$Res>
    extends _$FamiliesActionCopyWithImpl<$Res, _$OnAppearTappedImpl>
    implements _$$OnAppearTappedImplCopyWith<$Res> {
  __$$OnAppearTappedImplCopyWithImpl(
      _$OnAppearTappedImpl _value, $Res Function(_$OnAppearTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnAppearTappedImpl implements _OnAppearTapped {
  const _$OnAppearTappedImpl();

  @override
  String toString() {
    return 'FamiliesAction.onAppear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnAppearTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(dynamic dto) success,
  }) {
    return onAppear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(dynamic dto)? success,
  }) {
    return onAppear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(dynamic dto)? success,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_Service value) service,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements FamiliesAction {
  const factory _OnAppearTapped() = _$OnAppearTappedImpl;
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$FamiliesActionCopyWithImpl<$Res, _$ServiceImpl>
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
    return 'FamiliesAction.service()';
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
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(dynamic dto) success,
  }) {
    return service();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(dynamic dto)? success,
  }) {
    return service?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(dynamic dto)? success,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class _Service implements FamiliesAction {
  const factory _Service() = _$ServiceImpl;
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
    extends _$FamiliesActionCopyWithImpl<$Res, _$FailureImpl>
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
    return 'FamiliesAction.failure(error: $error)';
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
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(dynamic dto) success,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(dynamic dto)? success,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(dynamic dto)? success,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FamiliesAction {
  const factory _Failure(final ErrorInfo error) = _$FailureImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic dto});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$FamiliesActionCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = freezed,
  }) {
    return _then(_$SuccessImpl(
      freezed == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.dto);

  @override
  final dynamic dto;

  @override
  String toString() {
    return 'FamiliesAction.success(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other.dto, dto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(dynamic dto) success,
  }) {
    return success(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(dynamic dto)? success,
  }) {
    return success?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(dynamic dto)? success,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FamiliesAction {
  const factory _Success(final dynamic dto) = _$SuccessImpl;

  dynamic get dto;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
