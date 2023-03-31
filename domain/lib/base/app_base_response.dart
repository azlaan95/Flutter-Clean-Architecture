int EXCEPTION_RESPONSE = 500;
int FAILURE_RESPONSE = 400;

class AppBaseResponse {
  final bool success;
  final dynamic response;
  final bool noInternet;
  final bool isException;
  final int responseCode;

  AppBaseResponse(
      {this.success = false,
      this.response,
      this.noInternet = false,
      this.isException = false,
      this.responseCode = 0});
}
