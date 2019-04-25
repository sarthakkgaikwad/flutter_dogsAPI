class ImageModel {
  String status;
  String message;

  ImageModel(this.status);
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    status = parsedJson['status'];
    message = parsedJson['message'];
  }
}