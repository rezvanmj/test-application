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
      options.headers['Authorization']='JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzZWN0aW9uIjo0MzMsInV1aWQiOiI0MTk1NWRiZi0zMzY3LTRlOWMtYTMwYS0zM2QwZGNkNGIzMTYiLCJpYXQiOjE3MzcxOTQyMjEsImV4cCI6MTczOTc4NjIyMX0.KsIFa_0Ia56myP4XYkbkDrVh1HjDxER_GArHXoUX5n8';
      handler.next(options);
    },
    onResponse: (options, handler) => handler.next(options),
    onError: (error, handler) {
      handler.next(error); 
    },
  );
}
