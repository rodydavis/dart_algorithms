import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('levenshtein distance', () {
    final _output = levenshteinDistance("act", "bcat");
    expect(_output, 2);
  });
}
