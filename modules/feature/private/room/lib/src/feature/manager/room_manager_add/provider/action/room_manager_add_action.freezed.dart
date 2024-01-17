// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_manager_add_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomManagarAddAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomManagarAddActionCopyWith<$Res> {
  factory $RoomManagarAddActionCopyWith(RoomManagarAddAction value,
          $Res Function(RoomManagarAddAction) then) =
      _$RoomManagarAddActionCopyWithImpl<$Res, RoomManagarAddAction>;
}

/// @nodoc
class _$RoomManagarAddActionCopyWithImpl<$Res,
        $Val extends RoomManagarAddAction>
    implements $RoomManagarAddActionCopyWith<$Res> {
  _$RoomManagarAddActionCopyWithImpl(this._value, this._then);

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
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$OnAppearTappedImpl>
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
    return 'RoomManagarAddAction.onAppear(context: $context)';
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
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements RoomManagarAddAction {
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
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$ButtonTappedImpl>
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
    return 'RoomManagarAddAction.buttonTapped()';
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
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return buttonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return buttonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return buttonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return buttonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (buttonTapped != null) {
      return buttonTapped(this);
    }
    return orElse();
  }
}

abstract class _ButtonTapped implements RoomManagarAddAction {
  const factory _ButtonTapped() = _$ButtonTappedImpl;
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$ServiceImpl>
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
    return 'RoomManagarAddAction.service()';
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
    required TResult Function() buttonTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return service();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return service?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class _Service implements RoomManagarAddAction {
  const factory _Service() = _$ServiceImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RoomManagarAddAction.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RoomManagarAddAction {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomSettingResponseDTO dto});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$SuccessImpl>
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
              as RoomSettingResponseDTO,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.dto);

  @override
  final RoomSettingResponseDTO dto;

  @override
  String toString() {
    return 'RoomManagarAddAction.success(dto: $dto)';
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
    required TResult Function() buttonTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return success(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return success?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RoomManagarAddAction {
  const factory _Success(final RoomSettingResponseDTO dto) = _$SuccessImpl;

  RoomSettingResponseDTO get dto;
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
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$FailureImpl>
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
    return 'RoomManagarAddAction.failure(error: $error)';
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
    required TResult Function() buttonTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RoomManagarAddAction {
  const factory _Failure(final ErrorInfo error) = _$FailureImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCheckBoxImplCopyWith<$Res> {
  factory _$$ChangeCheckBoxImplCopyWith(_$ChangeCheckBoxImpl value,
          $Res Function(_$ChangeCheckBoxImpl) then) =
      __$$ChangeCheckBoxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomManagarAddType contentOnPage});
}

/// @nodoc
class __$$ChangeCheckBoxImplCopyWithImpl<$Res>
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$ChangeCheckBoxImpl>
    implements _$$ChangeCheckBoxImplCopyWith<$Res> {
  __$$ChangeCheckBoxImplCopyWithImpl(
      _$ChangeCheckBoxImpl _value, $Res Function(_$ChangeCheckBoxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentOnPage = null,
  }) {
    return _then(_$ChangeCheckBoxImpl(
      null == contentOnPage
          ? _value.contentOnPage
          : contentOnPage // ignore: cast_nullable_to_non_nullable
              as RoomManagarAddType,
    ));
  }
}

/// @nodoc

class _$ChangeCheckBoxImpl implements _ChangeCheckBox {
  const _$ChangeCheckBoxImpl(this.contentOnPage);

  @override
  final RoomManagarAddType contentOnPage;

  @override
  String toString() {
    return 'RoomManagarAddAction.changeCheckBox(contentOnPage: $contentOnPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCheckBoxImpl &&
            (identical(other.contentOnPage, contentOnPage) ||
                other.contentOnPage == contentOnPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentOnPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCheckBoxImplCopyWith<_$ChangeCheckBoxImpl> get copyWith =>
      __$$ChangeCheckBoxImplCopyWithImpl<_$ChangeCheckBoxImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return changeCheckBox(contentOnPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return changeCheckBox?.call(contentOnPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
    required TResult orElse(),
  }) {
    if (changeCheckBox != null) {
      return changeCheckBox(contentOnPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return changeCheckBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return changeCheckBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (changeCheckBox != null) {
      return changeCheckBox(this);
    }
    return orElse();
  }
}

abstract class _ChangeCheckBox implements RoomManagarAddAction {
  const factory _ChangeCheckBox(final RoomManagarAddType contentOnPage) =
      _$ChangeCheckBoxImpl;

  RoomManagarAddType get contentOnPage;
  @JsonKey(ignore: true)
  _$$ChangeCheckBoxImplCopyWith<_$ChangeCheckBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImageImplCopyWith<$Res> {
  factory _$$AddImageImplCopyWith(
          _$AddImageImpl value, $Res Function(_$AddImageImpl) then) =
      __$$AddImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String images});
}

/// @nodoc
class __$$AddImageImplCopyWithImpl<$Res>
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$AddImageImpl>
    implements _$$AddImageImplCopyWith<$Res> {
  __$$AddImageImplCopyWithImpl(
      _$AddImageImpl _value, $Res Function(_$AddImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$AddImageImpl(
      null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddImageImpl implements _AddImage {
  const _$AddImageImpl(this.images);

  @override
  final String images;

  @override
  String toString() {
    return 'RoomManagarAddAction.addImage(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImageImpl &&
            (identical(other.images, images) || other.images == images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImageImplCopyWith<_$AddImageImpl> get copyWith =>
      __$$AddImageImplCopyWithImpl<_$AddImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return addImage(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return addImage?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return addImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return addImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(this);
    }
    return orElse();
  }
}

abstract class _AddImage implements RoomManagarAddAction {
  const factory _AddImage(final String images) = _$AddImageImpl;

  String get images;
  @JsonKey(ignore: true)
  _$$AddImageImplCopyWith<_$AddImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImageImplCopyWith<$Res> {
  factory _$$RemoveImageImplCopyWith(
          _$RemoveImageImpl value, $Res Function(_$RemoveImageImpl) then) =
      __$$RemoveImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String images});
}

/// @nodoc
class __$$RemoveImageImplCopyWithImpl<$Res>
    extends _$RoomManagarAddActionCopyWithImpl<$Res, _$RemoveImageImpl>
    implements _$$RemoveImageImplCopyWith<$Res> {
  __$$RemoveImageImplCopyWithImpl(
      _$RemoveImageImpl _value, $Res Function(_$RemoveImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$RemoveImageImpl(
      null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveImageImpl implements _RemoveImage {
  const _$RemoveImageImpl(this.images);

  @override
  final String images;

  @override
  String toString() {
    return 'RoomManagarAddAction.removeImage(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImageImpl &&
            (identical(other.images, images) || other.images == images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImageImplCopyWith<_$RemoveImageImpl> get copyWith =>
      __$$RemoveImageImplCopyWithImpl<_$RemoveImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() buttonTapped,
    required TResult Function() service,
    required TResult Function() loading,
    required TResult Function(RoomSettingResponseDTO dto) success,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(RoomManagarAddType contentOnPage) changeCheckBox,
    required TResult Function(String images) addImage,
    required TResult Function(String images) removeImage,
  }) {
    return removeImage(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? buttonTapped,
    TResult? Function()? service,
    TResult? Function()? loading,
    TResult? Function(RoomSettingResponseDTO dto)? success,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult? Function(String images)? addImage,
    TResult? Function(String images)? removeImage,
  }) {
    return removeImage?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? buttonTapped,
    TResult Function()? service,
    TResult Function()? loading,
    TResult Function(RoomSettingResponseDTO dto)? success,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(RoomManagarAddType contentOnPage)? changeCheckBox,
    TResult Function(String images)? addImage,
    TResult Function(String images)? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_ButtonTapped value) buttonTapped,
    required TResult Function(_Service value) service,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangeCheckBox value) changeCheckBox,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_ButtonTapped value)? buttonTapped,
    TResult? Function(_Service value)? service,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ChangeCheckBox value)? changeCheckBox,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_ButtonTapped value)? buttonTapped,
    TResult Function(_Service value)? service,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangeCheckBox value)? changeCheckBox,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class _RemoveImage implements RoomManagarAddAction {
  const factory _RemoveImage(final String images) = _$RemoveImageImpl;

  String get images;
  @JsonKey(ignore: true)
  _$$RemoveImageImplCopyWith<_$RemoveImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
