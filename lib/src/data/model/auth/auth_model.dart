import 'package:flutter/cupertino.dart';
import 'package:test_flutter_project/src/domain/entity/auth/auth_entity.dart';


class AuthModel extends AuthEntity {


  AuthModel({
    AccessTokens? accessTokens,
    bool? newUser,
  }) : super(accessTokens: accessTokens, newUser: newUser,) {
    _accessTokens = accessTokens;
    _newUser = newUser;

  }

  AuthModel.fromJson(dynamic json) {
    _accessTokens = json['accessTokens'] != null
        ? AccessTokens.fromJson(json['accessTokens'])
        : null;
    _newUser = json['newUser'];
  }

  AccessTokens? _accessTokens;
  bool? _newUser;

  AuthModel copyWith({
    AccessTokens? accessTokens,
    bool? newUser,
  }) =>
      AuthModel(
        accessTokens: accessTokens ?? _accessTokens,
        newUser: newUser ?? _newUser,
      );

  @override
  AccessTokens? get accessTokens => _accessTokens;

  @override
  bool? get newUser => _newUser;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_accessTokens != null) {
      map['accessTokens'] = _accessTokens?.toJson();
    }
    map['newUser'] = _newUser;
    return map;
  }
}

/// accessToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzZWN0aW9uIjo0MTYsInV1aWQiOiJiNDQ1MGFiNy01Y2U0LTQ1NWMtYjY2ZS1jM2FiOTJmMTc4NzAiLCJpYXQiOjE3MzcxMjMyNzYsImV4cCI6MTczNzE2NjQ3Nn0.hxIayVvAYCVMxQMMTyWXybrG3TYwfH8X86204H_D5lY"
/// refreshToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzZWN0aW9uIjo0MTYsInV1aWQiOiJiNDQ1MGFiNy01Y2U0LTQ1NWMtYjY2ZS1jM2FiOTJmMTc4NzAiLCJpYXQiOjE3MzcxMjMyNzYsImV4cCI6MTczOTcxNTI3Nn0.wQ9c5O3xAP59T_piEXv1NCELkqgt92gqJLhvVSFoFmM"
/// expireAt : 1739715276154

class AccessTokens {
  AccessTokens({
    String? accessToken,
    String? refreshToken,
    num? expireAt,
  }) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _expireAt = expireAt;
  }

  AccessTokens.fromJson(dynamic json) {
    _accessToken = json['accessToken'];
    _refreshToken = json['refreshToken'];
    _expireAt = json['expireAt'];
  }

  String? _accessToken;
  String? _refreshToken;
  num? _expireAt;

  AccessTokens copyWith({
    String? accessToken,
    String? refreshToken,
    num? expireAt,
  }) =>
      AccessTokens(
        accessToken: accessToken ?? _accessToken,
        refreshToken: refreshToken ?? _refreshToken,
        expireAt: expireAt ?? _expireAt,
      );

  String? get accessToken => _accessToken;

  String? get refreshToken => _refreshToken;

  num? get expireAt => _expireAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['accessToken'] = _accessToken;
    map['refreshToken'] = _refreshToken;
    map['expireAt'] = _expireAt;
    return map;
  }
}
