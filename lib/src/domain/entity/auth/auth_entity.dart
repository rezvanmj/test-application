import 'package:equatable/equatable.dart';
import 'package:test_flutter_project/src/data/model/auth/auth_model.dart';

class AuthEntity extends Equatable{
 final AccessTokens? accessTokens;
 final bool? newUser;

  const AuthEntity({this.accessTokens , this.newUser});

  @override
  List<Object?> get props => throw [accessTokens ,newUser ];


}
