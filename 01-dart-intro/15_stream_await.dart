void main() {
  emitNumber().listen((int event) {
    print('Stream value: $event');
  });
}

Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (var i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
