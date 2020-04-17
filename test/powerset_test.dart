import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('powerset', () {
    var _result = powerset(<int>[1, 2, 3]);
    expect(_result, [
      [],
      [1],
      [2],
      [1, 2],
      [3],
      [1, 3],
      [2, 3],
      [1, 2, 3]
    ]);
  });
}
