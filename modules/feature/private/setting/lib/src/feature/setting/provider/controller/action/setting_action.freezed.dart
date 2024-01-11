// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() logoutButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? logoutButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? logoutButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_LogoutButtonTapped value) logoutButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_LogoutButtonTapped value)? logoutButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_LogoutButtonTapped value)? logoutButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingActionCopyWith<$Res> {
  factory $SettingActionCopyWith(
          SettingAction value, $Res Function(SettingAction) then) =
      _$SettingActionCopyWithImpl<$Res, SettingAction>;
}

/// @nodoc
class _$SettingActionCopyWithImpl<$Res, $Val extends SettingAction>
    implements $SettingActionCopyWith<$Res> {
  _$SettingActionCopyWithImpl(this._value, this._then);

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
    extends _$SettingActionCopyWithImpl<$Res, _$OnAppearTappedImpl>
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
    return 'SettingAction.onAppear(context: $context)';
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
    required TResult Function() logoutButtonTapped,
  }) {
    return onAppear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? logoutButtonTapped,
  }) {
    return onAppear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? logoutButtonTapped,
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
    required TResult Function(_LogoutButtonTapped value) logoutButtonTapped,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_LogoutButtonTapped value)? logoutButtonTapped,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_LogoutButtonTapped value)? logoutButtonTapped,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppearTapped implements SettingAction {
  const factory _OnAppearTapped(final BuildContext context) =
      _$OnAppearTappedImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$OnAppearTappedImplCopyWith<_$OnAppearTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutButtonTappedImplCopyWith<$Res> {
  factory _$$LogoutButtonTappedImplCopyWith(_$LogoutButtonTappedImpl value,
          $Res Function(_$LogoutButtonTappedImpl) then) =
      __$$LogoutButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutButtonTappedImplCopyWithImpl<$Res>
    extends _$SettingActionCopyWithImpl<$Res, _$LogoutButtonTappedImpl>
    implements _$$LogoutButtonTappedImplCopyWith<$Res> {
  __$$LogoutButtonTappedImplCopyWithImpl(_$LogoutButtonTappedImpl _value,
      $Res Function(_$LogoutButtonTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutButtonTappedImpl implements _LogoutButtonTapped {
  const _$LogoutButtonTappedImpl();

  @override
  String toString() {
    return 'SettingAction.logoutButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) onAppear,
    required TResult Function() logoutButtonTapped,
  }) {
    return logoutButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? onAppear,
    TResult? Function()? logoutButtonTapped,
  }) {
    return logoutButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? onAppear,
    TResult Function()? logoutButtonTapped,
    required TResult orElse(),
  }) {
    if (logoutButtonTapped != null) {
      return logoutButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppearTapped value) onAppear,
    required TResult Function(_LogoutButtonTapped value) logoutButtonTapped,
  }) {
    return logoutButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppearTapped value)? onAppear,
    TResult? Function(_LogoutButtonTapped value)? logoutButtonTapped,
  }) {
    return logoutButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppearTapped value)? onAppear,
    TResult Function(_LogoutButtonTapped value)? logoutButtonTapped,
    required TResult orElse(),
  }) {
    if (logoutButtonTapped != null) {
      return logoutButtonTapped(this);
    }
    return orElse();
  }
}

abstract class _LogoutButtonTapped implements SettingAction {
  const factory _LogoutButtonTapped() = _$LogoutButtonTappedImpl;
}
