// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionsResponse _$SectionsResponseFromJson(Map<String, dynamic> json) =>
    SectionsResponse(
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionsResponseToJson(SectionsResponse instance) =>
    <String, dynamic>{
      'sections': instance.sections,
    };
