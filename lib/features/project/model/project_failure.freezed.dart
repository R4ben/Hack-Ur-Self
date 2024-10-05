// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUnexpectedFailures value) unexpected,
    required TResult Function(ProjectNotFoundFailures value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUnexpectedFailures value)? unexpected,
    TResult? Function(ProjectNotFoundFailures value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUnexpectedFailures value)? unexpected,
    TResult Function(ProjectNotFoundFailures value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFailuresCopyWith<$Res> {
  factory $ProjectFailuresCopyWith(
          ProjectFailures value, $Res Function(ProjectFailures) then) =
      _$ProjectFailuresCopyWithImpl<$Res, ProjectFailures>;
}

/// @nodoc
class _$ProjectFailuresCopyWithImpl<$Res, $Val extends ProjectFailures>
    implements $ProjectFailuresCopyWith<$Res> {
  _$ProjectFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectUnexpectedFailuresImplCopyWith<$Res> {
  factory _$$ProjectUnexpectedFailuresImplCopyWith(
          _$ProjectUnexpectedFailuresImpl value,
          $Res Function(_$ProjectUnexpectedFailuresImpl) then) =
      __$$ProjectUnexpectedFailuresImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ProjectUnexpectedFailuresImplCopyWithImpl<$Res>
    extends _$ProjectFailuresCopyWithImpl<$Res, _$ProjectUnexpectedFailuresImpl>
    implements _$$ProjectUnexpectedFailuresImplCopyWith<$Res> {
  __$$ProjectUnexpectedFailuresImplCopyWithImpl(
      _$ProjectUnexpectedFailuresImpl _value,
      $Res Function(_$ProjectUnexpectedFailuresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ProjectUnexpectedFailuresImpl(
      freezed == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ProjectUnexpectedFailuresImpl extends ProjectUnexpectedFailures
    with UnexpectedFailure {
  const _$ProjectUnexpectedFailuresImpl([this.error, this.stackTrace])
      : super._();

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ProjectFailures.unexpected(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectUnexpectedFailuresImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectUnexpectedFailuresImplCopyWith<_$ProjectUnexpectedFailuresImpl>
      get copyWith => __$$ProjectUnexpectedFailuresImplCopyWithImpl<
          _$ProjectUnexpectedFailuresImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
  }) {
    return unexpected(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
  }) {
    return unexpected?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUnexpectedFailures value) unexpected,
    required TResult Function(ProjectNotFoundFailures value) notFound,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUnexpectedFailures value)? unexpected,
    TResult? Function(ProjectNotFoundFailures value)? notFound,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUnexpectedFailures value)? unexpected,
    TResult Function(ProjectNotFoundFailures value)? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class ProjectUnexpectedFailures extends ProjectFailures
    implements UnexpectedFailure {
  const factory ProjectUnexpectedFailures(
      [final Object? error,
      final StackTrace? stackTrace]) = _$ProjectUnexpectedFailuresImpl;
  const ProjectUnexpectedFailures._() : super._();

  Object? get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$ProjectUnexpectedFailuresImplCopyWith<_$ProjectUnexpectedFailuresImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectNotFoundFailuresImplCopyWith<$Res> {
  factory _$$ProjectNotFoundFailuresImplCopyWith(
          _$ProjectNotFoundFailuresImpl value,
          $Res Function(_$ProjectNotFoundFailuresImpl) then) =
      __$$ProjectNotFoundFailuresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectNotFoundFailuresImplCopyWithImpl<$Res>
    extends _$ProjectFailuresCopyWithImpl<$Res, _$ProjectNotFoundFailuresImpl>
    implements _$$ProjectNotFoundFailuresImplCopyWith<$Res> {
  __$$ProjectNotFoundFailuresImplCopyWithImpl(
      _$ProjectNotFoundFailuresImpl _value,
      $Res Function(_$ProjectNotFoundFailuresImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectNotFoundFailuresImpl extends ProjectNotFoundFailures {
  const _$ProjectNotFoundFailuresImpl() : super._();

  @override
  String toString() {
    return 'ProjectFailures.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectNotFoundFailuresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUnexpectedFailures value) unexpected,
    required TResult Function(ProjectNotFoundFailures value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUnexpectedFailures value)? unexpected,
    TResult? Function(ProjectNotFoundFailures value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUnexpectedFailures value)? unexpected,
    TResult Function(ProjectNotFoundFailures value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class ProjectNotFoundFailures extends ProjectFailures {
  const factory ProjectNotFoundFailures() = _$ProjectNotFoundFailuresImpl;
  const ProjectNotFoundFailures._() : super._();
}
