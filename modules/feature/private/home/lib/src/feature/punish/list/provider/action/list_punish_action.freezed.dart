// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_punish_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListPunishAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() getUserService,
    required TResult Function(bool isLoading) loading,
    required TResult Function(List<DocumentSnapshot<PunishDTO>> user) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String id, bool isDone) markDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? getUserService,
    TResult? Function(bool isLoading)? loading,
    TResult? Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String id, bool isDone)? markDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? getUserService,
    TResult Function(bool isLoading)? loading,
    TResult Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String id, bool isDone)? markDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_UserService value) getUserService,
    required TResult Function(_LoadingUserService value) loading,
    required TResult Function(_SuccessUserService value) success,
    required TResult Function(_FailureUserService value) failure,
    required TResult Function(_MarkPunish value) markDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_UserService value)? getUserService,
    TResult? Function(_LoadingUserService value)? loading,
    TResult? Function(_SuccessUserService value)? success,
    TResult? Function(_FailureUserService value)? failure,
    TResult? Function(_MarkPunish value)? markDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_UserService value)? getUserService,
    TResult Function(_LoadingUserService value)? loading,
    TResult Function(_SuccessUserService value)? success,
    TResult Function(_FailureUserService value)? failure,
    TResult Function(_MarkPunish value)? markDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPunishActionCopyWith<$Res> {
  factory $ListPunishActionCopyWith(
          ListPunishAction value, $Res Function(ListPunishAction) then) =
      _$ListPunishActionCopyWithImpl<$Res, ListPunishAction>;
}

/// @nodoc
class _$ListPunishActionCopyWithImpl<$Res, $Val extends ListPunishAction>
    implements $ListPunishActionCopyWith<$Res> {
  _$ListPunishActionCopyWithImpl(this._value, this._then);

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
    extends _$ListPunishActionCopyWithImpl<$Res, _$OnAppearTappedImpl>
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
    return 'ListPunishAction.onAppear()';
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
    required TResult Function() getUserService,
    required TResult Function(bool isLoading) loading,
    required TResult Function(List<DocumentSnapshot<PunishDTO>> user) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String id, bool isDone) markDone,
  }) {
    return onAppear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? getUserService,
    TResult? Function(bool isLoading)? loading,
    TResult? Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String id, bool isDone)? markDone,
  }) {
    return onAppear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? getUserService,
    TResult Function(bool isLoading)? loading,
    TResult Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String id, bool isDone)? markDone,
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
    required TResult Function(_UserService value) getUserService,
    required TResult Function(_LoadingUserService value) loading,
    required TResult Function(_SuccessUserService value) success,
    required TResult Function(_FailureUserService value) failure,
    required TResult Function(_MarkPunish value) markDone,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_UserService value)? getUserService,
    TResult? Function(_LoadingUserService value)? loading,
    TResult? Function(_SuccessUserService value)? success,
    TResult? Function(_FailureUserService value)? failure,
    TResult? Function(_MarkPunish value)? markDone,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_UserService value)? getUserService,
    TResult Function(_LoadingUserService value)? loading,
    TResult Function(_SuccessUserService value)? success,
    TResult Function(_FailureUserService value)? failure,
    TResult Function(_MarkPunish value)? markDone,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements ListPunishAction {
  const factory _OnAppearTapped() = _$OnAppearTappedImpl;
}

