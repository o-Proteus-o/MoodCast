class MyExeption implements Exception {
  final String message;
  MyExeption(this.message);

  @override
  String toString() {
    return message;
  }
}
