// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_family_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateFamilyAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() familyService,
    required TResult Function() loadingFamilyService,
    required TResult Function(CreateFamilyResponseDTO family)
        successFamilyService,
    required TResult Function(ErrorInfo error) failureFamilyService,
    required TResult Function(
            String error, CreateFamilyTextFieldFailure failure)
        validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? familyService,
    TResult? Function()? loadingFamilyService,
    TResult? Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult? Function(ErrorInfo error)? failureFamilyService,
    TResult? Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? familyService,
    TResult Function()? loadingFamilyService,
    TResult Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult Function(ErrorInfo error)? failureFamilyService,
    TResult Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_FamilyService value) familyService,
    required TResult Function(_LoadingFamilyService value) loadingFamilyService,
    required TResult Function(_SuccessFamilyService value) successFamilyService,
    required TResult Function(_FailureFamilyService value) failureFamilyService,
    required TResult Function(_Validator value) validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_FamilyService value)? familyService,
    TResult? Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult? Function(_SuccessFamilyService value)? successFamilyService,
    TResult? Function(_FailureFamilyService value)? failureFamilyService,
    TResult? Function(_Validator value)? validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_FamilyService value)? familyService,
    TResult Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult Function(_SuccessFamilyService value)? successFamilyService,
    TResult Function(_FailureFamilyService value)? failureFamilyService,
    TResult Function(_Validator value)? validator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFamilyActionCopyWith<$Res> {
  factory $CreateFamilyActionCopyWith(
          CreateFamilyAction value, $Res Function(CreateFamilyAction) then) =
      _$CreateFamilyActionCopyWithImpl<$Res, CreateFamilyAction>;
}

/// @nodoc
class _$CreateFamilyActionCopyWithImpl<$Res, $Val extends CreateFamilyAction>
    implements $CreateFamilyActionCopyWith<$Res> {
  _$CreateFamilyActionCopyWithImpl(this._value, this._then);

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
    extends _$CreateFamilyActionCopyWithImpl<$Res, _$OnAppearImpl>
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
    return 'CreateFamilyAction.onAppear(context: $context)';
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
    required TResult Function() buttonTapped,
    required TResult Function() familyService,
    required TResult Function() loadingFamilyService,
    required TResult Function(CreateFamilyResponseDTO family)
        successFamilyService,
    required TResult Function(ErrorInfo error) failureFamilyService,
    required TResult Function(
            String error, CreateFamilyTextFieldFailure failure)
        validator,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? familyService,
    TResult? Function()? loadingFamilyService,
    TResult? Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult? Function(ErrorInfo error)? failureFamilyService,
    TResult? Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? familyService,
    TResult Function()? loadingFamilyService,
    TResult Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult Function(ErrorInfo error)? failureFamilyService,
    TResult Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
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
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_FamilyService value) familyService,
    required TResult Function(_LoadingFamilyService value) loadingFamilyService,
    required TResult Function(_SuccessFamilyService value) successFamilyService,
    required TResult Function(_FailureFamilyService value) failureFamilyService,
    required TResult Function(_Validator value) validator,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_FamilyService value)? familyService,
    TResult? Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult? Function(_SuccessFamilyService value)? successFamilyService,
    TResult? Function(_FailureFamilyService value)? failureFamilyService,
    TResult? Function(_Validator value)? validator,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_FamilyService value)? familyService,
    TResult Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult Function(_SuccessFamilyService value)? successFamilyService,
    TResult Function(_FailureFamilyService value)? failureFamilyService,
    TResult Function(_Validator value)? validator,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppear implements CreateFamilyAction {
  const factory _OnAppear(final BuildContext context) = _$OnAppearImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$OnAppearImplCopyWith<_$OnAppearImpl> get copyWith =>
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
    extends _$CreateFamilyActionCopyWithImpl<$Res, _$ButtonTappedImpl>
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
    return 'CreateFamilyAction.buttonTapped()';
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
    required TResult Function() familyService,
    required TResult Function() loadingFamilyService,
    required TResult Function(CreateFamilyResponseDTO family)
        successFamilyService,
    required TResult Function(ErrorInfo error) failureFamilyService,
    required TResult Function(
            String error, CreateFamilyTextFieldFailure failure)
        validator,
  }) {
    return buttonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? familyService,
    TResult? Function()? loadingFamilyService,
    TResult? Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult? Function(ErrorInfo error)? failureFamilyService,
    TResult? Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
  }) {
    return buttonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? familyService,
    TResult Function()? loadingFamilyService,
    TResult Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult Function(ErrorInfo error)? failureFamilyService,
    TResult Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
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
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_FamilyService value) familyService,
    required TResult Function(_LoadingFamilyService value) loadingFamilyService,
    required TResult Function(_SuccessFamilyService value) successFamilyService,
    required TResult Function(_FailureFamilyService value) failureFamilyService,
    required TResult Function(_Validator value) validator,
  }) {
    return buttonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_FamilyService value)? familyService,
    TResult? Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult? Function(_SuccessFamilyService value)? successFamilyService,
    TResult? Function(_FailureFamilyService value)? failureFamilyService,
    TResult? Function(_Validator value)? validator,
  }) {
    return buttonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_FamilyService value)? familyService,
    TResult Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult Function(_SuccessFamilyService value)? successFamilyService,
    TResult Function(_FailureFamilyService value)? failureFamilyService,
    TResult Function(_Validator value)? validator,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped(this);
    }
    return orElse();
  }
}

