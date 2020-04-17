import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('two number sum', () {
    var _result = twoNumberSum(<int>[1, 2, 3], 3);
    expect(_result, [2, 1]);
  });
}
