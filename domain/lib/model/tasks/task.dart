import 'package:json_annotation/json_annotation.dart'; 

part 'task.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class TodoTask {
  @JsonKey(name: 'creator_id')
  final  String? creatorId;
  @JsonKey(name: 'created_at')
  final  String? createdAt;
  @JsonKey(name: 'assignee_id')
  final  String? assigneeId;
  @JsonKey(name: 'assigner_id')
  final  String? assignerId;
  @JsonKey(name: 'comment_count')
  final  int? commentCount;
  @JsonKey(name: 'is_completed')
  final  bool? isCompleted;
  @JsonKey(name: 'content')
  final  String? content;
  @JsonKey(name: 'description')
  final  String? description;
  @JsonKey(name: 'due')
  final  Due? due;
  @JsonKey(name: 'duration')
  final  int? duration;
  @JsonKey(name: 'id')
  final  String? id;
  @JsonKey(name: 'labels')
  final  List<String>? labels;
  @JsonKey(name: 'order')
  final  int? order;
  @JsonKey(name: 'priority')
  final  int? priority;
  @JsonKey(name: 'project_id')
  final  String? projectId;
  @JsonKey(name: 'section_id')
  final  String? sectionId;
  @JsonKey(name: 'parent_id')
  final  String? parentId;
  @JsonKey(name: 'url')
  final  String? url;

  TodoTask({this.creatorId, this.createdAt, this.assigneeId, this.assignerId, this.commentCount, this.isCompleted, this.content, this.description, this.due, this.duration, this.id, this.labels, this.order, this.priority, this.projectId, this.sectionId, this.parentId, this.url});

   factory TodoTask.fromJson(Map<String, dynamic> json) => _$TodoTaskFromJson(json);

   Map<String, dynamic> toJson() => _$TodoTaskToJson(this);

  TodoTask copyWith({
    String? creatorId,
    String? createdAt,
    String? assigneeId,
    String? assignerId,
    int? commentCount,
    bool? isCompleted,
    String? content,
    String? description,
    Due? due,
    int? duration,
    String? id,
    List<String>? labels,
    int? order,
    int? priority,
    String? projectId,
    String? sectionId,
    String? parentId,
    String? url,
  }) {
    return TodoTask(
      creatorId: creatorId ?? this.creatorId,
      createdAt: createdAt ?? this.createdAt,
      assigneeId: assigneeId ?? this.assigneeId,
      assignerId: assignerId ?? this.assignerId,
      commentCount: commentCount ?? this.commentCount,
      isCompleted: isCompleted ?? this.isCompleted,
      content: content ?? this.content,
      description: description ?? this.description,
      due: due ?? this.due,
      duration: duration ?? this.duration,
      id: id ?? this.id,
      labels: labels ?? this.labels,
      order: order ?? this.order,
      priority: priority ?? this.priority,
      projectId: projectId ?? this.projectId,
      sectionId: sectionId ?? this.sectionId,
      parentId: parentId ?? this.parentId,
      url: url ?? this.url,
    );
  }
}

@JsonSerializable(ignoreUnannotated: false)
class Due {
  @JsonKey(name: 'date')
  final  String? date;
  @JsonKey(name: 'is_recurring')
  final  bool? isRecurring;
  @JsonKey(name: 'datetime')
  final  String? datetime;
  @JsonKey(name: 'string')
  final  String? string;
  @JsonKey(name: 'timezone')
  final  String? timezone;

  Due({this.date, this.isRecurring, this.datetime, this.string, this.timezone});

   factory Due.fromJson(Map<String, dynamic> json) => _$DueFromJson(json);

   Map<String, dynamic> toJson() => _$DueToJson(this);
}