/// @nodoc
abstract class _$$UserServiceImplCopyWith<$Res> {
  factory _$$UserServiceImplCopyWith(
          _$UserServiceImpl value, $Res Function(_$UserServiceImpl) then) =
      __$$UserServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserServiceImplCopyWithImpl<$Res>
    extends _$ListPunishActionCopyWithImpl<$Res, _$UserServiceImpl>
    implements _$$UserServiceImplCopyWith<$Res> {
  __$$UserServiceImplCopyWithImpl(
      _$UserServiceImpl _value, $Res Function(_$UserServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserServiceImpl implements _UserService {
  const _$UserServiceImpl();

  @override
  String toString() {
    return 'ListPunishAction.getUserService()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() getUserService,
    required TResult Function(bool isLoading) loading,
    required TResult Function(List<DocumentSnapshot<PunishDTO>> user) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String id, bool isDone) markDone,
  }) {
    return getUserService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? getUserService,
    TResult? Function(bool isLoading)? loading,
    TResult? Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String id, bool isDone)? markDone,
  }) {
    return getUserService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? getUserService,
    TResult Function(bool isLoading)? loading,
    TResult Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String id, bool isDone)? markDone,
    required TResult orElse(),
  }) {
    if (getUserService != null) {
      return getUserService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_UserService value) getUserService,
    required TResult Function(_LoadingUserService value) loading,
    required TResult Function(_SuccessUserService value) success,
    required TResult Function(_FailureUserService value) failure,
    required TResult Function(_MarkPunish value) markDone,
  }) {
    return getUserService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_UserService value)? getUserService,
    TResult? Function(_LoadingUserService value)? loading,
    TResult? Function(_SuccessUserService value)? success,
    TResult? Function(_FailureUserService value)? failure,
    TResult? Function(_MarkPunish value)? markDone,
  }) {
    return getUserService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_UserService value)? getUserService,
    TResult Function(_LoadingUserService value)? loading,
    TResult Function(_SuccessUserService value)? success,
    TResult Function(_FailureUserService value)? failure,
    TResult Function(_MarkPunish value)? markDone,
    required TResult orElse(),
  }) {
    if (getUserService != null) {
      return getUserService(this);
    }
    return orElse();
  }
}

abstract class _UserService implements ListPunishAction {
  const factory _UserService() = _$UserServiceImpl;
}

/// @nodoc
abstract class _$$LoadingUserServiceImplCopyWith<$Res> {
  factory _$$LoadingUserServiceImplCopyWith(_$LoadingUserServiceImpl value,
          $Res Function(_$LoadingUserServiceImpl) then) =
      __$$LoadingUserServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingUserServiceImplCopyWithImpl<$Res>
    extends _$ListPunishActionCopyWithImpl<$Res, _$LoadingUserServiceImpl>
    implements _$$LoadingUserServiceImplCopyWith<$Res> {
  __$$LoadingUserServiceImplCopyWithImpl(_$LoadingUserServiceImpl _value,
      $Res Function(_$LoadingUserServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingUserServiceImpl(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingUserServiceImpl implements _LoadingUserService {
  const _$LoadingUserServiceImpl(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ListPunishAction.loading(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingUserServiceImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingUserServiceImplCopyWith<_$LoadingUserServiceImpl> get copyWith =>
      __$$LoadingUserServiceImplCopyWithImpl<_$LoadingUserServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() getUserService,
    required TResult Function(bool isLoading) loading,
    required TResult Function(List<DocumentSnapshot<PunishDTO>> user) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String id, bool isDone) markDone,
  }) {
    return loading(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? getUserService,
    TResult? Function(bool isLoading)? loading,
    TResult? Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String id, bool isDone)? markDone,
  }) {
    return loading?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? getUserService,
    TResult Function(bool isLoading)? loading,
    TResult Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String id, bool isDone)? markDone,
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
    required TResult Function(_UserService value) getUserService,
    required TResult Function(_LoadingUserService value) loading,
    required TResult Function(_SuccessUserService value) success,
    required TResult Function(_FailureUserService value) failure,
    required TResult Function(_MarkPunish value) markDone,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_UserService value)? getUserService,
    TResult? Function(_LoadingUserService value)? loading,
    TResult? Function(_SuccessUserService value)? success,
    TResult? Function(_FailureUserService value)? failure,
    TResult? Function(_MarkPunish value)? markDone,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_UserService value)? getUserService,
    TResult Function(_LoadingUserService value)? loading,
    TResult Function(_SuccessUserService value)? success,
    TResult Function(_FailureUserService value)? failure,
    TResult Function(_MarkPunish value)? markDone,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingUserService implements ListPunishAction {
  const factory _LoadingUserService(final bool isLoading) =
      _$LoadingUserServiceImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$LoadingUserServiceImplCopyWith<_$LoadingUserServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUserServiceImplCopyWith<$Res> {
  factory _$$SuccessUserServiceImplCopyWith(_$SuccessUserServiceImpl value,
          $Res Function(_$SuccessUserServiceImpl) then) =
      __$$SuccessUserServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DocumentSnapshot<PunishDTO>> user});
}

/// @nodoc
class __$$SuccessUserServiceImplCopyWithImpl<$Res>
    extends _$ListPunishActionCopyWithImpl<$Res, _$SuccessUserServiceImpl>
    implements _$$SuccessUserServiceImplCopyWith<$Res> {
  __$$SuccessUserServiceImplCopyWithImpl(_$SuccessUserServiceImpl _value,
      $Res Function(_$SuccessUserServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessUserServiceImpl(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<PunishDTO>>,
    ));
  }
}

/// @nodoc

class _$SuccessUserServiceImpl implements _SuccessUserService {
  const _$SuccessUserServiceImpl(final List<DocumentSnapshot<PunishDTO>> user)
      : _user = user;

