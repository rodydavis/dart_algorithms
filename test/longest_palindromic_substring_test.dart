import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('longest palindromic substring', () {
    final _output = longestPalindromicSubstring('abaxyzzyxf');
    expect(_output, 'xyzzyx');
  });
}
