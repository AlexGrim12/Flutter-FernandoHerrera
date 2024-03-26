void main() {
  emitNumbers().listen((event) {
    print(event);
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // print('desde periodic $value');
    return value;
  }).take(5);
}
