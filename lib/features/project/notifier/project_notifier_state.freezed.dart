// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_notifier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectDetailsState {
  ProjectEntity get project => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  AsyncValue<void>? get save => throw _privateConstructorUsedError;
  AsyncValue<void>? get updateProject => throw _privateConstructorUsedError;
  AsyncValue<void>? get delete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectDetailsStateCopyWith<ProjectDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailsStateCopyWith<$Res> {
  factory $ProjectDetailsStateCopyWith(
          ProjectDetailsState value, $Res Function(ProjectDetailsState) then) =
      _$ProjectDetailsStateCopyWithImpl<$Res, ProjectDetailsState>;
  @useResult
  $Res call(
      {ProjectEntity project,
      bool isEditing,
      bool showErrorMessage,
      AsyncValue<void>? save,
      AsyncValue<void>? updateProject,
      AsyncValue<void>? delete});

  $ProjectEntityCopyWith<$Res> get project;
}

/// @nodoc
class _$ProjectDetailsStateCopyWithImpl<$Res, $Val extends ProjectDetailsState>
    implements $ProjectDetailsStateCopyWith<$Res> {
  _$ProjectDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? isEditing = null,
    Object? showErrorMessage = null,
    Object? save = freezed,
    Object? updateProject = freezed,
    Object? delete = freezed,
  }) {
    return _then(_value.copyWith(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntity,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      save: freezed == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>?,
      updateProject: freezed == updateProject
          ? _value.updateProject
          : updateProject // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityCopyWith<$Res> get project {
    return $ProjectEntityCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectDeatilsStateImplCopyWith<$Res>
    implements $ProjectDetailsStateCopyWith<$Res> {
  factory _$$ProjectDeatilsStateImplCopyWith(_$ProjectDeatilsStateImpl value,
          $Res Function(_$ProjectDeatilsStateImpl) then) =
      __$$ProjectDeatilsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProjectEntity project,
      bool isEditing,
      bool showErrorMessage,
      AsyncValue<void>? save,
      AsyncValue<void>? updateProject,
      AsyncValue<void>? delete});

  @override
  $ProjectEntityCopyWith<$Res> get project;
}

/// @nodoc
class __$$ProjectDeatilsStateImplCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$ProjectDeatilsStateImpl>
    implements _$$ProjectDeatilsStateImplCopyWith<$Res> {
  __$$ProjectDeatilsStateImplCopyWithImpl(_$ProjectDeatilsStateImpl _value,
      $Res Function(_$ProjectDeatilsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? isEditing = null,
    Object? showErrorMessage = null,
    Object? save = freezed,
    Object? updateProject = freezed,
    Object? delete = freezed,
  }) {
    return _then(_$ProjectDeatilsStateImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntity,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      save: freezed == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>?,
      updateProject: freezed == updateProject
          ? _value.updateProject
          : updateProject // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>?,
    ));
  }
}

/// @nodoc

class _$ProjectDeatilsStateImpl extends _ProjectDeatilsState {
  const _$ProjectDeatilsStateImpl(
      {required this.project,
      this.isEditing = false,
      this.showErrorMessage = false,
      this.save,
      this.updateProject,
      this.delete})
      : super._();

  @override
  final ProjectEntity project;
  @override
  @JsonKey()
  final bool isEditing;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  final AsyncValue<void>? save;
  @override
  final AsyncValue<void>? updateProject;
  @override
  final AsyncValue<void>? delete;

  @override
  String toString() {
    return 'ProjectDetailsState(project: $project, isEditing: $isEditing, showErrorMessage: $showErrorMessage, save: $save, updateProject: $updateProject, delete: $delete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDeatilsStateImpl &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.save, save) || other.save == save) &&
            (identical(other.updateProject, updateProject) ||
                other.updateProject == updateProject) &&
            (identical(other.delete, delete) || other.delete == delete));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project, isEditing,
      showErrorMessage, save, updateProject, delete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDeatilsStateImplCopyWith<_$ProjectDeatilsStateImpl> get copyWith =>
      __$$ProjectDeatilsStateImplCopyWithImpl<_$ProjectDeatilsStateImpl>(
          this, _$identity);
}

abstract class _ProjectDeatilsState extends ProjectDetailsState {
  const factory _ProjectDeatilsState(
      {required final ProjectEntity project,
      final bool isEditing,
      final bool showErrorMessage,
      final AsyncValue<void>? save,
      final AsyncValue<void>? updateProject,
      final AsyncValue<void>? delete}) = _$ProjectDeatilsStateImpl;
  const _ProjectDeatilsState._() : super._();

  @override
  ProjectEntity get project;
  @override
  bool get isEditing;
  @override
  bool get showErrorMessage;
  @override
  AsyncValue<void>? get save;
  @override
  AsyncValue<void>? get updateProject;
  @override
  AsyncValue<void>? get delete;
  @override
  @JsonKey(ignore: true)
  _$$ProjectDeatilsStateImplCopyWith<_$ProjectDeatilsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
