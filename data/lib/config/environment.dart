class Environment {
  Environment(
      {required this.baseUrl,
      required this.path1,
      this.path2 = '',
      required this.token});

  final String baseUrl;
  final String path1;
  final String? path2;
  final String token;
}
