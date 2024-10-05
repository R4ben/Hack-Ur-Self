// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get lastUpdate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)
        life,
    required TResult Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)
        anual,
    required TResult Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)
        quarter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)?
        life,
    TResult? Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)?
        anual,
    TResult? Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)?
        quarter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)?
        life,
    TResult Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)?
        anual,
    TResult Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)?
        quarter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LifeProject value) life,
    required TResult Function(AnualProject value) anual,
    required TResult Function(QuarterProject value) quarter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LifeProject value)? life,
    TResult? Function(AnualProject value)? anual,
    TResult? Function(QuarterProject value)? quarter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LifeProject value)? life,
    TResult Function(AnualProject value)? anual,
    TResult Function(QuarterProject value)? quarter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res, ProjectEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime? lastUpdate,
      String? description,
      bool? completed});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res, $Val extends ProjectEntity>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastUpdate = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LifeProjectImplCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$LifeProjectImplCopyWith(
          _$LifeProjectImpl value, $Res Function(_$LifeProjectImpl) then) =
      __$$LifeProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime? lastUpdate,
      String? description,
      bool? completed});
}

/// @nodoc
class __$$LifeProjectImplCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$LifeProjectImpl>
    implements _$$LifeProjectImplCopyWith<$Res> {
  __$$LifeProjectImplCopyWithImpl(
      _$LifeProjectImpl _value, $Res Function(_$LifeProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastUpdate = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$LifeProjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LifeProjectImpl extends LifeProject {
  const _$LifeProjectImpl(
      {required this.id,
      required this.name,
      this.lastUpdate,
      this.description,
      this.completed})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime? lastUpdate;
  @override
  final String? description;
  @override
  final bool? completed;

  @override
  String toString() {
    return 'ProjectEntity.life(id: $id, name: $name, lastUpdate: $lastUpdate, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, lastUpdate, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeProjectImplCopyWith<_$LifeProjectImpl> get copyWith =>
      __$$LifeProjectImplCopyWithImpl<_$LifeProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)
        life,
    required TResult Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)
        anual,
    required TResult Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)
        quarter,
  }) {
    return life(id, name, lastUpdate, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)?
        life,
    TResult? Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)?
        anual,
    TResult? Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)?
        quarter,
  }) {
    return life?.call(id, name, lastUpdate, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)?
        life,
    TResult Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)?
        anual,
    TResult Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)?
        quarter,
    required TResult orElse(),
  }) {
    if (life != null) {
      return life(id, name, lastUpdate, description, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LifeProject value) life,
    required TResult Function(AnualProject value) anual,
    required TResult Function(QuarterProject value) quarter,
  }) {
    return life(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LifeProject value)? life,
    TResult? Function(AnualProject value)? anual,
    TResult? Function(QuarterProject value)? quarter,
  }) {
    return life?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LifeProject value)? life,
    TResult Function(AnualProject value)? anual,
    TResult Function(QuarterProject value)? quarter,
    required TResult orElse(),
  }) {
    if (life != null) {
      return life(this);
    }
    return orElse();
  }
}

abstract class LifeProject extends ProjectEntity {
  const factory LifeProject(
      {required final String id,
      required final String name,
      final DateTime? lastUpdate,
      final String? description,
      final bool? completed}) = _$LifeProjectImpl;
  const LifeProject._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime? get lastUpdate;
  @override
  String? get description;
  @override
  bool? get completed;
  @override
  @JsonKey(ignore: true)
  _$$LifeProjectImplCopyWith<_$LifeProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnualProjectImplCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$AnualProjectImplCopyWith(
          _$AnualProjectImpl value, $Res Function(_$AnualProjectImpl) then) =
      __$$AnualProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      DateTime? lastUpdate,
      bool? completed});
}

/// @nodoc
class __$$AnualProjectImplCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$AnualProjectImpl>
    implements _$$AnualProjectImplCopyWith<$Res> {
  __$$AnualProjectImplCopyWithImpl(
      _$AnualProjectImpl _value, $Res Function(_$AnualProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? lastUpdate = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$AnualProjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AnualProjectImpl extends AnualProject {
  const _$AnualProjectImpl(
      {required this.id,
      required this.name,
      this.description,
      this.lastUpdate,
      this.completed})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime? lastUpdate;
  @override
  final bool? completed;

  @override
  String toString() {
    return 'ProjectEntity.anual(id: $id, name: $name, description: $description, lastUpdate: $lastUpdate, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnualProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, lastUpdate, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnualProjectImplCopyWith<_$AnualProjectImpl> get copyWith =>
      __$$AnualProjectImplCopyWithImpl<_$AnualProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)
        life,
    required TResult Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)
        anual,
    required TResult Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)
        quarter,
  }) {
    return anual(id, name, description, lastUpdate, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)?
        life,
    TResult? Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)?
        anual,
    TResult? Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)?
        quarter,
  }) {
    return anual?.call(id, name, description, lastUpdate, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)?
        life,
    TResult Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)?
        anual,
    TResult Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)?
        quarter,
    required TResult orElse(),
  }) {
    if (anual != null) {
      return anual(id, name, description, lastUpdate, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LifeProject value) life,
    required TResult Function(AnualProject value) anual,
    required TResult Function(QuarterProject value) quarter,
  }) {
    return anual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LifeProject value)? life,
    TResult? Function(AnualProject value)? anual,
    TResult? Function(QuarterProject value)? quarter,
  }) {
    return anual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LifeProject value)? life,
    TResult Function(AnualProject value)? anual,
    TResult Function(QuarterProject value)? quarter,
    required TResult orElse(),
  }) {
    if (anual != null) {
      return anual(this);
    }
    return orElse();
  }
}

