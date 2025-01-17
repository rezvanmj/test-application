part of '../repository.dart';


abstract class AuthRepository {
  Future<AuthEntity> login({required String userName , required String password});
}