abstract class _ButtonTapped implements CreateFamilyAction {
  const factory _ButtonTapped() = _$ButtonTappedImpl;
}

/// @nodoc
abstract class _$$FamilyServiceImplCopyWith<$Res> {
  factory _$$FamilyServiceImplCopyWith(
          _$FamilyServiceImpl value, $Res Function(_$FamilyServiceImpl) then) =
      __$$FamilyServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FamilyServiceImplCopyWithImpl<$Res>
    extends _$CreateFamilyActionCopyWithImpl<$Res, _$FamilyServiceImpl>
    implements _$$FamilyServiceImplCopyWith<$Res> {
  __$$FamilyServiceImplCopyWithImpl(
      _$FamilyServiceImpl _value, $Res Function(_$FamilyServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FamilyServiceImpl implements _FamilyService {
  const _$FamilyServiceImpl();

  @override
  String toString() {
    return 'CreateFamilyAction.familyService()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FamilyServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() familyService,
    required TResult Function() loadingFamilyService,
    required TResult Function(CreateFamilyResponseDTO family)
        successFamilyService,
    required TResult Function(ErrorInfo error) failureFamilyService,
    required TResult Function(
            String error, CreateFamilyTextFieldFailure failure)
        validator,
  }) {
    return familyService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? familyService,
    TResult? Function()? loadingFamilyService,
    TResult? Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult? Function(ErrorInfo error)? failureFamilyService,
    TResult? Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
  }) {
    return familyService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? familyService,
    TResult Function()? loadingFamilyService,
    TResult Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult Function(ErrorInfo error)? failureFamilyService,
    TResult Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
    required TResult orElse(),
  }) {
    if (familyService != null) {
      return familyService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_FamilyService value) familyService,
    required TResult Function(_LoadingFamilyService value) loadingFamilyService,
    required TResult Function(_SuccessFamilyService value) successFamilyService,
    required TResult Function(_FailureFamilyService value) failureFamilyService,
    required TResult Function(_Validator value) validator,
  }) {
    return familyService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_FamilyService value)? familyService,
    TResult? Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult? Function(_SuccessFamilyService value)? successFamilyService,
    TResult? Function(_FailureFamilyService value)? failureFamilyService,
    TResult? Function(_Validator value)? validator,
  }) {
    return familyService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_FamilyService value)? familyService,
    TResult Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult Function(_SuccessFamilyService value)? successFamilyService,
    TResult Function(_FailureFamilyService value)? failureFamilyService,
    TResult Function(_Validator value)? validator,
    required TResult orElse(),
  }) {
    if (familyService != null) {
      return familyService(this);
    }
    return orElse();
  }
}

abstract class _FamilyService implements CreateFamilyAction {
  const factory _FamilyService() = _$FamilyServiceImpl;
}