  final List<DocumentSnapshot<PunishDTO>> _user;
  @override
  List<DocumentSnapshot<PunishDTO>> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'ListPunishAction.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUserServiceImpl &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUserServiceImplCopyWith<_$SuccessUserServiceImpl> get copyWith =>
      __$$SuccessUserServiceImplCopyWithImpl<_$SuccessUserServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() getUserService,
    required TResult Function(bool isLoading) loading,
    required TResult Function(List<DocumentSnapshot<PunishDTO>> user) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String id, bool isDone) markDone,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? getUserService,
    TResult? Function(bool isLoading)? loading,
    TResult? Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String id, bool isDone)? markDone,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? getUserService,
    TResult Function(bool isLoading)? loading,
    TResult Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String id, bool isDone)? markDone,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_UserService value) getUserService,
    required TResult Function(_LoadingUserService value) loading,
    required TResult Function(_SuccessUserService value) success,
    required TResult Function(_FailureUserService value) failure,
    required TResult Function(_MarkPunish value) markDone,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_UserService value)? getUserService,
    TResult? Function(_LoadingUserService value)? loading,
    TResult? Function(_SuccessUserService value)? success,
    TResult? Function(_FailureUserService value)? failure,
    TResult? Function(_MarkPunish value)? markDone,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_UserService value)? getUserService,
    TResult Function(_LoadingUserService value)? loading,
    TResult Function(_SuccessUserService value)? success,
    TResult Function(_FailureUserService value)? failure,
    TResult Function(_MarkPunish value)? markDone,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessUserService implements ListPunishAction {
  const factory _SuccessUserService(
      final List<DocumentSnapshot<PunishDTO>> user) = _$SuccessUserServiceImpl;

  List<DocumentSnapshot<PunishDTO>> get user;
  @JsonKey(ignore: true)
  _$$SuccessUserServiceImplCopyWith<_$SuccessUserServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUserServiceImplCopyWith<$Res> {
  factory _$$FailureUserServiceImplCopyWith(_$FailureUserServiceImpl value,
          $Res Function(_$FailureUserServiceImpl) then) =
      __$$FailureUserServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorInfo error});
}

/// @nodoc
class __$$FailureUserServiceImplCopyWithImpl<$Res>
    extends _$ListPunishActionCopyWithImpl<$Res, _$FailureUserServiceImpl>
    implements _$$FailureUserServiceImplCopyWith<$Res> {
  __$$FailureUserServiceImplCopyWithImpl(_$FailureUserServiceImpl _value,
      $Res Function(_$FailureUserServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureUserServiceImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
    ));
  }
}

/// @nodoc

class _$FailureUserServiceImpl implements _FailureUserService {
  const _$FailureUserServiceImpl(this.error);

  @override
  final ErrorInfo error;

