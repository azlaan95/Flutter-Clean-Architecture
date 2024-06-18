int EXCEPTION_RESPONSE = 500;
int FAILURE_RESPONSE = 400;

class ResponseDto<T> {
  final bool success;
  final dynamic response;
  final dynamic errorResponse;
  final bool noInternet;
  final bool isException;
  final int responseCode;

  ResponseDto(
      {this.success = false,
      this.response,
      this.noInternet = false,
      this.isException = false,
      this.responseCode = 0,
      this.errorResponse});
}
