// To parse this JSON data, do
//
//     final tokenEntity = tokenEntityFromJson(jsonString);

import 'dart:convert';

import 'package:weatherapp/features/weather/domain/entities/token_entity.dart';

List<TokenModel> tokenEntityFromJson(List str) =>
    List<TokenModel>.from(str.map((x) => TokenModel.fromJson(x)));

String tokenEntityToJson(List<TokenModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TokenModel extends TokenEntity {
  const TokenModel({
    required isValid,
    required token,
    required id,
  }) : super(token: token, isValid: isValid, id: id);

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        isValid: json["isValid"],
        token: json["token"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "isValid": isValid,
        "token": token,
        "id": id,
      };
}
