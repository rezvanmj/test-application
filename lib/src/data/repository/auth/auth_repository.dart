import 'package:test_flutter_project/src/domain/entity/auth/auth_entity.dart';


abstract class AuthRepository{
  Future<AuthEntity> login(Map<String, dynamic> data);
}
