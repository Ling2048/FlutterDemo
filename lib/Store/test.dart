import 'package:mobx/mobx.dart';

part 'test.g.dart';

class Test = _Test with _$Test;

abstract class _Test with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}