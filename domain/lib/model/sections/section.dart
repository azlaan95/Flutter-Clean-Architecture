import 'package:json_annotation/json_annotation.dart'; 

part 'section.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class Section {
  @JsonKey(name: 'id')
  final  String? id;
  @JsonKey(name: 'project_id')
  final  String? projectId;
  @JsonKey(name: 'order')
  final  int? order;
  @JsonKey(name: 'name')
  final  String? name;

  Section({this.id, this.projectId, this.order, this.name});

   factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);

   Map<String, dynamic> toJson() => _$SectionToJson(this);
}

