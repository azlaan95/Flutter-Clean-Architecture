// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      id: json['id'] as String?,
      projectId: json['project_id'] as String?,
      order: (json['order'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'id': instance.id,
      'project_id': instance.projectId,
      'order': instance.order,
      'name': instance.name,
    };
