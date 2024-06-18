import 'package:azl_domain/model/sections/section.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sections_response.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class SectionsResponse {
  @JsonKey(name: 'sections')
  final List<Section>? sections;

  SectionsResponse({this.sections});

  factory SectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SectionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SectionsResponseToJson(this);
}