/// @nodoc
abstract class _$$LoadingFamilyServiceImplCopyWith<$Res> {
  factory _$$LoadingFamilyServiceImplCopyWith(_$LoadingFamilyServiceImpl value,
          $Res Function(_$LoadingFamilyServiceImpl) then) =
      __$$LoadingFamilyServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFamilyServiceImplCopyWithImpl<$Res>
    extends _$CreateFamilyActionCopyWithImpl<$Res, _$LoadingFamilyServiceImpl>
    implements _$$LoadingFamilyServiceImplCopyWith<$Res> {
  __$$LoadingFamilyServiceImplCopyWithImpl(_$LoadingFamilyServiceImpl _value,
      $Res Function(_$LoadingFamilyServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingFamilyServiceImpl implements _LoadingFamilyService {
  const _$LoadingFamilyServiceImpl();

  @override
  String toString() {
    return 'CreateFamilyAction.loadingFamilyService()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingFamilyServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() familyService,
    required TResult Function() loadingFamilyService,
    required TResult Function(CreateFamilyResponseDTO family)
        successFamilyService,
    required TResult Function(ErrorInfo error) failureFamilyService,
    required TResult Function(
            String error, CreateFamilyTextFieldFailure failure)
        validator,
  }) {
    return loadingFamilyService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? familyService,
    TResult? Function()? loadingFamilyService,
    TResult? Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult? Function(ErrorInfo error)? failureFamilyService,
    TResult? Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
  }) {
    return loadingFamilyService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? familyService,
    TResult Function()? loadingFamilyService,
    TResult Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult Function(ErrorInfo error)? failureFamilyService,
    TResult Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
    required TResult orElse(),
  }) {
    if (loadingFamilyService != null) {
      return loadingFamilyService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_FamilyService value) familyService,
    required TResult Function(_LoadingFamilyService value) loadingFamilyService,
    required TResult Function(_SuccessFamilyService value) successFamilyService,
    required TResult Function(_FailureFamilyService value) failureFamilyService,
    required TResult Function(_Validator value) validator,
  }) {
    return loadingFamilyService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_FamilyService value)? familyService,
    TResult? Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult? Function(_SuccessFamilyService value)? successFamilyService,
    TResult? Function(_FailureFamilyService value)? failureFamilyService,
    TResult? Function(_Validator value)? validator,
  }) {
    return loadingFamilyService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_FamilyService value)? familyService,
    TResult Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult Function(_SuccessFamilyService value)? successFamilyService,
    TResult Function(_FailureFamilyService value)? failureFamilyService,
    TResult Function(_Validator value)? validator,
    required TResult orElse(),
  }) {
    if (loadingFamilyService != null) {
      return loadingFamilyService(this);
    }
    return orElse();
  }
}

abstract class _LoadingFamilyService implements CreateFamilyAction {
  const factory _LoadingFamilyService() = _$LoadingFamilyServiceImpl;
}

/// @nodoc
abstract class _$$SuccessFamilyServiceImplCopyWith<$Res> {
  factory _$$SuccessFamilyServiceImplCopyWith(_$SuccessFamilyServiceImpl value,
          $Res Function(_$SuccessFamilyServiceImpl) then) =
      __$$SuccessFamilyServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateFamilyResponseDTO family});
}

/// @nodoc
class __$$SuccessFamilyServiceImplCopyWithImpl<$Res>
    extends _$CreateFamilyActionCopyWithImpl<$Res, _$SuccessFamilyServiceImpl>
    implements _$$SuccessFamilyServiceImplCopyWith<$Res> {
  __$$SuccessFamilyServiceImplCopyWithImpl(_$SuccessFamilyServiceImpl _value,
      $Res Function(_$SuccessFamilyServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
  }) {
    return _then(_$SuccessFamilyServiceImpl(
      null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as CreateFamilyResponseDTO,
    ));
  }
}

/// @nodoc

class _$SuccessFamilyServiceImpl implements _SuccessFamilyService {
  const _$SuccessFamilyServiceImpl(this.family);

  @override
  final CreateFamilyResponseDTO family;

