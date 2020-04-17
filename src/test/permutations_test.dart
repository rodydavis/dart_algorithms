import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('permutations', () {
    final _output = permutations([1, 2, 3]);
    expect(_output, [
      [1, 2, 3],
      [1, 3, 2],
      [2, 1, 3],
      [2, 3, 1],
      [3, 2, 1],
      [3, 1, 2]
    ]);
  });
}