  @override
  String toString() {
    return 'ListPunishAction.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUserServiceImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUserServiceImplCopyWith<_$FailureUserServiceImpl> get copyWith =>
      __$$FailureUserServiceImplCopyWithImpl<_$FailureUserServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() getUserService,
    required TResult Function(bool isLoading) loading,
    required TResult Function(List<DocumentSnapshot<PunishDTO>> user) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String id, bool isDone) markDone,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? getUserService,
    TResult? Function(bool isLoading)? loading,
    TResult? Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String id, bool isDone)? markDone,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? getUserService,
    TResult Function(bool isLoading)? loading,
    TResult Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String id, bool isDone)? markDone,
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
    required TResult Function(_UserService value) getUserService,
    required TResult Function(_LoadingUserService value) loading,
    required TResult Function(_SuccessUserService value) success,
    required TResult Function(_FailureUserService value) failure,
    required TResult Function(_MarkPunish value) markDone,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_UserService value)? getUserService,
    TResult? Function(_LoadingUserService value)? loading,
    TResult? Function(_SuccessUserService value)? success,
    TResult? Function(_FailureUserService value)? failure,
    TResult? Function(_MarkPunish value)? markDone,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_UserService value)? getUserService,
    TResult Function(_LoadingUserService value)? loading,
    TResult Function(_SuccessUserService value)? success,
    TResult Function(_FailureUserService value)? failure,
    TResult Function(_MarkPunish value)? markDone,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureUserService implements ListPunishAction {
  const factory _FailureUserService(final ErrorInfo error) =
      _$FailureUserServiceImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureUserServiceImplCopyWith<_$FailureUserServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkPunishImplCopyWith<$Res> {
  factory _$$MarkPunishImplCopyWith(
          _$MarkPunishImpl value, $Res Function(_$MarkPunishImpl) then) =
      __$$MarkPunishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, bool isDone});
}

/// @nodoc
class __$$MarkPunishImplCopyWithImpl<$Res>
    extends _$ListPunishActionCopyWithImpl<$Res, _$MarkPunishImpl>
    implements _$$MarkPunishImplCopyWith<$Res> {
  __$$MarkPunishImplCopyWithImpl(
      _$MarkPunishImpl _value, $Res Function(_$MarkPunishImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isDone = null,
  }) {
    return _then(_$MarkPunishImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MarkPunishImpl implements _MarkPunish {
  const _$MarkPunishImpl(this.id, this.isDone);

  @override
  final String id;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'ListPunishAction.markDone(id: $id, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkPunishImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkPunishImplCopyWith<_$MarkPunishImpl> get copyWith =>
      __$$MarkPunishImplCopyWithImpl<_$MarkPunishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() getUserService,
    required TResult Function(bool isLoading) loading,
    required TResult Function(List<DocumentSnapshot<PunishDTO>> user) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String id, bool isDone) markDone,
  }) {
    return markDone(id, isDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? getUserService,
    TResult? Function(bool isLoading)? loading,
    TResult? Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String id, bool isDone)? markDone,
  }) {
    return markDone?.call(id, isDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? getUserService,
    TResult Function(bool isLoading)? loading,
    TResult Function(List<DocumentSnapshot<PunishDTO>> user)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String id, bool isDone)? markDone,
    required TResult orElse(),
  }) {
    if (markDone != null) {
      return markDone(id, isDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_UserService value) getUserService,
    required TResult Function(_LoadingUserService value) loading,
    required TResult Function(_SuccessUserService value) success,
    required TResult Function(_FailureUserService value) failure,
    required TResult Function(_MarkPunish value) markDone,
  }) {
    return markDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_UserService value)? getUserService,
    TResult? Function(_LoadingUserService value)? loading,
    TResult? Function(_SuccessUserService value)? success,
    TResult? Function(_FailureUserService value)? failure,
    TResult? Function(_MarkPunish value)? markDone,
  }) {
    return markDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_UserService value)? getUserService,
    TResult Function(_LoadingUserService value)? loading,
    TResult Function(_SuccessUserService value)? success,
    TResult Function(_FailureUserService value)? failure,
    TResult Function(_MarkPunish value)? markDone,
    required TResult orElse(),
  }) {
    if (markDone != null) {
      return markDone(this);
    }
    return orElse();
  }
}

abstract class _MarkPunish implements ListPunishAction {
  const factory _MarkPunish(final String id, final bool isDone) =
      _$MarkPunishImpl;

  String get id;
  bool get isDone;
  @JsonKey(ignore: true)
  _$$MarkPunishImplCopyWith<_$MarkPunishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
