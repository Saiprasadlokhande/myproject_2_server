class ResponseBody {
  String message;
  dynamic body;
  String errorMessage;
  ResponseBody({this.body, this.errorMessage = "", this.message = ''});
}

ResponseBody successResponse(dynamic response, {String? message}) {
  return ResponseBody(body: response, errorMessage: '', message: message ?? '');
}

errorResponse(String response) {
  return ResponseBody(body: {}, errorMessage: response, message: '');
}
