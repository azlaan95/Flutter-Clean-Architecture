import 'package:azl_domain/di/domain_injection.dart';
import 'package:azl_data/config/environment.dart';

class AppConfigure {
  static configure(Environment environment, {bool enableMock = false}) {
    DomainInjection.configure(environment, enableMock);
  }
}
