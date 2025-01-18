// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpHash() => r'9d25da25bf0f6930984097eacc2eafffce2f6d19';

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
String _$dummyInterceptorHash() => r'f7862d06670a72c3fd889604971ff97fdc22b9f3';

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
