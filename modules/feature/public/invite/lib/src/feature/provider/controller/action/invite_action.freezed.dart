// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InviteAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() inviteService,
    required TResult Function() loadingInviteService,
    required TResult Function(Invite invite) successInviteService,
    required TResult Function(ErrorInfo error) failureInviteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? inviteService,
    TResult? Function()? loadingInviteService,
    TResult? Function(Invite invite)? successInviteService,
    TResult? Function(ErrorInfo error)? failureInviteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? inviteService,
    TResult Function()? loadingInviteService,
    TResult Function(Invite invite)? successInviteService,
    TResult Function(ErrorInfo error)? failureInviteService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_InviteService value) inviteService,
    required TResult Function(_LoadingInviteService value) loadingInviteService,
    required TResult Function(_SuccessInviteService value) successInviteService,
    required TResult Function(_FailureInviteService value) failureInviteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_InviteService value)? inviteService,
    TResult? Function(_LoadingInviteService value)? loadingInviteService,
    TResult? Function(_SuccessInviteService value)? successInviteService,
    TResult? Function(_FailureInviteService value)? failureInviteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_InviteService value)? inviteService,
    TResult Function(_LoadingInviteService value)? loadingInviteService,
    TResult Function(_SuccessInviteService value)? successInviteService,
    TResult Function(_FailureInviteService value)? failureInviteService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteActionCopyWith<$Res> {
  factory $InviteActionCopyWith(
          InviteAction value, $Res Function(InviteAction) then) =
      _$InviteActionCopyWithImpl<$Res, InviteAction>;
}

/// @nodoc
class _$InviteActionCopyWithImpl<$Res, $Val extends InviteAction>
    implements $InviteActionCopyWith<$Res> {
  _$InviteActionCopyWithImpl(this._value, this._then);

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
    extends _$InviteActionCopyWithImpl<$Res, _$OnAppearTappedImpl>
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
    return 'InviteAction.onAppear(context: $context)';
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
    required TResult Function() buttonTapped,
    required TResult Function() inviteService,
    required TResult Function() loadingInviteService,
    required TResult Function(Invite invite) successInviteService,
    required TResult Function(ErrorInfo error) failureInviteService,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? inviteService,
    TResult? Function()? loadingInviteService,
    TResult? Function(Invite invite)? successInviteService,
    TResult? Function(ErrorInfo error)? failureInviteService,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? inviteService,
    TResult Function()? loadingInviteService,
    TResult Function(Invite invite)? successInviteService,
    TResult Function(ErrorInfo error)? failureInviteService,
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
    required TResult Function(_InviteService value) inviteService,
    required TResult Function(_LoadingInviteService value) loadingInviteService,
    required TResult Function(_SuccessInviteService value) successInviteService,
    required TResult Function(_FailureInviteService value) failureInviteService,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_InviteService value)? inviteService,
    TResult? Function(_LoadingInviteService value)? loadingInviteService,
    TResult? Function(_SuccessInviteService value)? successInviteService,
    TResult? Function(_FailureInviteService value)? failureInviteService,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_InviteService value)? inviteService,
    TResult Function(_LoadingInviteService value)? loadingInviteService,
    TResult Function(_SuccessInviteService value)? successInviteService,
    TResult Function(_FailureInviteService value)? failureInviteService,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements InviteAction {
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
}

