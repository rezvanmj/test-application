

part of '../sources.dart';




class AuthDataSourceImpl implements AuthDataSource {
  AuthDataSourceImpl({required AuthService service}) : _service = service;

  final AuthService _service;

  @override
  Future<AuthModel> login({required String userName , required String password}) =>
      _service.login(username: userName , password: password );
}

@riverpod
AuthDataSource authDataSource(Ref  ref) {
  final http = ref.watch(httpProvider);
  return AuthDataSourceImpl(service: AuthService(http));
}
