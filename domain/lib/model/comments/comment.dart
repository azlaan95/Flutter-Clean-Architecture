import 'package:json_annotation/json_annotation.dart'; 

part 'comment.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class Comment {
  @JsonKey(name: 'content')
  final  String? content;
  @JsonKey(name: 'id')
  final  String? id;
  @JsonKey(name: 'posted_at')
  final  String? postedAt;
  @JsonKey(name: 'project_id')
  final  String? projectId;
  @JsonKey(name: 'task_id')
  final  String? taskId;
  @JsonKey(name: 'attachment')
  final  Attachment? attachment;

  Comment({this.content, this.id, this.postedAt, this.projectId, this.taskId, this.attachment});

   factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

   Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Attachment {
  @JsonKey(name: 'file_name')
  final  String? fileName;
  @JsonKey(name: 'file_type')
  final  String? fileType;
  @JsonKey(name: 'file_url')
  final  String? fileUrl;
  @JsonKey(name: 'resource_type')
  final  String? resourceType;

  Attachment({this.fileName, this.fileType, this.fileUrl, this.resourceType});

   factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);

   Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}

