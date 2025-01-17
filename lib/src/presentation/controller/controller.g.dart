// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$examListControllerHash() =>
    r'36cd7bef293f701ff3f396291f0c23124d517385';

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

abstract class _$ExamListController
    extends BuildlessAutoDisposeAsyncNotifier<ExamListState> {
  late final int page;
  late final String? searchQuery;
  late final String? lessonId;

  FutureOr<ExamListState> build({
    required int page,
    String? searchQuery,
    String? lessonId,
  });
}

/// See also [ExamListController].
@ProviderFor(ExamListController)
const examListControllerProvider = ExamListControllerFamily();

/// See also [ExamListController].
class ExamListControllerFamily extends Family<AsyncValue<ExamListState>> {
  /// See also [ExamListController].
  const ExamListControllerFamily();

  /// See also [ExamListController].
  ExamListControllerProvider call({
    required int page,
    String? searchQuery,
    String? lessonId,
  }) {
    return ExamListControllerProvider(
      page: page,
      searchQuery: searchQuery,
      lessonId: lessonId,
    );
  }

  @override
  ExamListControllerProvider getProviderOverride(
    covariant ExamListControllerProvider provider,
  ) {
    return call(
      page: provider.page,
      searchQuery: provider.searchQuery,
      lessonId: provider.lessonId,
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
  String? get name => r'examListControllerProvider';
}

/// See also [ExamListController].
class ExamListControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ExamListController, ExamListState> {
  /// See also [ExamListController].
  ExamListControllerProvider({
    required int page,
    String? searchQuery,
    String? lessonId,
  }) : this._internal(
          () => ExamListController()
            ..page = page
            ..searchQuery = searchQuery
            ..lessonId = lessonId,
          from: examListControllerProvider,
          name: r'examListControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$examListControllerHash,
          dependencies: ExamListControllerFamily._dependencies,
          allTransitiveDependencies:
              ExamListControllerFamily._allTransitiveDependencies,
          page: page,
          searchQuery: searchQuery,
          lessonId: lessonId,
        );

  ExamListControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.searchQuery,
    required this.lessonId,
  }) : super.internal();

  final int page;
  final String? searchQuery;
  final String? lessonId;

  @override
  FutureOr<ExamListState> runNotifierBuild(
    covariant ExamListController notifier,
  ) {
    return notifier.build(
      page: page,
      searchQuery: searchQuery,
      lessonId: lessonId,
    );
  }

  @override
  Override overrideWith(ExamListController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ExamListControllerProvider._internal(
        () => create()
          ..page = page
          ..searchQuery = searchQuery
          ..lessonId = lessonId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        searchQuery: searchQuery,
        lessonId: lessonId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ExamListController, ExamListState>
      createElement() {
    return _ExamListControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ExamListControllerProvider &&
        other.page == page &&
        other.searchQuery == searchQuery &&
        other.lessonId == lessonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, searchQuery.hashCode);
    hash = _SystemHash.combine(hash, lessonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ExamListControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ExamListState> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `searchQuery` of this provider.
  String? get searchQuery;

  /// The parameter `lessonId` of this provider.
  String? get lessonId;
}

class _ExamListControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ExamListController,
        ExamListState> with ExamListControllerRef {
  _ExamListControllerProviderElement(super.provider);

  @override
  int get page => (origin as ExamListControllerProvider).page;
  @override
  String? get searchQuery => (origin as ExamListControllerProvider).searchQuery;
  @override
  String? get lessonId => (origin as ExamListControllerProvider).lessonId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
