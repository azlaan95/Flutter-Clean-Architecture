import 'package:azl_domain/model/comments/comment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comments_response.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CommentsResponse {
  @JsonKey(name: 'comments')
  final List<Comment>? comments;

  CommentsResponse({this.comments});

  factory CommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CommentsResponseToJson(this);
}
