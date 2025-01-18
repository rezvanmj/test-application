part of '../provider.dart';
String token = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzZWN0aW9uIjo0NDMsInV1aWQiOiJiNDAyNjU4Yy00NWIxLTQ3YzctOWI2Ny1mOGE3OWVkN2IxN2YiLCJpYXQiOjE3MzcyMDk0OTAsImV4cCI6MTczNzI1MjY5MH0.cYEB1ZGYcDR2xLmeTNGvwWBPuk5MYWctNMCUi_tpEMQ';
@riverpod
Dio http(Ref ref) {
  final options = BaseOptions(
    baseUrl: 'https://api.erfanm.com/',
    headers: {
      'Authorization' : token ,
      'Content-Type' : 'application/json',
      'Accept' : 'application/json'
    },
    responseType: ResponseType.json,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );


  Dio dio = Dio(options);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    requestBody: true,
    request: true,
    responseHeader: true,
    error: true,
  ));

  return dio
    ..interceptors.addAll([
      ref.watch(dummyInterceptorProvider),
    ]);
}

@riverpod
InterceptorsWrapper dummyInterceptor(Ref ref) {
  return InterceptorsWrapper(
    onRequest: (options, handler) {
      options.headers.addAll({"Authorization" : token}) ;
      handler.next(options);
    },
    onResponse: (options, handler) => handler.next(options),
    onError: (error, handler) {
      log('ERROR : $error');
      handler.next(error);
    },
  );


}
