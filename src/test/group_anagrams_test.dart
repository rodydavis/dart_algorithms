import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('group anagrams', () {
    final _output = groupAnagrams(["act", "cat", "bo", "ob"]);
    expect(_output, [['act', 'cat'], ['bo', 'ob']]);
  });
}
