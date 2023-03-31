import 'development/development_env.dart';
import 'production/production_env.dart';

class Environment {
  /// Prod environment
  factory Environment.production() {
    return ProductionEnvironment.production();
  }

  /// Dev environment
  factory Environment.development() {
    return DevelopmentEnvironment.development();
  }

  Environment(
      {required this.baseDomain1,
      this.urlPathDomain1,
      this.baseDomain2 = '',
      this.urlPathDomain2 = ''});

  final String baseDomain1;
  final String? urlPathDomain1;
  final String? baseDomain2;
  final String? urlPathDomain2;
}