  @override
  String toString() {
    return 'CreateFamilyAction.successFamilyService(family: $family)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessFamilyServiceImpl &&
            (identical(other.family, family) || other.family == family));
  }

  @override
  int get hashCode => Object.hash(runtimeType, family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessFamilyServiceImplCopyWith<_$SuccessFamilyServiceImpl>
      get copyWith =>
          __$$SuccessFamilyServiceImplCopyWithImpl<_$SuccessFamilyServiceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() familyService,
    required TResult Function() loadingFamilyService,
    required TResult Function(CreateFamilyResponseDTO family)
        successFamilyService,
    required TResult Function(ErrorInfo error) failureFamilyService,
    required TResult Function(
            String error, CreateFamilyTextFieldFailure failure)
        validator,
  }) {
    return successFamilyService(family);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? familyService,
    TResult? Function()? loadingFamilyService,
    TResult? Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult? Function(ErrorInfo error)? failureFamilyService,
    TResult? Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
  }) {
    return successFamilyService?.call(family);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? familyService,
    TResult Function()? loadingFamilyService,
    TResult Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult Function(ErrorInfo error)? failureFamilyService,
    TResult Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
    required TResult orElse(),
  }) {
    if (successFamilyService != null) {
      return successFamilyService(family);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_FamilyService value) familyService,
    required TResult Function(_LoadingFamilyService value) loadingFamilyService,
    required TResult Function(_SuccessFamilyService value) successFamilyService,
    required TResult Function(_FailureFamilyService value) failureFamilyService,
    required TResult Function(_Validator value) validator,
  }) {
    return successFamilyService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_FamilyService value)? familyService,
    TResult? Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult? Function(_SuccessFamilyService value)? successFamilyService,
    TResult? Function(_FailureFamilyService value)? failureFamilyService,
    TResult? Function(_Validator value)? validator,
  }) {
    return successFamilyService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_FamilyService value)? familyService,
    TResult Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult Function(_SuccessFamilyService value)? successFamilyService,
    TResult Function(_FailureFamilyService value)? failureFamilyService,
    TResult Function(_Validator value)? validator,
    required TResult orElse(),
  }) {
    if (successFamilyService != null) {
      return successFamilyService(this);
    }
    return orElse();
  }
}

abstract class _SuccessFamilyService implements CreateFamilyAction {
  const factory _SuccessFamilyService(final CreateFamilyResponseDTO family) =
      _$SuccessFamilyServiceImpl;

  CreateFamilyResponseDTO get family;
  @JsonKey(ignore: true)
  _$$SuccessFamilyServiceImplCopyWith<_$SuccessFamilyServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureFamilyServiceImplCopyWith<$Res> {
  factory _$$FailureFamilyServiceImplCopyWith(_$FailureFamilyServiceImpl value,
          $Res Function(_$FailureFamilyServiceImpl) then) =
      __$$FailureFamilyServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorInfo error});
}

/// @nodoc
class __$$FailureFamilyServiceImplCopyWithImpl<$Res>
    extends _$CreateFamilyActionCopyWithImpl<$Res, _$FailureFamilyServiceImpl>
    implements _$$FailureFamilyServiceImplCopyWith<$Res> {
  __$$FailureFamilyServiceImplCopyWithImpl(_$FailureFamilyServiceImpl _value,
      $Res Function(_$FailureFamilyServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureFamilyServiceImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
    ));
  }
}

/// @nodoc

class _$FailureFamilyServiceImpl implements _FailureFamilyService {
  const _$FailureFamilyServiceImpl(this.error);

  @override
  final ErrorInfo error;

  @override
  String toString() {
    return 'CreateFamilyAction.failureFamilyService(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureFamilyServiceImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureFamilyServiceImplCopyWith<_$FailureFamilyServiceImpl>
      get copyWith =>
          __$$FailureFamilyServiceImplCopyWithImpl<_$FailureFamilyServiceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() familyService,
    required TResult Function() loadingFamilyService,
    required TResult Function(CreateFamilyResponseDTO family)
        successFamilyService,
    required TResult Function(ErrorInfo error) failureFamilyService,
    required TResult Function(
            String error, CreateFamilyTextFieldFailure failure)
        validator,
  }) {
    return failureFamilyService(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? familyService,
    TResult? Function()? loadingFamilyService,
    TResult? Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult? Function(ErrorInfo error)? failureFamilyService,
    TResult? Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
  }) {
    return failureFamilyService?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? familyService,
    TResult Function()? loadingFamilyService,
    TResult Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult Function(ErrorInfo error)? failureFamilyService,
    TResult Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
    required TResult orElse(),
  }) {
    if (failureFamilyService != null) {
      return failureFamilyService(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_FamilyService value) familyService,
    required TResult Function(_LoadingFamilyService value) loadingFamilyService,
    required TResult Function(_SuccessFamilyService value) successFamilyService,
    required TResult Function(_FailureFamilyService value) failureFamilyService,
    required TResult Function(_Validator value) validator,
  }) {
    return failureFamilyService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_FamilyService value)? familyService,
    TResult? Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult? Function(_SuccessFamilyService value)? successFamilyService,
    TResult? Function(_FailureFamilyService value)? failureFamilyService,
    TResult? Function(_Validator value)? validator,
  }) {
    return failureFamilyService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_FamilyService value)? familyService,
    TResult Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult Function(_SuccessFamilyService value)? successFamilyService,
    TResult Function(_FailureFamilyService value)? failureFamilyService,
    TResult Function(_Validator value)? validator,
    required TResult orElse(),
  }) {
    if (failureFamilyService != null) {
      return failureFamilyService(this);
    }
    return orElse();
  }
}

