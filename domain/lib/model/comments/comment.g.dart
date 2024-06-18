// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      content: json['content'] as String?,
      id: json['id'] as String?,
      postedAt: json['posted_at'] as String?,
      projectId: json['project_id'] as String?,
      taskId: json['task_id'] as String?,
      attachment: json['attachment'] == null
          ? null
          : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'content': instance.content,
      'id': instance.id,
      'posted_at': instance.postedAt,
      'project_id': instance.projectId,
      'task_id': instance.taskId,
      'attachment': instance.attachment,
    };

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => Attachment(
      fileName: json['file_name'] as String?,
      fileType: json['file_type'] as String?,
      fileUrl: json['file_url'] as String?,
      resourceType: json['resource_type'] as String?,
    );

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'file_name': instance.fileName,
      'file_type': instance.fileType,
      'file_url': instance.fileUrl,
      'resource_type': instance.resourceType,
    };
