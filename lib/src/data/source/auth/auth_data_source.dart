
part of '../sources.dart';


abstract class AuthDataSource {
  Future<AuthModel> login({required String userName , required String password});
}