abstract class AnualProject extends ProjectEntity {
  const factory AnualProject(
      {required final String id,
      required final String name,
      final String? description,
      final DateTime? lastUpdate,
      final bool? completed}) = _$AnualProjectImpl;
  const AnualProject._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  DateTime? get lastUpdate;
  @override
  bool? get completed;
  @override
  @JsonKey(ignore: true)
  _$$AnualProjectImplCopyWith<_$AnualProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuarterProjectImplCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$QuarterProjectImplCopyWith(_$QuarterProjectImpl value,
          $Res Function(_$QuarterProjectImpl) then) =
      __$$QuarterProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? parentId,
      String name,
      DateTime? lastUpdate,
      String? description,
      bool? completed});
}

/// @nodoc
class __$$QuarterProjectImplCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$QuarterProjectImpl>
    implements _$$QuarterProjectImplCopyWith<$Res> {
  __$$QuarterProjectImplCopyWithImpl(
      _$QuarterProjectImpl _value, $Res Function(_$QuarterProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? lastUpdate = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$QuarterProjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$QuarterProjectImpl extends QuarterProject {
  const _$QuarterProjectImpl(
      {required this.id,
      this.parentId,
      required this.name,
      this.lastUpdate,
      this.description,
      this.completed})
      : super._();

  @override
  final String id;
  @override
  final String? parentId;
  @override
  final String name;
  @override
  final DateTime? lastUpdate;
  @override
  final String? description;
  @override
  final bool? completed;

  @override
  String toString() {
    return 'ProjectEntity.quarter(id: $id, parentId: $parentId, name: $name, lastUpdate: $lastUpdate, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuarterProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, parentId, name, lastUpdate, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuarterProjectImplCopyWith<_$QuarterProjectImpl> get copyWith =>
      __$$QuarterProjectImplCopyWithImpl<_$QuarterProjectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)
        life,
    required TResult Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)
        anual,
    required TResult Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)
        quarter,
  }) {
    return quarter(id, parentId, name, lastUpdate, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)?
        life,
    TResult? Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)?
        anual,
    TResult? Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)?
        quarter,
  }) {
    return quarter?.call(
        id, parentId, name, lastUpdate, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, DateTime? lastUpdate,
            String? description, bool? completed)?
        life,
    TResult Function(String id, String name, String? description,
            DateTime? lastUpdate, bool? completed)?
        anual,
    TResult Function(String id, String? parentId, String name,
            DateTime? lastUpdate, String? description, bool? completed)?
        quarter,
    required TResult orElse(),
  }) {
    if (quarter != null) {
      return quarter(id, parentId, name, lastUpdate, description, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LifeProject value) life,
    required TResult Function(AnualProject value) anual,
    required TResult Function(QuarterProject value) quarter,
  }) {
    return quarter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LifeProject value)? life,
    TResult? Function(AnualProject value)? anual,
    TResult? Function(QuarterProject value)? quarter,
  }) {
    return quarter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LifeProject value)? life,
    TResult Function(AnualProject value)? anual,
    TResult Function(QuarterProject value)? quarter,
    required TResult orElse(),
  }) {
    if (quarter != null) {
      return quarter(this);
    }
    return orElse();
  }
}

abstract class QuarterProject extends ProjectEntity {
  const factory QuarterProject(
      {required final String id,
      final String? parentId,
      required final String name,
      final DateTime? lastUpdate,
      final String? description,
      final bool? completed}) = _$QuarterProjectImpl;
  const QuarterProject._() : super._();

  @override
  String get id;
  String? get parentId;
  @override
  String get name;
  @override
  DateTime? get lastUpdate;
  @override
  String? get description;
  @override
  bool? get completed;
  @override
  @JsonKey(ignore: true)
  _$$QuarterProjectImplCopyWith<_$QuarterProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
