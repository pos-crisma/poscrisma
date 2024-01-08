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
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
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
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
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
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
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
abstract class _$$SuccessInviteGenerateImplCopyWith<$Res> {
  factory _$$SuccessInviteGenerateImplCopyWith(
          _$SuccessInviteGenerateImpl value,
          $Res Function(_$SuccessInviteGenerateImpl) then) =
      __$$SuccessInviteGenerateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InviteResponseDTO dto});
}

/// @nodoc
class __$$SuccessInviteGenerateImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$SuccessInviteGenerateImpl>
    implements _$$SuccessInviteGenerateImplCopyWith<$Res> {
  __$$SuccessInviteGenerateImplCopyWithImpl(_$SuccessInviteGenerateImpl _value,
      $Res Function(_$SuccessInviteGenerateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SuccessInviteGenerateImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as InviteResponseDTO,
    ));
  }
}

/// @nodoc

class _$SuccessInviteGenerateImpl implements _SuccessInviteGenerate {
  const _$SuccessInviteGenerateImpl(this.dto);

  @override
  final InviteResponseDTO dto;

  @override
  String toString() {
    return 'InviteAction.successInviteGenerate(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessInviteGenerateImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessInviteGenerateImplCopyWith<_$SuccessInviteGenerateImpl>
      get copyWith => __$$SuccessInviteGenerateImplCopyWithImpl<
          _$SuccessInviteGenerateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return successInviteGenerate(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return successInviteGenerate?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) {
    if (successInviteGenerate != null) {
      return successInviteGenerate(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return successInviteGenerate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return successInviteGenerate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (successInviteGenerate != null) {
      return successInviteGenerate(this);
    }
    return orElse();
  }
}

abstract class _SuccessInviteGenerate implements InviteAction {
  const factory _SuccessInviteGenerate(final InviteResponseDTO dto) =
      _$SuccessInviteGenerateImpl;

  InviteResponseDTO get dto;
  @JsonKey(ignore: true)
  _$$SuccessInviteGenerateImplCopyWith<_$SuccessInviteGenerateImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$InviteActionCopyWithImpl<$Res, _$FailureImpl>
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
    return 'InviteAction.failure(error: $error)';
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
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
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
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements InviteAction {
  const factory _Failure(final ErrorInfo error) = _$FailureImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InviteButtonTappedImplCopyWith<$Res> {
  factory _$$InviteButtonTappedImplCopyWith(_$InviteButtonTappedImpl value,
          $Res Function(_$InviteButtonTappedImpl) then) =
      __$$InviteButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InviteButtonTappedImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$InviteButtonTappedImpl>
    implements _$$InviteButtonTappedImplCopyWith<$Res> {
  __$$InviteButtonTappedImplCopyWithImpl(_$InviteButtonTappedImpl _value,
      $Res Function(_$InviteButtonTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InviteButtonTappedImpl implements _InviteButtonTapped {
  const _$InviteButtonTappedImpl();

  @override
  String toString() {
    return 'InviteAction.inviteButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InviteButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return inviteButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return inviteButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) {
    if (inviteButtonTapped != null) {
      return inviteButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return inviteButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return inviteButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (inviteButtonTapped != null) {
      return inviteButtonTapped(this);
    }
    return orElse();
  }
}

abstract class _InviteButtonTapped implements InviteAction {
  const factory _InviteButtonTapped() = _$InviteButtonTappedImpl;
}

/// @nodoc
abstract class _$$InviteSelectorImplCopyWith<$Res> {
  factory _$$InviteSelectorImplCopyWith(_$InviteSelectorImpl value,
          $Res Function(_$InviteSelectorImpl) then) =
      __$$InviteSelectorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$InviteSelectorImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$InviteSelectorImpl>
    implements _$$InviteSelectorImplCopyWith<$Res> {
  __$$InviteSelectorImplCopyWithImpl(
      _$InviteSelectorImpl _value, $Res Function(_$InviteSelectorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$InviteSelectorImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InviteSelectorImpl implements _InviteSelector {
  const _$InviteSelectorImpl(this.number);

  @override
  final int number;

  @override
  String toString() {
    return 'InviteAction.inviteSelector(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteSelectorImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteSelectorImplCopyWith<_$InviteSelectorImpl> get copyWith =>
      __$$InviteSelectorImplCopyWithImpl<_$InviteSelectorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return inviteSelector(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return inviteSelector?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) {
    if (inviteSelector != null) {
      return inviteSelector(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return inviteSelector(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return inviteSelector?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (inviteSelector != null) {
      return inviteSelector(this);
    }
    return orElse();
  }
}

abstract class _InviteSelector implements InviteAction {
  const factory _InviteSelector(final int number) = _$InviteSelectorImpl;

  int get number;
  @JsonKey(ignore: true)
  _$$InviteSelectorImplCopyWith<_$InviteSelectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InviteIsGuestImplCopyWith<$Res> {
  factory _$$InviteIsGuestImplCopyWith(
          _$InviteIsGuestImpl value, $Res Function(_$InviteIsGuestImpl) then) =
      __$$InviteIsGuestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InviteIsGuestImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$InviteIsGuestImpl>
    implements _$$InviteIsGuestImplCopyWith<$Res> {
  __$$InviteIsGuestImplCopyWithImpl(
      _$InviteIsGuestImpl _value, $Res Function(_$InviteIsGuestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InviteIsGuestImpl implements _InviteIsGuest {
  const _$InviteIsGuestImpl();

  @override
  String toString() {
    return 'InviteAction.inviteIsGuest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InviteIsGuestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return inviteIsGuest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return inviteIsGuest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) {
    if (inviteIsGuest != null) {
      return inviteIsGuest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return inviteIsGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return inviteIsGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (inviteIsGuest != null) {
      return inviteIsGuest(this);
    }
    return orElse();
  }
}

abstract class _InviteIsGuest implements InviteAction {
  const factory _InviteIsGuest() = _$InviteIsGuestImpl;
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$ServiceImpl>
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
    return 'InviteAction.getList()';
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
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return getList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return getList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return getList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return getList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList(this);
    }
    return orElse();
  }
}

abstract class _Service implements InviteAction {
  const factory _Service() = _$ServiceImpl;
}

/// @nodoc
abstract class _$$SuccessInviteImplCopyWith<$Res> {
  factory _$$SuccessInviteImplCopyWith(
          _$SuccessInviteImpl value, $Res Function(_$SuccessInviteImpl) then) =
      __$$SuccessInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListInviteByUserDTO dto});
}

/// @nodoc
class __$$SuccessInviteImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$SuccessInviteImpl>
    implements _$$SuccessInviteImplCopyWith<$Res> {
  __$$SuccessInviteImplCopyWithImpl(
      _$SuccessInviteImpl _value, $Res Function(_$SuccessInviteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SuccessInviteImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as ListInviteByUserDTO,
    ));
  }
}

/// @nodoc

class _$SuccessInviteImpl implements _SuccessInvite {
  const _$SuccessInviteImpl(this.dto);

  @override
  final ListInviteByUserDTO dto;

  @override
  String toString() {
    return 'InviteAction.successInviteList(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessInviteImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessInviteImplCopyWith<_$SuccessInviteImpl> get copyWith =>
      __$$SuccessInviteImplCopyWithImpl<_$SuccessInviteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return successInviteList(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return successInviteList?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) {
    if (successInviteList != null) {
      return successInviteList(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return successInviteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return successInviteList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (successInviteList != null) {
      return successInviteList(this);
    }
    return orElse();
  }
}

abstract class _SuccessInvite implements InviteAction {
  const factory _SuccessInvite(final ListInviteByUserDTO dto) =
      _$SuccessInviteImpl;

  ListInviteByUserDTO get dto;
  @JsonKey(ignore: true)
  _$$SuccessInviteImplCopyWith<_$SuccessInviteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipboardTappedImplCopyWith<$Res> {
  factory _$$ClipboardTappedImplCopyWith(_$ClipboardTappedImpl value,
          $Res Function(_$ClipboardTappedImpl) then) =
      __$$ClipboardTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String inviteCode});
}

/// @nodoc
class __$$ClipboardTappedImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$ClipboardTappedImpl>
    implements _$$ClipboardTappedImplCopyWith<$Res> {
  __$$ClipboardTappedImplCopyWithImpl(
      _$ClipboardTappedImpl _value, $Res Function(_$ClipboardTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteCode = null,
  }) {
    return _then(_$ClipboardTappedImpl(
      null == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClipboardTappedImpl implements _ClipboardTapped {
  const _$ClipboardTappedImpl(this.inviteCode);

  @override
  final String inviteCode;

  @override
  String toString() {
    return 'InviteAction.clipboardTapped(inviteCode: $inviteCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipboardTappedImpl &&
            (identical(other.inviteCode, inviteCode) ||
                other.inviteCode == inviteCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipboardTappedImplCopyWith<_$ClipboardTappedImpl> get copyWith =>
      __$$ClipboardTappedImplCopyWithImpl<_$ClipboardTappedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return clipboardTapped(inviteCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return clipboardTapped?.call(inviteCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) {
    if (clipboardTapped != null) {
      return clipboardTapped(inviteCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return clipboardTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return clipboardTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (clipboardTapped != null) {
      return clipboardTapped(this);
    }
    return orElse();
  }
}

abstract class _ClipboardTapped implements InviteAction {
  const factory _ClipboardTapped(final String inviteCode) =
      _$ClipboardTappedImpl;

  String get inviteCode;
  @JsonKey(ignore: true)
  _$$ClipboardTappedImplCopyWith<_$ClipboardTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipboardAddedImplCopyWith<$Res> {
  factory _$$ClipboardAddedImplCopyWith(_$ClipboardAddedImpl value,
          $Res Function(_$ClipboardAddedImpl) then) =
      __$$ClipboardAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClipboardAddedImplCopyWithImpl<$Res>
    extends _$InviteActionCopyWithImpl<$Res, _$ClipboardAddedImpl>
    implements _$$ClipboardAddedImplCopyWith<$Res> {
  __$$ClipboardAddedImplCopyWithImpl(
      _$ClipboardAddedImpl _value, $Res Function(_$ClipboardAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClipboardAddedImpl implements _ClipboardAdded {
  const _$ClipboardAddedImpl();

  @override
  String toString() {
    return 'InviteAction.clipboardAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClipboardAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function() inviteButtonTapped,
    required TResult Function(int number) inviteSelector,
    required TResult Function() inviteIsGuest,
    required TResult Function() getList,
    required TResult Function(ListInviteByUserDTO dto) successInviteList,
    required TResult Function(String inviteCode) clipboardTapped,
    required TResult Function() clipboardAdded,
  }) {
    return clipboardAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function()? inviteButtonTapped,
    TResult? Function(int number)? inviteSelector,
    TResult? Function()? inviteIsGuest,
    TResult? Function()? getList,
    TResult? Function(ListInviteByUserDTO dto)? successInviteList,
    TResult? Function(String inviteCode)? clipboardTapped,
    TResult? Function()? clipboardAdded,
  }) {
    return clipboardAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ErrorInfo error)? failure,
    TResult Function()? inviteButtonTapped,
    TResult Function(int number)? inviteSelector,
    TResult Function()? inviteIsGuest,
    TResult Function()? getList,
    TResult Function(ListInviteByUserDTO dto)? successInviteList,
    TResult Function(String inviteCode)? clipboardTapped,
    TResult Function()? clipboardAdded,
    required TResult orElse(),
  }) {
    if (clipboardAdded != null) {
      return clipboardAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InviteButtonTapped value) inviteButtonTapped,
    required TResult Function(_InviteSelector value) inviteSelector,
    required TResult Function(_InviteIsGuest value) inviteIsGuest,
    required TResult Function(_Service value) getList,
    required TResult Function(_SuccessInvite value) successInviteList,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
    required TResult Function(_ClipboardAdded value) clipboardAdded,
  }) {
    return clipboardAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult? Function(_InviteSelector value)? inviteSelector,
    TResult? Function(_InviteIsGuest value)? inviteIsGuest,
    TResult? Function(_Service value)? getList,
    TResult? Function(_SuccessInvite value)? successInviteList,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
    TResult? Function(_ClipboardAdded value)? clipboardAdded,
  }) {
    return clipboardAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_Failure value)? failure,
    TResult Function(_InviteButtonTapped value)? inviteButtonTapped,
    TResult Function(_InviteSelector value)? inviteSelector,
    TResult Function(_InviteIsGuest value)? inviteIsGuest,
    TResult Function(_Service value)? getList,
    TResult Function(_SuccessInvite value)? successInviteList,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    TResult Function(_ClipboardAdded value)? clipboardAdded,
    required TResult orElse(),
  }) {
    if (clipboardAdded != null) {
      return clipboardAdded(this);
    }
    return orElse();
  }
}

abstract class _ClipboardAdded implements InviteAction {
  const factory _ClipboardAdded() = _$ClipboardAddedImpl;
}
