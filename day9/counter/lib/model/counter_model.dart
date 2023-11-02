class Count {
  int valueStart;

  Count({required this.valueStart});

  void incresment(int value) {
    value = valueStart;
    value++;
  }

  void decresment(int value) {
    value = valueStart;
    value--;
  }
}
