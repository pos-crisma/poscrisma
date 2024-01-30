// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(DocumentSnapshot<Schedule> schedule) update,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String team) addedTapped,
    required TResult Function(String team) minusTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String team)? addedTapped,
    TResult? Function(String team)? minusTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String team)? addedTapped,
    TResult Function(String team)? minusTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_Service value) service,
    required TResult Function(_Added value) update,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddedTapped value) addedTapped,
    required TResult Function(_MinusTapped value) minusTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Added value)? update,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddedTapped value)? addedTapped,
    TResult? Function(_MinusTapped value)? minusTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Added value)? update,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddedTapped value)? addedTapped,
    TResult Function(_MinusTapped value)? minusTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchActionCopyWith<$Res> {
  factory $MatchActionCopyWith(
          MatchAction value, $Res Function(MatchAction) then) =
      _$MatchActionCopyWithImpl<$Res, MatchAction>;
}

/// @nodoc
class _$MatchActionCopyWithImpl<$Res, $Val extends MatchAction>
    implements $MatchActionCopyWith<$Res> {
  _$MatchActionCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$OnAppearImplCopyWithImpl<$Res>
    extends _$MatchActionCopyWithImpl<$Res, _$OnAppearImpl>
    implements _$$OnAppearImplCopyWith<$Res> {
  __$$OnAppearImplCopyWithImpl(
      _$OnAppearImpl _value, $Res Function(_$OnAppearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnAppearImpl implements _OnAppear {
  const _$OnAppearImpl();

  @override
  String toString() {
    return 'MatchAction.onAppear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnAppearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(DocumentSnapshot<Schedule> schedule) update,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String team) addedTapped,
    required TResult Function(String team) minusTapped,
  }) {
    return onAppear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String team)? addedTapped,
    TResult? Function(String team)? minusTapped,
  }) {
    return onAppear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String team)? addedTapped,
    TResult Function(String team)? minusTapped,
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
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_Service value) service,
    required TResult Function(_Added value) update,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddedTapped value) addedTapped,
    required TResult Function(_MinusTapped value) minusTapped,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Added value)? update,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddedTapped value)? addedTapped,
    TResult? Function(_MinusTapped value)? minusTapped,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Added value)? update,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddedTapped value)? addedTapped,
    TResult Function(_MinusTapped value)? minusTapped,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class _OnAppear implements MatchAction {
  const factory _OnAppear() = _$OnAppearImpl;
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$MatchActionCopyWithImpl<$Res, _$ServiceImpl>
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
    return 'MatchAction.service()';
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
    required TResult Function(DocumentSnapshot<Schedule> schedule) update,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String team) addedTapped,
    required TResult Function(String team) minusTapped,
  }) {
    return service();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String team)? addedTapped,
    TResult? Function(String team)? minusTapped,
  }) {
    return service?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String team)? addedTapped,
    TResult Function(String team)? minusTapped,
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
    required TResult Function(_Service value) service,
    required TResult Function(_Added value) update,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddedTapped value) addedTapped,
    required TResult Function(_MinusTapped value) minusTapped,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Added value)? update,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddedTapped value)? addedTapped,
    TResult? Function(_MinusTapped value)? minusTapped,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Added value)? update,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddedTapped value)? addedTapped,
    TResult Function(_MinusTapped value)? minusTapped,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class _Service implements MatchAction {
  const factory _Service() = _$ServiceImpl;
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentSnapshot<Schedule> schedule});
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$MatchActionCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
  }) {
    return _then(_$AddedImpl(
      null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as DocumentSnapshot<Schedule>,
    ));
  }
}

/// @nodoc

class _$AddedImpl implements _Added {
  const _$AddedImpl(this.schedule);

  @override
  final DocumentSnapshot<Schedule> schedule;

  @override
  String toString() {
    return 'MatchAction.update(schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImpl &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(DocumentSnapshot<Schedule> schedule) update,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String team) addedTapped,
    required TResult Function(String team) minusTapped,
  }) {
    return update(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String team)? addedTapped,
    TResult? Function(String team)? minusTapped,
  }) {
    return update?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String team)? addedTapped,
    TResult Function(String team)? minusTapped,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_Service value) service,
    required TResult Function(_Added value) update,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddedTapped value) addedTapped,
    required TResult Function(_MinusTapped value) minusTapped,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Added value)? update,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddedTapped value)? addedTapped,
    TResult? Function(_MinusTapped value)? minusTapped,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Added value)? update,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddedTapped value)? addedTapped,
    TResult Function(_MinusTapped value)? minusTapped,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Added implements MatchAction {
  const factory _Added(final DocumentSnapshot<Schedule> schedule) = _$AddedImpl;

  DocumentSnapshot<Schedule> get schedule;
  @JsonKey(ignore: true)
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
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
    extends _$MatchActionCopyWithImpl<$Res, _$FailureImpl>
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
    return 'MatchAction.failure(error: $error)';
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
    required TResult Function(DocumentSnapshot<Schedule> schedule) update,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String team) addedTapped,
    required TResult Function(String team) minusTapped,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String team)? addedTapped,
    TResult? Function(String team)? minusTapped,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String team)? addedTapped,
    TResult Function(String team)? minusTapped,
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
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_Service value) service,
    required TResult Function(_Added value) update,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddedTapped value) addedTapped,
    required TResult Function(_MinusTapped value) minusTapped,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Added value)? update,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddedTapped value)? addedTapped,
    TResult? Function(_MinusTapped value)? minusTapped,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Added value)? update,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddedTapped value)? addedTapped,
    TResult Function(_MinusTapped value)? minusTapped,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements MatchAction {
  const factory _Failure(final ErrorInfo error) = _$FailureImpl;

  ErrorInfo get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedTappedImplCopyWith<$Res> {
  factory _$$AddedTappedImplCopyWith(
          _$AddedTappedImpl value, $Res Function(_$AddedTappedImpl) then) =
      __$$AddedTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String team});
}