abstract class _FailureFamilyService implements CreateFamilyAction {
  const factory _FailureFamilyService(final ErrorInfo error) =
      _$FailureFamilyServiceImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureFamilyServiceImplCopyWith<_$FailureFamilyServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidatorImplCopyWith<$Res> {
  factory _$$ValidatorImplCopyWith(
          _$ValidatorImpl value, $Res Function(_$ValidatorImpl) then) =
      __$$ValidatorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error, CreateFamilyTextFieldFailure failure});
}

/// @nodoc
class __$$ValidatorImplCopyWithImpl<$Res>
    extends _$CreateFamilyActionCopyWithImpl<$Res, _$ValidatorImpl>
    implements _$$ValidatorImplCopyWith<$Res> {
  __$$ValidatorImplCopyWithImpl(
      _$ValidatorImpl _value, $Res Function(_$ValidatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? failure = null,
  }) {
    return _then(_$ValidatorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CreateFamilyTextFieldFailure,
    ));
  }
}

/// @nodoc

class _$ValidatorImpl implements _Validator {
  const _$ValidatorImpl(this.error, this.failure);

  @override
  final String error;
  @override
  final CreateFamilyTextFieldFailure failure;

  @override
  String toString() {
    return 'CreateFamilyAction.validator(error: $error, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidatorImplCopyWith<_$ValidatorImpl> get copyWith =>
      __$$ValidatorImplCopyWithImpl<_$ValidatorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() familyService,
    required TResult Function() loadingFamilyService,
    required TResult Function(CreateFamilyResponseDTO family)
        successFamilyService,
    required TResult Function(ErrorInfo error) failureFamilyService,
    required TResult Function(
            String error, CreateFamilyTextFieldFailure failure)
        validator,
  }) {
    return validator(error, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? familyService,
    TResult? Function()? loadingFamilyService,
    TResult? Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult? Function(ErrorInfo error)? failureFamilyService,
    TResult? Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
  }) {
    return validator?.call(error, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? familyService,
    TResult Function()? loadingFamilyService,
    TResult Function(CreateFamilyResponseDTO family)? successFamilyService,
    TResult Function(ErrorInfo error)? failureFamilyService,
    TResult Function(String error, CreateFamilyTextFieldFailure failure)?
        validator,
    required TResult orElse(),
  }) {
    if (validator != null) {
      return validator(error, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_FamilyService value) familyService,
    required TResult Function(_LoadingFamilyService value) loadingFamilyService,
    required TResult Function(_SuccessFamilyService value) successFamilyService,
    required TResult Function(_FailureFamilyService value) failureFamilyService,
    required TResult Function(_Validator value) validator,
  }) {
    return validator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_FamilyService value)? familyService,
    TResult? Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult? Function(_SuccessFamilyService value)? successFamilyService,
    TResult? Function(_FailureFamilyService value)? failureFamilyService,
    TResult? Function(_Validator value)? validator,
  }) {
    return validator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_FamilyService value)? familyService,
    TResult Function(_LoadingFamilyService value)? loadingFamilyService,
    TResult Function(_SuccessFamilyService value)? successFamilyService,
    TResult Function(_FailureFamilyService value)? failureFamilyService,
    TResult Function(_Validator value)? validator,
    required TResult orElse(),
  }) {
    if (validator != null) {
      return validator(this);
    }
    return orElse();
  }
}

abstract class _Validator implements CreateFamilyAction {
  const factory _Validator(
          final String error, final CreateFamilyTextFieldFailure failure) =
      _$ValidatorImpl;

  String get error;
  CreateFamilyTextFieldFailure get failure;
  @JsonKey(ignore: true)
  _$$ValidatorImplCopyWith<_$ValidatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
