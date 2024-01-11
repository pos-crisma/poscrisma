// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_mobile_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserMobileAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMobileActionCopyWith<$Res> {
  factory $UserMobileActionCopyWith(
          UserMobileAction value, $Res Function(UserMobileAction) then) =
      _$UserMobileActionCopyWithImpl<$Res, UserMobileAction>;
}

/// @nodoc
class _$UserMobileActionCopyWithImpl<$Res, $Val extends UserMobileAction>
    implements $UserMobileActionCopyWith<$Res> {
  _$UserMobileActionCopyWithImpl(this._value, this._then);

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
  $Res call(
      {String parishId,
      String senderId,
      UserType type,
      String invite,
      BuildContext context});
}

/// @nodoc
class __$$OnAppearImplCopyWithImpl<$Res>
    extends _$UserMobileActionCopyWithImpl<$Res, _$OnAppearImpl>
    implements _$$OnAppearImplCopyWith<$Res> {
  __$$OnAppearImplCopyWithImpl(
      _$OnAppearImpl _value, $Res Function(_$OnAppearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parishId = null,
    Object? senderId = null,
    Object? type = null,
    Object? invite = null,
    Object? context = null,
  }) {
    return _then(_$OnAppearImpl(
      null == parishId
          ? _value.parishId
          : parishId // ignore: cast_nullable_to_non_nullable
              as String,
      null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      null == invite
          ? _value.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$OnAppearImpl implements _OnAppear {
  const _$OnAppearImpl(
      this.parishId, this.senderId, this.type, this.invite, this.context);

  @override
  final String parishId;
  @override
  final String senderId;
  @override
  final UserType type;
  @override
  final String invite;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserMobileAction.onAppear(parishId: $parishId, senderId: $senderId, type: $type, invite: $invite, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAppearImpl &&
            (identical(other.parishId, parishId) ||
                other.parishId == parishId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.invite, invite) || other.invite == invite) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, parishId, senderId, type, invite, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAppearImplCopyWith<_$OnAppearImpl> get copyWith =>
      __$$OnAppearImplCopyWithImpl<_$OnAppearImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) {
    return onAppear(parishId, senderId, type, invite, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) {
    return onAppear?.call(parishId, senderId, type, invite, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(parishId, senderId, type, invite, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppear implements UserMobileAction {
  const factory _OnAppear(
      final String parishId,
      final String senderId,
      final UserType type,
      final String invite,
      final BuildContext context) = _$OnAppearImpl;

  String get parishId;
  String get senderId;
  UserType get type;
  String get invite;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$OnAppearImplCopyWith<_$OnAppearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HandlerTappedImplCopyWith<$Res> {
  factory _$$HandlerTappedImplCopyWith(
          _$HandlerTappedImpl value, $Res Function(_$HandlerTappedImpl) then) =
      __$$HandlerTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$HandlerTappedImplCopyWithImpl<$Res>
    extends _$UserMobileActionCopyWithImpl<$Res, _$HandlerTappedImpl>
    implements _$$HandlerTappedImplCopyWith<$Res> {
  __$$HandlerTappedImplCopyWithImpl(
      _$HandlerTappedImpl _value, $Res Function(_$HandlerTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$HandlerTappedImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$HandlerTappedImpl implements _HandlerTapped {
  const _$HandlerTappedImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserMobileAction.handlerTapped(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandlerTappedImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandlerTappedImplCopyWith<_$HandlerTappedImpl> get copyWith =>
      __$$HandlerTappedImplCopyWithImpl<_$HandlerTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) {
    return handlerTapped(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) {
    return handlerTapped?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
    required TResult orElse(),
  }) {
    if (handlerTapped != null) {
      return handlerTapped(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) {
    return handlerTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) {
    return handlerTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) {
    if (handlerTapped != null) {
      return handlerTapped(this);
    }
    return orElse();
  }
}

abstract class _HandlerTapped implements UserMobileAction {
  const factory _HandlerTapped(final BuildContext context) =
      _$HandlerTappedImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$HandlerTappedImplCopyWith<_$HandlerTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderTappedImplCopyWith<$Res> {
  factory _$$GenderTappedImplCopyWith(
          _$GenderTappedImpl value, $Res Function(_$GenderTappedImpl) then) =
      __$$GenderTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserGender gender});
}

/// @nodoc
class __$$GenderTappedImplCopyWithImpl<$Res>
    extends _$UserMobileActionCopyWithImpl<$Res, _$GenderTappedImpl>
    implements _$$GenderTappedImplCopyWith<$Res> {
  __$$GenderTappedImplCopyWithImpl(
      _$GenderTappedImpl _value, $Res Function(_$GenderTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$GenderTappedImpl(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
    ));
  }
}

/// @nodoc

class _$GenderTappedImpl implements _GenderTapped {
  const _$GenderTappedImpl(this.gender);

  @override
  final UserGender gender;

  @override
  String toString() {
    return 'UserMobileAction.genderTapped(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderTappedImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderTappedImplCopyWith<_$GenderTappedImpl> get copyWith =>
      __$$GenderTappedImplCopyWithImpl<_$GenderTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) {
    return genderTapped(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) {
    return genderTapped?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
    required TResult orElse(),
  }) {
    if (genderTapped != null) {
      return genderTapped(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) {
    return genderTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) {
    return genderTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) {
    if (genderTapped != null) {
      return genderTapped(this);
    }
    return orElse();
  }
}

abstract class _GenderTapped implements UserMobileAction {
  const factory _GenderTapped(final UserGender gender) = _$GenderTappedImpl;

  UserGender get gender;
  @JsonKey(ignore: true)
  _$$GenderTappedImplCopyWith<_$GenderTappedImpl> get copyWith =>
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
    extends _$UserMobileActionCopyWithImpl<$Res, _$BackTappedImpl>
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
    return 'UserMobileAction.backTapped()';
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
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) {
    return backTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) {
    return backTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
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
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) {
    return backTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) {
    return backTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) {
    if (backTapped != null) {
      return backTapped(this);
    }
    return orElse();
  }
}

abstract class _BackTapped implements UserMobileAction {
  const factory _BackTapped() = _$BackTappedImpl;
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$UserMobileActionCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
      _$ServiceImpl _value, $Res Function(_$ServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ServiceImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ServiceImpl implements _Service {
  const _$ServiceImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserMobileAction.service(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      __$$ServiceImplCopyWithImpl<_$ServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) {
    return service(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) {
    return service?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class _Service implements UserMobileAction {
  const factory _Service(final BuildContext context) = _$ServiceImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessServiceImplCopyWith<$Res> {
  factory _$$SuccessServiceImplCopyWith(_$SuccessServiceImpl value,
          $Res Function(_$SuccessServiceImpl) then) =
      __$$SuccessServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateUserResponseDTO createUserResponseDTO});
}

/// @nodoc
class __$$SuccessServiceImplCopyWithImpl<$Res>
    extends _$UserMobileActionCopyWithImpl<$Res, _$SuccessServiceImpl>
    implements _$$SuccessServiceImplCopyWith<$Res> {
  __$$SuccessServiceImplCopyWithImpl(
      _$SuccessServiceImpl _value, $Res Function(_$SuccessServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createUserResponseDTO = null,
  }) {
    return _then(_$SuccessServiceImpl(
      null == createUserResponseDTO
          ? _value.createUserResponseDTO
          : createUserResponseDTO // ignore: cast_nullable_to_non_nullable
              as CreateUserResponseDTO,
    ));
  }
}

/// @nodoc

class _$SuccessServiceImpl implements _SuccessService {
  const _$SuccessServiceImpl(this.createUserResponseDTO);

  @override
  final CreateUserResponseDTO createUserResponseDTO;

  @override
  String toString() {
    return 'UserMobileAction.successService(createUserResponseDTO: $createUserResponseDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessServiceImpl &&
            (identical(other.createUserResponseDTO, createUserResponseDTO) ||
                other.createUserResponseDTO == createUserResponseDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createUserResponseDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessServiceImplCopyWith<_$SuccessServiceImpl> get copyWith =>
      __$$SuccessServiceImplCopyWithImpl<_$SuccessServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) {
    return successService(createUserResponseDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) {
    return successService?.call(createUserResponseDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
    required TResult orElse(),
  }) {
    if (successService != null) {
      return successService(createUserResponseDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) {
    return successService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) {
    return successService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) {
    if (successService != null) {
      return successService(this);
    }
    return orElse();
  }
}

abstract class _SuccessService implements UserMobileAction {
  const factory _SuccessService(
      final CreateUserResponseDTO createUserResponseDTO) = _$SuccessServiceImpl;

  CreateUserResponseDTO get createUserResponseDTO;
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
  $Res call({ErrorInfo errorInfo, BuildContext context});
}

/// @nodoc
class __$$FailureServiceImplCopyWithImpl<$Res>
    extends _$UserMobileActionCopyWithImpl<$Res, _$FailureServiceImpl>
    implements _$$FailureServiceImplCopyWith<$Res> {
  __$$FailureServiceImplCopyWithImpl(
      _$FailureServiceImpl _value, $Res Function(_$FailureServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorInfo = null,
    Object? context = null,
  }) {
    return _then(_$FailureServiceImpl(
      null == errorInfo
          ? _value.errorInfo
          : errorInfo // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FailureServiceImpl implements _FailureService {
  const _$FailureServiceImpl(this.errorInfo, this.context);

  @override
  final ErrorInfo errorInfo;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserMobileAction.failureService(errorInfo: $errorInfo, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServiceImpl &&
            (identical(other.errorInfo, errorInfo) ||
                other.errorInfo == errorInfo) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorInfo, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServiceImplCopyWith<_$FailureServiceImpl> get copyWith =>
      __$$FailureServiceImplCopyWithImpl<_$FailureServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) {
    return failureService(errorInfo, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) {
    return failureService?.call(errorInfo, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
    required TResult orElse(),
  }) {
    if (failureService != null) {
      return failureService(errorInfo, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) {
    return failureService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) {
    return failureService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) {
    if (failureService != null) {
      return failureService(this);
    }
    return orElse();
  }
}

abstract class _FailureService implements UserMobileAction {
  const factory _FailureService(
          final ErrorInfo errorInfo, final BuildContext context) =
      _$FailureServiceImpl;

  ErrorInfo get errorInfo;
  BuildContext get context;
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
    extends _$UserMobileActionCopyWithImpl<$Res, _$LoadingServiceImpl>
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
    return 'UserMobileAction.loadingService()';
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
    required TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)
        onAppear,
    required TResult Function(BuildContext context) handlerTapped,
    required TResult Function(UserGender gender) genderTapped,
    required TResult Function() backTapped,
    required TResult Function(BuildContext context) service,
    required TResult Function(CreateUserResponseDTO createUserResponseDTO)
        successService,
    required TResult Function(ErrorInfo errorInfo, BuildContext context)
        failureService,
    required TResult Function() loadingService,
  }) {
    return loadingService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult? Function(BuildContext context)? handlerTapped,
    TResult? Function(UserGender gender)? genderTapped,
    TResult? Function()? backTapped,
    TResult? Function(BuildContext context)? service,
    TResult? Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult? Function(ErrorInfo errorInfo, BuildContext context)?
        failureService,
    TResult? Function()? loadingService,
  }) {
    return loadingService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parishId, String senderId, UserType type,
            String invite, BuildContext context)?
        onAppear,
    TResult Function(BuildContext context)? handlerTapped,
    TResult Function(UserGender gender)? genderTapped,
    TResult Function()? backTapped,
    TResult Function(BuildContext context)? service,
    TResult Function(CreateUserResponseDTO createUserResponseDTO)?
        successService,
    TResult Function(ErrorInfo errorInfo, BuildContext context)? failureService,
    TResult Function()? loadingService,
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
    required TResult Function(_HandlerTapped value) handlerTapped,
    required TResult Function(_GenderTapped value) genderTapped,
    required TResult Function(_BackTapped value) backTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_SuccessService value) successService,
    required TResult Function(_FailureService value) failureService,
    required TResult Function(_LoadingService value) loadingService,
  }) {
    return loadingService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_HandlerTapped value)? handlerTapped,
    TResult? Function(_GenderTapped value)? genderTapped,
    TResult? Function(_BackTapped value)? backTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_SuccessService value)? successService,
    TResult? Function(_FailureService value)? failureService,
    TResult? Function(_LoadingService value)? loadingService,
  }) {
    return loadingService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_HandlerTapped value)? handlerTapped,
    TResult Function(_GenderTapped value)? genderTapped,
    TResult Function(_BackTapped value)? backTapped,
    TResult Function(_Service value)? service,
    TResult Function(_SuccessService value)? successService,
    TResult Function(_FailureService value)? failureService,
    TResult Function(_LoadingService value)? loadingService,
    required TResult orElse(),
  }) {
    if (loadingService != null) {
      return loadingService(this);
    }
    return orElse();
  }
}

abstract class _LoadingService implements UserMobileAction {
  const factory _LoadingService() = _$LoadingServiceImpl;
}