/// @nodoc
class __$$AddedTappedImplCopyWithImpl<$Res>
    extends _$MatchActionCopyWithImpl<$Res, _$AddedTappedImpl>
    implements _$$AddedTappedImplCopyWith<$Res> {
  __$$AddedTappedImplCopyWithImpl(
      _$AddedTappedImpl _value, $Res Function(_$AddedTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
  }) {
    return _then(_$AddedTappedImpl(
      null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddedTappedImpl implements _AddedTapped {
  const _$AddedTappedImpl(this.team);

  @override
  final String team;

  @override
  String toString() {
    return 'MatchAction.addedTapped(team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedTappedImpl &&
            (identical(other.team, team) || other.team == team));
  }

  @override
  int get hashCode => Object.hash(runtimeType, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedTappedImplCopyWith<_$AddedTappedImpl> get copyWith =>
      __$$AddedTappedImplCopyWithImpl<_$AddedTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(DocumentSnapshot<Schedule> schedule) update,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String team) addedTapped,
    required TResult Function(String team) minusTapped,
  }) {
    return addedTapped(team);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String team)? addedTapped,
    TResult? Function(String team)? minusTapped,
  }) {
    return addedTapped?.call(team);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String team)? addedTapped,
    TResult Function(String team)? minusTapped,
    required TResult orElse(),
  }) {
    if (addedTapped != null) {
      return addedTapped(team);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_Service value) service,
    required TResult Function(_Added value) update,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddedTapped value) addedTapped,
    required TResult Function(_MinusTapped value) minusTapped,
  }) {
    return addedTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Added value)? update,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddedTapped value)? addedTapped,
    TResult? Function(_MinusTapped value)? minusTapped,
  }) {
    return addedTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Added value)? update,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddedTapped value)? addedTapped,
    TResult Function(_MinusTapped value)? minusTapped,
    required TResult orElse(),
  }) {
    if (addedTapped != null) {
      return addedTapped(this);
    }
    return orElse();
  }
}

abstract class _AddedTapped implements MatchAction {
  const factory _AddedTapped(final String team) = _$AddedTappedImpl;

  String get team;
  @JsonKey(ignore: true)
  _$$AddedTappedImplCopyWith<_$AddedTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinusTappedImplCopyWith<$Res> {
  factory _$$MinusTappedImplCopyWith(
          _$MinusTappedImpl value, $Res Function(_$MinusTappedImpl) then) =
      __$$MinusTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String team});
}

/// @nodoc
class __$$MinusTappedImplCopyWithImpl<$Res>
    extends _$MatchActionCopyWithImpl<$Res, _$MinusTappedImpl>
    implements _$$MinusTappedImplCopyWith<$Res> {
  __$$MinusTappedImplCopyWithImpl(
      _$MinusTappedImpl _value, $Res Function(_$MinusTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
  }) {
    return _then(_$MinusTappedImpl(
      null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MinusTappedImpl implements _MinusTapped {
  const _$MinusTappedImpl(this.team);

  @override
  final String team;

  @override
  String toString() {
    return 'MatchAction.minusTapped(team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinusTappedImpl &&
            (identical(other.team, team) || other.team == team));
  }

  @override
  int get hashCode => Object.hash(runtimeType, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinusTappedImplCopyWith<_$MinusTappedImpl> get copyWith =>
      __$$MinusTappedImplCopyWithImpl<_$MinusTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() service,
    required TResult Function(DocumentSnapshot<Schedule> schedule) update,
    required TResult Function(ErrorInfo error) failure,
    required TResult Function(String team) addedTapped,
    required TResult Function(String team) minusTapped,
  }) {
    return minusTapped(team);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? service,
    TResult? Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult? Function(ErrorInfo error)? failure,
    TResult? Function(String team)? addedTapped,
    TResult? Function(String team)? minusTapped,
  }) {
    return minusTapped?.call(team);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? service,
    TResult Function(DocumentSnapshot<Schedule> schedule)? update,
    TResult Function(ErrorInfo error)? failure,
    TResult Function(String team)? addedTapped,
    TResult Function(String team)? minusTapped,
    required TResult orElse(),
  }) {
    if (minusTapped != null) {
      return minusTapped(team);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAppear value) onAppear,
    required TResult Function(_Service value) service,
    required TResult Function(_Added value) update,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddedTapped value) addedTapped,
    required TResult Function(_MinusTapped value) minusTapped,
  }) {
    return minusTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAppear value)? onAppear,
    TResult? Function(_Service value)? service,
    TResult? Function(_Added value)? update,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddedTapped value)? addedTapped,
    TResult? Function(_MinusTapped value)? minusTapped,
  }) {
    return minusTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAppear value)? onAppear,
    TResult Function(_Service value)? service,
    TResult Function(_Added value)? update,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddedTapped value)? addedTapped,
    TResult Function(_MinusTapped value)? minusTapped,
    required TResult orElse(),
  }) {
    if (minusTapped != null) {
      return minusTapped(this);
    }
    return orElse();
  }
}

abstract class _MinusTapped implements MatchAction {
  const factory _MinusTapped(final String team) = _$MinusTappedImpl;

  String get team;
  @JsonKey(ignore: true)
  _$$MinusTappedImplCopyWith<_$MinusTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
