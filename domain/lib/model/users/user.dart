import 'package:json_annotation/json_annotation.dart'; 

part 'user.g.dart'; 

@JsonSerializable()
class User {
  @JsonKey(name: 'createdAt')
  String? createdAt;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'avatar')
  String? avatar;
  @JsonKey(name: 'id')
  String? id;

  User({this.createdAt, this.name, this.avatar, this.id});

   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

   Map<String, dynamic> toJson() => _$UserToJson(this);
}