/// @nodoc
class __$$ButtonTappedImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$ButtonTappedImpl>
    implements _$$ButtonTappedImplCopyWith<$Res> {
  __$$ButtonTappedImplCopyWithImpl(
      _$ButtonTappedImpl _value, $Res Function(_$ButtonTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ButtonTappedImpl implements _ButtonTapped {
  const _$ButtonTappedImpl();

  @override
  String toString() {
    return 'InviteAction.buttonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() inviteService,
    required TResult Function() loadingInviteService,
    required TResult Function(Invite invite) successInviteService,
    required TResult Function(ErrorInfo error) failureInviteService,
  }) {
    return buttonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? inviteService,
    TResult? Function()? loadingInviteService,
    TResult? Function(Invite invite)? successInviteService,
    TResult? Function(ErrorInfo error)? failureInviteService,
  }) {
    return buttonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? inviteService,
    TResult Function()? loadingInviteService,
    TResult Function(Invite invite)? successInviteService,
    TResult Function(ErrorInfo error)? failureInviteService,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_InviteService value) inviteService,
    required TResult Function(_LoadingInviteService value) loadingInviteService,
    required TResult Function(_SuccessInviteService value) successInviteService,
    required TResult Function(_FailureInviteService value) failureInviteService,
  }) {
    return buttonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_InviteService value)? inviteService,
    TResult? Function(_LoadingInviteService value)? loadingInviteService,
    TResult? Function(_SuccessInviteService value)? successInviteService,
    TResult? Function(_FailureInviteService value)? failureInviteService,
  }) {
    return buttonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_InviteService value)? inviteService,
    TResult Function(_LoadingInviteService value)? loadingInviteService,
    TResult Function(_SuccessInviteService value)? successInviteService,
    TResult Function(_FailureInviteService value)? failureInviteService,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped(this);
    }
    return orElse();
  }
}

abstract class _ButtonTapped implements InviteAction {
  const factory _ButtonTapped() = _$ButtonTappedImpl;
}

/// @nodoc
abstract class _$$InviteServiceImplCopyWith<$Res> {
  factory _$$InviteServiceImplCopyWith(
          _$InviteServiceImpl value, $Res Function(_$InviteServiceImpl) then) =
      __$$InviteServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InviteServiceImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$InviteServiceImpl>
    implements _$$InviteServiceImplCopyWith<$Res> {
  __$$InviteServiceImplCopyWithImpl(
      _$InviteServiceImpl _value, $Res Function(_$InviteServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InviteServiceImpl implements _InviteService {
  const _$InviteServiceImpl();

  @override
  String toString() {
    return 'InviteAction.inviteService()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InviteServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() inviteService,
    required TResult Function() loadingInviteService,
    required TResult Function(Invite invite) successInviteService,
    required TResult Function(ErrorInfo error) failureInviteService,
  }) {
    return inviteService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? inviteService,
    TResult? Function()? loadingInviteService,
    TResult? Function(Invite invite)? successInviteService,
    TResult? Function(ErrorInfo error)? failureInviteService,
  }) {
    return inviteService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? inviteService,
    TResult Function()? loadingInviteService,
    TResult Function(Invite invite)? successInviteService,
    TResult Function(ErrorInfo error)? failureInviteService,
    required TResult orElse(),
  }) {
    if (inviteService != null) {
      return inviteService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_InviteService value) inviteService,
    required TResult Function(_LoadingInviteService value) loadingInviteService,
    required TResult Function(_SuccessInviteService value) successInviteService,
    required TResult Function(_FailureInviteService value) failureInviteService,
  }) {
    return inviteService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_InviteService value)? inviteService,
    TResult? Function(_LoadingInviteService value)? loadingInviteService,
    TResult? Function(_SuccessInviteService value)? successInviteService,
    TResult? Function(_FailureInviteService value)? failureInviteService,
  }) {
    return inviteService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_InviteService value)? inviteService,
    TResult Function(_LoadingInviteService value)? loadingInviteService,
    TResult Function(_SuccessInviteService value)? successInviteService,
    TResult Function(_FailureInviteService value)? failureInviteService,
    required TResult orElse(),
  }) {
    if (inviteService != null) {
      return inviteService(this);
    }
    return orElse();
  }
}

abstract class _InviteService implements InviteAction {
  const factory _InviteService() = _$InviteServiceImpl;
}

