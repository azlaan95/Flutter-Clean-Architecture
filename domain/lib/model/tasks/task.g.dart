// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoTask _$TodoTaskFromJson(Map<String, dynamic> json) => TodoTask(
      creatorId: json['creator_id'] as String?,
      createdAt: json['created_at'] as String?,
      assigneeId: json['assignee_id'] as String?,
      assignerId: json['assigner_id'] as String?,
      commentCount: (json['comment_count'] as num?)?.toInt(),
      isCompleted: json['is_completed'] as bool?,
      content: json['content'] as String?,
      description: json['description'] as String?,
      due: json['due'] == null
          ? null
          : Due.fromJson(json['due'] as Map<String, dynamic>),
      duration: (json['duration'] as num?)?.toInt(),
      id: json['id'] as String?,
      labels:
          (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
      order: (json['order'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
      projectId: json['project_id'] as String?,
      sectionId: json['section_id'] as String?,
      parentId: json['parent_id'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$TodoTaskToJson(TodoTask instance) => <String, dynamic>{
      'creator_id': instance.creatorId,
      'created_at': instance.createdAt,
      'assignee_id': instance.assigneeId,
      'assigner_id': instance.assignerId,
      'comment_count': instance.commentCount,
      'is_completed': instance.isCompleted,
      'content': instance.content,
      'description': instance.description,
      'due': instance.due,
      'duration': instance.duration,
      'id': instance.id,
      'labels': instance.labels,
      'order': instance.order,
      'priority': instance.priority,
      'project_id': instance.projectId,
      'section_id': instance.sectionId,
      'parent_id': instance.parentId,
      'url': instance.url,
    };

Due _$DueFromJson(Map<String, dynamic> json) => Due(
      date: json['date'] as String?,
      isRecurring: json['is_recurring'] as bool?,
      datetime: json['datetime'] as String?,
      string: json['string'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$DueToJson(Due instance) => <String, dynamic>{
      'date': instance.date,
      'is_recurring': instance.isRecurring,
      'datetime': instance.datetime,
      'string': instance.string,
      'timezone': instance.timezone,
    };
