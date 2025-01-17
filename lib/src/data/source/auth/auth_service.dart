
part of '../sources.dart';


@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('auth/login')
  Future<AuthModel> login({
    @Field('username') required String username,
    @Field('password') required String password,
  });
}