/// @nodoc
abstract class _$$LoadingInviteServiceImplCopyWith<$Res> {
  factory _$$LoadingInviteServiceImplCopyWith(_$LoadingInviteServiceImpl value,
          $Res Function(_$LoadingInviteServiceImpl) then) =
      __$$LoadingInviteServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingInviteServiceImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$LoadingInviteServiceImpl>
    implements _$$LoadingInviteServiceImplCopyWith<$Res> {
  __$$LoadingInviteServiceImplCopyWithImpl(_$LoadingInviteServiceImpl _value,
      $Res Function(_$LoadingInviteServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingInviteServiceImpl implements _LoadingInviteService {
  const _$LoadingInviteServiceImpl();

  @override
  String toString() {
    return 'InviteAction.loadingInviteService()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingInviteServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() inviteService,
    required TResult Function() loadingInviteService,
    required TResult Function(Invite invite) successInviteService,
    required TResult Function(ErrorInfo error) failureInviteService,
  }) {
    return loadingInviteService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? inviteService,
    TResult? Function()? loadingInviteService,
    TResult? Function(Invite invite)? successInviteService,
    TResult? Function(ErrorInfo error)? failureInviteService,
  }) {
    return loadingInviteService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? inviteService,
    TResult Function()? loadingInviteService,
    TResult Function(Invite invite)? successInviteService,
    TResult Function(ErrorInfo error)? failureInviteService,
    required TResult orElse(),
  }) {
    if (loadingInviteService != null) {
      return loadingInviteService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_InviteService value) inviteService,
    required TResult Function(_LoadingInviteService value) loadingInviteService,
    required TResult Function(_SuccessInviteService value) successInviteService,
    required TResult Function(_FailureInviteService value) failureInviteService,
  }) {
    return loadingInviteService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_InviteService value)? inviteService,
    TResult? Function(_LoadingInviteService value)? loadingInviteService,
    TResult? Function(_SuccessInviteService value)? successInviteService,
    TResult? Function(_FailureInviteService value)? failureInviteService,
  }) {
    return loadingInviteService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_InviteService value)? inviteService,
    TResult Function(_LoadingInviteService value)? loadingInviteService,
    TResult Function(_SuccessInviteService value)? successInviteService,
    TResult Function(_FailureInviteService value)? failureInviteService,
    required TResult orElse(),
  }) {
    if (loadingInviteService != null) {
      return loadingInviteService(this);
    }
    return orElse();
  }
}

abstract class _LoadingInviteService implements InviteAction {
  const factory _LoadingInviteService() = _$LoadingInviteServiceImpl;
}

/// @nodoc
abstract class _$$SuccessInviteServiceImplCopyWith<$Res> {
  factory _$$SuccessInviteServiceImplCopyWith(_$SuccessInviteServiceImpl value,
          $Res Function(_$SuccessInviteServiceImpl) then) =
      __$$SuccessInviteServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Invite invite});
}

/// @nodoc
class __$$SuccessInviteServiceImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$SuccessInviteServiceImpl>
    implements _$$SuccessInviteServiceImplCopyWith<$Res> {
  __$$SuccessInviteServiceImplCopyWithImpl(_$SuccessInviteServiceImpl _value,
      $Res Function(_$SuccessInviteServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invite = null,
  }) {
    return _then(_$SuccessInviteServiceImpl(
      null == invite
          ? _value.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as Invite,
    ));
  }
}

/// @nodoc

class _$SuccessInviteServiceImpl implements _SuccessInviteService {
  const _$SuccessInviteServiceImpl(this.invite);

  @override
  final Invite invite;

  @override
  String toString() {
    return 'InviteAction.successInviteService(invite: $invite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessInviteServiceImpl &&
            (identical(other.invite, invite) || other.invite == invite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessInviteServiceImplCopyWith<_$SuccessInviteServiceImpl>
      get copyWith =>
          __$$SuccessInviteServiceImplCopyWithImpl<_$SuccessInviteServiceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() inviteService,
    required TResult Function() loadingInviteService,
    required TResult Function(Invite invite) successInviteService,
    required TResult Function(ErrorInfo error) failureInviteService,
  }) {
    return successInviteService(invite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? inviteService,
    TResult? Function()? loadingInviteService,
    TResult? Function(Invite invite)? successInviteService,
    TResult? Function(ErrorInfo error)? failureInviteService,
  }) {
    return successInviteService?.call(invite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? inviteService,
    TResult Function()? loadingInviteService,
    TResult Function(Invite invite)? successInviteService,
    TResult Function(ErrorInfo error)? failureInviteService,
    required TResult orElse(),
  }) {
    if (successInviteService != null) {
      return successInviteService(invite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_InviteService value) inviteService,
    required TResult Function(_LoadingInviteService value) loadingInviteService,
    required TResult Function(_SuccessInviteService value) successInviteService,
    required TResult Function(_FailureInviteService value) failureInviteService,
  }) {
    return successInviteService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_InviteService value)? inviteService,
    TResult? Function(_LoadingInviteService value)? loadingInviteService,
    TResult? Function(_SuccessInviteService value)? successInviteService,
    TResult? Function(_FailureInviteService value)? failureInviteService,
  }) {
    return successInviteService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_InviteService value)? inviteService,
    TResult Function(_LoadingInviteService value)? loadingInviteService,
    TResult Function(_SuccessInviteService value)? successInviteService,
    TResult Function(_FailureInviteService value)? failureInviteService,
    required TResult orElse(),
  }) {
    if (successInviteService != null) {
      return successInviteService(this);
    }
    return orElse();
  }
}

