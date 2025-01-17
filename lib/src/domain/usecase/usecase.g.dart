// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getExamUseCaseHash() => r'fb559765a619f9a7bf0809fa94654a975e736bf3';

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

/// See also [getExamUseCase].
@ProviderFor(getExamUseCase)
const getExamUseCaseProvider = GetExamUseCaseFamily();

/// See also [getExamUseCase].
class GetExamUseCaseFamily extends Family<AsyncValue<List<ExamEntity>>> {
  /// See also [getExamUseCase].
  const GetExamUseCaseFamily();

  /// See also [getExamUseCase].
  GetExamUseCaseProvider call({
    required int page,
    String? searchQuery,
    String? lessonId,
  }) {
    return GetExamUseCaseProvider(
      page: page,
      searchQuery: searchQuery,
      lessonId: lessonId,
    );
  }

  @override
  GetExamUseCaseProvider getProviderOverride(
    covariant GetExamUseCaseProvider provider,
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
  String? get name => r'getExamUseCaseProvider';
}

/// See also [getExamUseCase].
class GetExamUseCaseProvider
    extends AutoDisposeFutureProvider<List<ExamEntity>> {
  /// See also [getExamUseCase].
  GetExamUseCaseProvider({
    required int page,
    String? searchQuery,
    String? lessonId,
  }) : this._internal(
          (ref) => getExamUseCase(
            ref as GetExamUseCaseRef,
            page: page,
            searchQuery: searchQuery,
            lessonId: lessonId,
          ),
          from: getExamUseCaseProvider,
          name: r'getExamUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getExamUseCaseHash,
          dependencies: GetExamUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetExamUseCaseFamily._allTransitiveDependencies,
          page: page,
          searchQuery: searchQuery,
          lessonId: lessonId,
        );

  GetExamUseCaseProvider._internal(
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
  Override overrideWith(
    FutureOr<List<ExamEntity>> Function(GetExamUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetExamUseCaseProvider._internal(
        (ref) => create(ref as GetExamUseCaseRef),
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
  AutoDisposeFutureProviderElement<List<ExamEntity>> createElement() {
    return _GetExamUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetExamUseCaseProvider &&
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
mixin GetExamUseCaseRef on AutoDisposeFutureProviderRef<List<ExamEntity>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `searchQuery` of this provider.
  String? get searchQuery;

  /// The parameter `lessonId` of this provider.
  String? get lessonId;
}

class _GetExamUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<List<ExamEntity>>
    with GetExamUseCaseRef {
  _GetExamUseCaseProviderElement(super.provider);

  @override
  int get page => (origin as GetExamUseCaseProvider).page;
  @override
  String? get searchQuery => (origin as GetExamUseCaseProvider).searchQuery;
  @override
  String? get lessonId => (origin as GetExamUseCaseProvider).lessonId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
