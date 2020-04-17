import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('youngest common ancestor', () {
    final root = AncestralTree('root');
    final a = AncestralTree('a', root);
    final b = AncestralTree('b', root);
    final _output = getYoungestCommonAncestor(root, a, b);
    expect(_output.name, 'root');
  });
}