abstract class _SuccessInviteService implements InviteAction {
  const factory _SuccessInviteService(final Invite invite) =
      _$SuccessInviteServiceImpl;

  Invite get invite;
  @JsonKey(ignore: true)
  _$$SuccessInviteServiceImplCopyWith<_$SuccessInviteServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureInviteServiceImplCopyWith<$Res> {
  factory _$$FailureInviteServiceImplCopyWith(_$FailureInviteServiceImpl value,
          $Res Function(_$FailureInviteServiceImpl) then) =
      __$$FailureInviteServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorInfo error});
}

/// @nodoc
class __$$FailureInviteServiceImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$FailureInviteServiceImpl>
    implements _$$FailureInviteServiceImplCopyWith<$Res> {
  __$$FailureInviteServiceImplCopyWithImpl(_$FailureInviteServiceImpl _value,
      $Res Function(_$FailureInviteServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureInviteServiceImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
    ));
  }
}

/// @nodoc

class _$FailureInviteServiceImpl implements _FailureInviteService {
  const _$FailureInviteServiceImpl(this.error);

  @override
  final ErrorInfo error;

  @override
  String toString() {
    return 'InviteAction.failureInviteService(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureInviteServiceImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureInviteServiceImplCopyWith<_$FailureInviteServiceImpl>
      get copyWith =>
          __$$FailureInviteServiceImplCopyWithImpl<_$FailureInviteServiceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() inviteService,
    required TResult Function() loadingInviteService,
    required TResult Function(Invite invite) successInviteService,
    required TResult Function(ErrorInfo error) failureInviteService,
  }) {
    return failureInviteService(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? inviteService,
    TResult? Function()? loadingInviteService,
    TResult? Function(Invite invite)? successInviteService,
    TResult? Function(ErrorInfo error)? failureInviteService,
  }) {
    return failureInviteService?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? inviteService,
    TResult Function()? loadingInviteService,
    TResult Function(Invite invite)? successInviteService,
    TResult Function(ErrorInfo error)? failureInviteService,
    required TResult orElse(),
  }) {
    if (failureInviteService != null) {
      return failureInviteService(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_InviteService value) inviteService,
    required TResult Function(_LoadingInviteService value) loadingInviteService,
    required TResult Function(_SuccessInviteService value) successInviteService,
    required TResult Function(_FailureInviteService value) failureInviteService,
  }) {
    return failureInviteService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_InviteService value)? inviteService,
    TResult? Function(_LoadingInviteService value)? loadingInviteService,
    TResult? Function(_SuccessInviteService value)? successInviteService,
    TResult? Function(_FailureInviteService value)? failureInviteService,
  }) {
    return failureInviteService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_InviteService value)? inviteService,
    TResult Function(_LoadingInviteService value)? loadingInviteService,
    TResult Function(_SuccessInviteService value)? successInviteService,
    TResult Function(_FailureInviteService value)? failureInviteService,
    required TResult orElse(),
  }) {
    if (failureInviteService != null) {
      return failureInviteService(this);
    }
    return orElse();
  }
}

abstract class _FailureInviteService implements InviteAction {
  const factory _FailureInviteService(final ErrorInfo error) =
      _$FailureInviteServiceImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureInviteServiceImplCopyWith<_$FailureInviteServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
