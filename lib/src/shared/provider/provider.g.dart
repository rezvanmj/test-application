// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpHash() => r'a41fdc123ea5a034a7b40d74d864f9abfe02e11b';

/// See also [http].
@ProviderFor(http)
final httpProvider = AutoDisposeProvider<Dio>.internal(
  http,
  name: r'httpProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$httpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef HttpRef = AutoDisposeProviderRef<Dio>;
String _$dummyInterceptorHash() => r'c110f7b0e5b867b6d032d794a48772dec0605258';

/// See also [dummyInterceptor].
@ProviderFor(dummyInterceptor)
final dummyInterceptorProvider =
    AutoDisposeProvider<InterceptorsWrapper>.internal(
  dummyInterceptor,
  name: r'dummyInterceptorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dummyInterceptorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DummyInterceptorRef = AutoDisposeProviderRef<InterceptorsWrapper>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
