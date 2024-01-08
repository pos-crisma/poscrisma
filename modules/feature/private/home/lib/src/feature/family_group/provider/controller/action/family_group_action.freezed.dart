// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_group_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FamilyGroupAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyGroupActionCopyWith<$Res> {
  factory $FamilyGroupActionCopyWith(
          FamilyGroupAction value, $Res Function(FamilyGroupAction) then) =
      _$FamilyGroupActionCopyWithImpl<$Res, FamilyGroupAction>;
}

/// @nodoc
class _$FamilyGroupActionCopyWithImpl<$Res, $Val extends FamilyGroupAction>
    implements $FamilyGroupActionCopyWith<$Res> {
  _$FamilyGroupActionCopyWithImpl(this._value, this._then);

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
    extends _$FamilyGroupActionCopyWithImpl<$Res, _$OnAppearTappedImpl>
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
    return 'FamilyGroupAction.onAppear(context: $context)';
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
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
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
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements FamilyGroupAction {
  const factory _OnAppearTapped(final BuildContext context) =
      _$OnAppearTappedImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$OnAppearTappedImplCopyWith<_$OnAppearTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateTappedImplCopyWith<$Res> {
  factory _$$GenerateTappedImplCopyWith(_$GenerateTappedImpl value,
          $Res Function(_$GenerateTappedImpl) then) =
      __$$GenerateTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateTappedImplCopyWithImpl<$Res>
    extends _$FamilyGroupActionCopyWithImpl<$Res, _$GenerateTappedImpl>
    implements _$$GenerateTappedImplCopyWith<$Res> {
  __$$GenerateTappedImplCopyWithImpl(
      _$GenerateTappedImpl _value, $Res Function(_$GenerateTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenerateTappedImpl implements _GenerateTapped {
  const _$GenerateTappedImpl();

  @override
  String toString() {
    return 'FamilyGroupAction.inviteButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenerateTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) {
    return inviteButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) {
    return inviteButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
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
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) {
    return inviteButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) {
    return inviteButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (inviteButtonTapped != null) {
      return inviteButtonTapped(this);
    }
    return orElse();
  }
}

abstract class _GenerateTapped implements FamilyGroupAction {
  const factory _GenerateTapped() = _$GenerateTappedImpl;
}

/// @nodoc
abstract class _$$InviteButtonTappedImplCopyWith<$Res> {
  factory _$$InviteButtonTappedImplCopyWith(_$InviteButtonTappedImpl value,
          $Res Function(_$InviteButtonTappedImpl) then) =
      __$$InviteButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InviteButtonTappedImplCopyWithImpl<$Res>
    extends _$FamilyGroupActionCopyWithImpl<$Res, _$InviteButtonTappedImpl>
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
    return 'FamilyGroupAction.generateTapped()';
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
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) {
    return generateTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) {
    return generateTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (generateTapped != null) {
      return generateTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) {
    return generateTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) {
    return generateTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (generateTapped != null) {
      return generateTapped(this);
    }
    return orElse();
  }
}

abstract class _InviteButtonTapped implements FamilyGroupAction {
  const factory _InviteButtonTapped() = _$InviteButtonTappedImpl;
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
    extends _$FamilyGroupActionCopyWithImpl<$Res, _$SuccessInviteGenerateImpl>
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
    return 'FamilyGroupAction.successInviteGenerate(dto: $dto)';
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
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) {
    return successInviteGenerate(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) {
    return successInviteGenerate?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
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
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) {
    return successInviteGenerate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) {
    return successInviteGenerate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (successInviteGenerate != null) {
      return successInviteGenerate(this);
    }
    return orElse();
  }
}

abstract class _SuccessInviteGenerate implements FamilyGroupAction {
  const factory _SuccessInviteGenerate(final InviteResponseDTO dto) =
      _$SuccessInviteGenerateImpl;

  InviteResponseDTO get dto;
  @JsonKey(ignore: true)
  _$$SuccessInviteGenerateImplCopyWith<_$SuccessInviteGenerateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessListInviteImplCopyWith<$Res> {
  factory _$$SuccessListInviteImplCopyWith(_$SuccessListInviteImpl value,
          $Res Function(_$SuccessListInviteImpl) then) =
      __$$SuccessListInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListInviteByUserDTO dto});
}

/// @nodoc
class __$$SuccessListInviteImplCopyWithImpl<$Res>
    extends _$FamilyGroupActionCopyWithImpl<$Res, _$SuccessListInviteImpl>
    implements _$$SuccessListInviteImplCopyWith<$Res> {
  __$$SuccessListInviteImplCopyWithImpl(_$SuccessListInviteImpl _value,
      $Res Function(_$SuccessListInviteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SuccessListInviteImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as ListInviteByUserDTO,
    ));
  }
}

/// @nodoc

class _$SuccessListInviteImpl implements _SuccessListInvite {
  const _$SuccessListInviteImpl(this.dto);

  @override
  final ListInviteByUserDTO dto;

  @override
  String toString() {
    return 'FamilyGroupAction.successListInvite(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessListInviteImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessListInviteImplCopyWith<_$SuccessListInviteImpl> get copyWith =>
      __$$SuccessListInviteImplCopyWithImpl<_$SuccessListInviteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) {
    return successListInvite(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) {
    return successListInvite?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (successListInvite != null) {
      return successListInvite(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) {
    return successListInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) {
    return successListInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (successListInvite != null) {
      return successListInvite(this);
    }
    return orElse();
  }
}

abstract class _SuccessListInvite implements FamilyGroupAction {
  const factory _SuccessListInvite(final ListInviteByUserDTO dto) =
      _$SuccessListInviteImpl;

  ListInviteByUserDTO get dto;
  @JsonKey(ignore: true)
  _$$SuccessListInviteImplCopyWith<_$SuccessListInviteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureAPIImplCopyWith<$Res> {
  factory _$$FailureAPIImplCopyWith(
          _$FailureAPIImpl value, $Res Function(_$FailureAPIImpl) then) =
      __$$FailureAPIImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorInfo error});
}

/// @nodoc
class __$$FailureAPIImplCopyWithImpl<$Res>
    extends _$FamilyGroupActionCopyWithImpl<$Res, _$FailureAPIImpl>
    implements _$$FailureAPIImplCopyWith<$Res> {
  __$$FailureAPIImplCopyWithImpl(
      _$FailureAPIImpl _value, $Res Function(_$FailureAPIImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureAPIImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
    ));
  }
}

/// @nodoc

class _$FailureAPIImpl implements _FailureAPI {
  const _$FailureAPIImpl(this.error);

  @override
  final ErrorInfo error;

  @override
  String toString() {
    return 'FamilyGroupAction.failureAPI(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureAPIImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureAPIImplCopyWith<_$FailureAPIImpl> get copyWith =>
      __$$FailureAPIImplCopyWithImpl<_$FailureAPIImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) {
    return failureAPI(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) {
    return failureAPI?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (failureAPI != null) {
      return failureAPI(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) {
    return failureAPI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) {
    return failureAPI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (failureAPI != null) {
      return failureAPI(this);
    }
    return orElse();
  }
}

abstract class _FailureAPI implements FamilyGroupAction {
  const factory _FailureAPI(final ErrorInfo error) = _$FailureAPIImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureAPIImplCopyWith<_$FailureAPIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InviteToClipboardImplCopyWith<$Res> {
  factory _$$InviteToClipboardImplCopyWith(_$InviteToClipboardImpl value,
          $Res Function(_$InviteToClipboardImpl) then) =
      __$$InviteToClipboardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InviteToClipboardImplCopyWithImpl<$Res>
    extends _$FamilyGroupActionCopyWithImpl<$Res, _$InviteToClipboardImpl>
    implements _$$InviteToClipboardImplCopyWith<$Res> {
  __$$InviteToClipboardImplCopyWithImpl(_$InviteToClipboardImpl _value,
      $Res Function(_$InviteToClipboardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InviteToClipboardImpl implements _InviteToClipboard {
  const _$InviteToClipboardImpl();

  @override
  String toString() {
    return 'FamilyGroupAction.inviteToClipboard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InviteToClipboardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) {
    return inviteToClipboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) {
    return inviteToClipboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (inviteToClipboard != null) {
      return inviteToClipboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) {
    return inviteToClipboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) {
    return inviteToClipboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (inviteToClipboard != null) {
      return inviteToClipboard(this);
    }
    return orElse();
  }
}

abstract class _InviteToClipboard implements FamilyGroupAction {
  const factory _InviteToClipboard() = _$InviteToClipboardImpl;
}

/// @nodoc
abstract class _$$ClipboardTappedImplCopyWith<$Res> {
  factory _$$ClipboardTappedImplCopyWith(_$ClipboardTappedImpl value,
          $Res Function(_$ClipboardTappedImpl) then) =
      __$$ClipboardTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invite, bool fromList});
}

/// @nodoc
class __$$ClipboardTappedImplCopyWithImpl<$Res>
    extends _$FamilyGroupActionCopyWithImpl<$Res, _$ClipboardTappedImpl>
    implements _$$ClipboardTappedImplCopyWith<$Res> {
  __$$ClipboardTappedImplCopyWithImpl(
      _$ClipboardTappedImpl _value, $Res Function(_$ClipboardTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invite = null,
    Object? fromList = null,
  }) {
    return _then(_$ClipboardTappedImpl(
      null == invite
          ? _value.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as String,
      null == fromList
          ? _value.fromList
          : fromList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ClipboardTappedImpl implements _ClipboardTapped {
  const _$ClipboardTappedImpl(this.invite, this.fromList);

  @override
  final String invite;
  @override
  final bool fromList;

  @override
  String toString() {
    return 'FamilyGroupAction.clipboardTapped(invite: $invite, fromList: $fromList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipboardTappedImpl &&
            (identical(other.invite, invite) || other.invite == invite) &&
            (identical(other.fromList, fromList) ||
                other.fromList == fromList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invite, fromList);

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
    required TResult Function() inviteButtonTapped,
    required TResult Function() generateTapped,
    required TResult Function(InviteResponseDTO dto) successInviteGenerate,
    required TResult Function(ListInviteByUserDTO dto) successListInvite,
    required TResult Function(ErrorInfo error) failureAPI,
    required TResult Function() inviteToClipboard,
    required TResult Function(String invite, bool fromList) clipboardTapped,
  }) {
    return clipboardTapped(invite, fromList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? inviteButtonTapped,
    TResult? Function()? generateTapped,
    TResult? Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult? Function(ListInviteByUserDTO dto)? successListInvite,
    TResult? Function(ErrorInfo error)? failureAPI,
    TResult? Function()? inviteToClipboard,
    TResult? Function(String invite, bool fromList)? clipboardTapped,
  }) {
    return clipboardTapped?.call(invite, fromList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? inviteButtonTapped,
    TResult Function()? generateTapped,
    TResult Function(InviteResponseDTO dto)? successInviteGenerate,
    TResult Function(ListInviteByUserDTO dto)? successListInvite,
    TResult Function(ErrorInfo error)? failureAPI,
    TResult Function()? inviteToClipboard,
    TResult Function(String invite, bool fromList)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (clipboardTapped != null) {
      return clipboardTapped(invite, fromList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_GenerateTapped value) inviteButtonTapped,
    required TResult Function(_InviteButtonTapped value) generateTapped,
    required TResult Function(_SuccessInviteGenerate value)
        successInviteGenerate,
    required TResult Function(_SuccessListInvite value) successListInvite,
    required TResult Function(_FailureAPI value) failureAPI,
    required TResult Function(_InviteToClipboard value) inviteToClipboard,
    required TResult Function(_ClipboardTapped value) clipboardTapped,
  }) {
    return clipboardTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_GenerateTapped value)? inviteButtonTapped,
    TResult? Function(_InviteButtonTapped value)? generateTapped,
    TResult? Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult? Function(_SuccessListInvite value)? successListInvite,
    TResult? Function(_FailureAPI value)? failureAPI,
    TResult? Function(_InviteToClipboard value)? inviteToClipboard,
    TResult? Function(_ClipboardTapped value)? clipboardTapped,
  }) {
    return clipboardTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_GenerateTapped value)? inviteButtonTapped,
    TResult Function(_InviteButtonTapped value)? generateTapped,
    TResult Function(_SuccessInviteGenerate value)? successInviteGenerate,
    TResult Function(_SuccessListInvite value)? successListInvite,
    TResult Function(_FailureAPI value)? failureAPI,
    TResult Function(_InviteToClipboard value)? inviteToClipboard,
    TResult Function(_ClipboardTapped value)? clipboardTapped,
    required TResult orElse(),
  }) {
    if (clipboardTapped != null) {
      return clipboardTapped(this);
    }
    return orElse();
  }
}

abstract class _ClipboardTapped implements FamilyGroupAction {
  const factory _ClipboardTapped(final String invite, final bool fromList) =
      _$ClipboardTappedImpl;

  String get invite;
  bool get fromList;
  @JsonKey(ignore: true)
  _$$ClipboardTappedImplCopyWith<_$ClipboardTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
