import 'package:azl_domain/model/users/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users_response.g.dart'; 

@JsonSerializable()
class UsersResponse {
  @JsonKey(name: 'users')
  List<User>? users;

  UsersResponse({this.users});

   factory UsersResponse.fromJson(Map<String, dynamic> json) => _$UsersResponseFromJson(json);

   Map<String, dynamic> toJson() => _$UsersResponseToJson(this);
}

