import 'package:http/http.dart';

class AppMultiPartRequest {
  final Map<String, String>? fields;
  final List<MultipartFile>? files;

  AppMultiPartRequest({this.fields, this.files});
}
