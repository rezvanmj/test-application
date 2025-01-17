part of '../provider.dart';

@riverpod
Dio http(Ref ref) {
  final options = BaseOptions(
    baseUrl: 'https://api.erfanm.com/',
    responseType: ResponseType.json,
    connectTimeout: const Duration(milliseconds: 3000),
    receiveTimeout: const Duration(milliseconds: 3000),
  );
  return Dio(options)
    ..interceptors.addAll([
      ref.watch(dummyInterceptorProvider),
    ]);
}

@riverpod
InterceptorsWrapper dummyInterceptor(Ref ref) {
  return InterceptorsWrapper(
    onRequest: (options, handler) {
      // TODO: token interceptor

      handler.next(options);
    },
    onResponse: (options, handler) => handler.next(options),
    onError: (error, handler) {
      handler.next(error); 
    },
  );
}
