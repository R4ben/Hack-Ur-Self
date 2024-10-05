// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_details_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectDetailsNotifierHash() =>
    r'5421729f3361e613c55925528628c9390034f8ba';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProjectDetailsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<ProjectDetailsState> {
  late final String? id;
  late final ProjectType type;

  FutureOr<ProjectDetailsState> build({
    required String? id,
    required ProjectType type,
  });
}

/// See also [ProjectDetailsNotifier].
@ProviderFor(ProjectDetailsNotifier)
const projectDetailsNotifierProvider = ProjectDetailsNotifierFamily();

/// See also [ProjectDetailsNotifier].
class ProjectDetailsNotifierFamily
    extends Family<AsyncValue<ProjectDetailsState>> {
  /// See also [ProjectDetailsNotifier].
  const ProjectDetailsNotifierFamily();

  /// See also [ProjectDetailsNotifier].
  ProjectDetailsNotifierProvider call({
    required String? id,
    required ProjectType type,
  }) {
    return ProjectDetailsNotifierProvider(
      id: id,
      type: type,
    );
  }

  @override
  ProjectDetailsNotifierProvider getProviderOverride(
    covariant ProjectDetailsNotifierProvider provider,
  ) {
    return call(
      id: provider.id,
      type: provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'projectDetailsNotifierProvider';
}

/// See also [ProjectDetailsNotifier].
class ProjectDetailsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProjectDetailsNotifier,
        ProjectDetailsState> {
  /// See also [ProjectDetailsNotifier].
  ProjectDetailsNotifierProvider({
    required String? id,
    required ProjectType type,
  }) : this._internal(
          () => ProjectDetailsNotifier()
            ..id = id
            ..type = type,
          from: projectDetailsNotifierProvider,
          name: r'projectDetailsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectDetailsNotifierHash,
          dependencies: ProjectDetailsNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProjectDetailsNotifierFamily._allTransitiveDependencies,
          id: id,
          type: type,
        );

  ProjectDetailsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.type,
  }) : super.internal();

  final String? id;
  final ProjectType type;

  @override
  FutureOr<ProjectDetailsState> runNotifierBuild(
    covariant ProjectDetailsNotifier notifier,
  ) {
    return notifier.build(
      id: id,
      type: type,
    );
  }

  @override
  Override overrideWith(ProjectDetailsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProjectDetailsNotifierProvider._internal(
        () => create()
          ..id = id
          ..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProjectDetailsNotifier,
      ProjectDetailsState> createElement() {
    return _ProjectDetailsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectDetailsNotifierProvider &&
        other.id == id &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProjectDetailsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<ProjectDetailsState> {
  /// The parameter `id` of this provider.
  String? get id;

  /// The parameter `type` of this provider.
  ProjectType get type;
}

class _ProjectDetailsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProjectDetailsNotifier,
        ProjectDetailsState> with ProjectDetailsNotifierRef {
  _ProjectDetailsNotifierProviderElement(super.provider);

  @override
  String? get id => (origin as ProjectDetailsNotifierProvider).id;
  @override
  ProjectType get type => (origin as ProjectDetailsNotifierProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
