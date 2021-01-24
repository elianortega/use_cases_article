class CallableClass {
  String call() {
    return "Hello i'm a callable class";
  }
}

void main() {
  final instanceOfClass = CallableClass();
  print(instanceOfClass());
}
