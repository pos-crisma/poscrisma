// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthActionCopyWith<$Res> {
  factory $AuthActionCopyWith(
          AuthAction value, $Res Function(AuthAction) then) =
      _$AuthActionCopyWithImpl<$Res, AuthAction>;
}

/// @nodoc
class _$AuthActionCopyWithImpl<$Res, $Val extends AuthAction>
    implements $AuthActionCopyWith<$Res> {
  _$AuthActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnAppearImplCopyWith<$Res> {
  factory _$$OnAppearImplCopyWith(
          _$OnAppearImpl value, $Res Function(_$OnAppearImpl) then) =
      __$$OnAppearImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$OnAppearImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$OnAppearImpl>
    implements _$$OnAppearImplCopyWith<$Res> {
  __$$OnAppearImplCopyWithImpl(
      _$OnAppearImpl _value, $Res Function(_$OnAppearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$OnAppearImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$OnAppearImpl implements _OnAppear {
  const _$OnAppearImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthAction.onAppear(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAppearImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAppearImplCopyWith<_$OnAppearImpl> get copyWith =>
      __$$OnAppearImplCopyWithImpl<_$OnAppearImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
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
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppear implements AuthAction {
  const factory _OnAppear(final BuildContext context) = _$OnAppearImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$OnAppearImplCopyWith<_$OnAppearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackTappedImplCopyWith<$Res> {
  factory _$$BackTappedImplCopyWith(
          _$BackTappedImpl value, $Res Function(_$BackTappedImpl) then) =
      __$$BackTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackTappedImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$BackTappedImpl>
    implements _$$BackTappedImplCopyWith<$Res> {
  __$$BackTappedImplCopyWithImpl(
      _$BackTappedImpl _value, $Res Function(_$BackTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackTappedImpl implements _BackTapped {
  const _$BackTappedImpl();

  @override
  String toString() {
    return 'AuthAction.backTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) {
    return backTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) {
    return backTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
    required TResult orElse(),
  }) {
    if (backTapped != null) {
      return backTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) {
    return backTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) {
    return backTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) {
    if (backTapped != null) {
      return backTapped(this);
    }
    return orElse();
  }
}

abstract class _BackTapped implements AuthAction {
  const factory _BackTapped() = _$BackTappedImpl;
}

/// @nodoc
abstract class _$$HandlerTappedImplCopyWith<$Res> {
  factory _$$HandlerTappedImplCopyWith(
          _$HandlerTappedImpl value, $Res Function(_$HandlerTappedImpl) then) =
      __$$HandlerTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HandlerTappedImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$HandlerTappedImpl>
    implements _$$HandlerTappedImplCopyWith<$Res> {
  __$$HandlerTappedImplCopyWithImpl(
      _$HandlerTappedImpl _value, $Res Function(_$HandlerTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HandlerTappedImpl implements _HandlerTapped {
  const _$HandlerTappedImpl();

  @override
  String toString() {
    return 'AuthAction.handlerTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HandlerTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) {
    return handlerTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) {
    return handlerTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
    required TResult orElse(),
  }) {
    if (handlerTapped != null) {
      return handlerTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) {
    return handlerTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) {
    return handlerTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) {
    if (handlerTapped != null) {
      return handlerTapped(this);
    }
    return orElse();
  }
}

abstract class _HandlerTapped implements AuthAction {
  const factory _HandlerTapped() = _$HandlerTappedImpl;
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$ServiceImpl>
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
    return 'AuthAction.service()';
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
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) {
    return service();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) {
    return service?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
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
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class _Service implements AuthAction {
  const factory _Service() = _$ServiceImpl;
}

/// @nodoc
abstract class _$$SuccessServiceImplCopyWith<$Res> {
  factory _$$SuccessServiceImplCopyWith(_$SuccessServiceImpl value,
          $Res Function(_$SuccessServiceImpl) then) =
      __$$SuccessServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseDTO dto});
}

/// @nodoc
class __$$SuccessServiceImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$SuccessServiceImpl>
    implements _$$SuccessServiceImplCopyWith<$Res> {
  __$$SuccessServiceImplCopyWithImpl(
      _$SuccessServiceImpl _value, $Res Function(_$SuccessServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SuccessServiceImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as AuthResponseDTO,
    ));
  }
}

/// @nodoc

class _$SuccessServiceImpl implements _SuccessService {
  const _$SuccessServiceImpl(this.dto);

  @override
  final AuthResponseDTO dto;

  @override
  String toString() {
    return 'AuthAction.successService(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessServiceImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessServiceImplCopyWith<_$SuccessServiceImpl> get copyWith =>
      __$$SuccessServiceImplCopyWithImpl<_$SuccessServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) {
    return successService(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) {
    return successService?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
    required TResult orElse(),
  }) {
    if (successService != null) {
      return successService(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) {
    return successService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) {
    return successService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) {
    if (successService != null) {
      return successService(this);
    }
    return orElse();
  }
}

abstract class _SuccessService implements AuthAction {
  const factory _SuccessService(final AuthResponseDTO dto) =
      _$SuccessServiceImpl;

  AuthResponseDTO get dto;
  @JsonKey(ignore: true)
  _$$SuccessServiceImplCopyWith<_$SuccessServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureServiceImplCopyWith<$Res> {
  factory _$$FailureServiceImplCopyWith(_$FailureServiceImpl value,
          $Res Function(_$FailureServiceImpl) then) =
      __$$FailureServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorInfo errorInfo});
}

/// @nodoc
class __$$FailureServiceImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$FailureServiceImpl>
    implements _$$FailureServiceImplCopyWith<$Res> {
  __$$FailureServiceImplCopyWithImpl(
      _$FailureServiceImpl _value, $Res Function(_$FailureServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorInfo = null,
  }) {
    return _then(_$FailureServiceImpl(
      null == errorInfo
          ? _value.errorInfo
          : errorInfo // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
    ));
  }
}

/// @nodoc

class _$FailureServiceImpl implements _FailureService {
  const _$FailureServiceImpl(this.errorInfo);

  @override
  final ErrorInfo errorInfo;

  @override
  String toString() {
    return 'AuthAction.failureService(errorInfo: $errorInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServiceImpl &&
            (identical(other.errorInfo, errorInfo) ||
                other.errorInfo == errorInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServiceImplCopyWith<_$FailureServiceImpl> get copyWith =>
      __$$FailureServiceImplCopyWithImpl<_$FailureServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) {
    return failureService(errorInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) {
    return failureService?.call(errorInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
    required TResult orElse(),
  }) {
    if (failureService != null) {
      return failureService(errorInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) {
    return failureService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) {
    return failureService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) {
    if (failureService != null) {
      return failureService(this);
    }
    return orElse();
  }
}

abstract class _FailureService implements AuthAction {
  const factory _FailureService(final ErrorInfo errorInfo) =
      _$FailureServiceImpl;

  ErrorInfo get errorInfo;
  @JsonKey(ignore: true)
  _$$FailureServiceImplCopyWith<_$FailureServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingServiceImplCopyWith<$Res> {
  factory _$$LoadingServiceImplCopyWith(_$LoadingServiceImpl value,
          $Res Function(_$LoadingServiceImpl) then) =
      __$$LoadingServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingServiceImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$LoadingServiceImpl>
    implements _$$LoadingServiceImplCopyWith<$Res> {
  __$$LoadingServiceImplCopyWithImpl(
      _$LoadingServiceImpl _value, $Res Function(_$LoadingServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingServiceImpl implements _LoadingService {
  const _$LoadingServiceImpl();

  @override
  String toString() {
    return 'AuthAction.loadingService()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) {
    return loadingService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) {
    return loadingService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
    required TResult orElse(),
  }) {
    if (loadingService != null) {
      return loadingService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) {
    return loadingService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) {
    return loadingService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) {
    if (loadingService != null) {
      return loadingService(this);
    }
    return orElse();
  }
}

abstract class _LoadingService implements AuthAction {
  const factory _LoadingService() = _$LoadingServiceImpl;
}

/// @nodoc
abstract class _$$MoveToHomeImplCopyWith<$Res> {
  factory _$$MoveToHomeImplCopyWith(
          _$MoveToHomeImpl value, $Res Function(_$MoveToHomeImpl) then) =
      __$$MoveToHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoveToHomeImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$MoveToHomeImpl>
    implements _$$MoveToHomeImplCopyWith<$Res> {
  __$$MoveToHomeImplCopyWithImpl(
      _$MoveToHomeImpl _value, $Res Function(_$MoveToHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoveToHomeImpl implements _MoveToHome {
  const _$MoveToHomeImpl();

  @override
  String toString() {
    return 'AuthAction.moveToHome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoveToHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() backTapped,
    required TResult Function() handlerTapped,
    required TResult Function() service,
    required TResult Function(AuthResponseDTO dto) successService,
    required TResult Function(ErrorInfo errorInfo) failureService,
    required TResult Function() loadingService,
    required TResult Function() moveToHome,
  }) {
    return moveToHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? backTapped,
    TResult? Function()? handlerTapped,
    TResult? Function()? service,
    TResult? Function(AuthResponseDTO dto)? successService,
    TResult? Function(ErrorInfo errorInfo)? failureService,
    TResult? Function()? loadingService,
    TResult? Function()? moveToHome,
  }) {
    return moveToHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? backTapped,
    TResult Function()? handlerTapped,
    TResult Function()? service,
    TResult Function(AuthResponseDTO dto)? successService,
    TResult Function(ErrorInfo errorInfo)? failureService,
    TResult Function()? loadingService,
    TResult Function()? moveToHome,
    required TResult orElse(),
  }) {
    if (moveToHome != null) {
      return moveToHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
    required TResult Function(_MoveToHome value) moveToHome,
  }) {
    return moveToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
    TResult? Function(_MoveToHome value)? moveToHome,
  }) {
    return moveToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    TResult Function(_MoveToHome value)? moveToHome,
    required TResult orElse(),
  }) {
    if (moveToHome != null) {
      return moveToHome(this);
    }
    return orElse();
  }
}

abstract class _MoveToHome implements AuthAction {
  const factory _MoveToHome() = _$MoveToHomeImpl;
}
