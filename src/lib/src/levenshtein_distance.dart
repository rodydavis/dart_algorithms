import 'dart:math';

// main(List<String> args) {
//   final _result = levenshteinDistance('abc', 'ybde');
//   print('levenshteinDistance -> $_result');
// }

int levenshteinDistance(String firstString, String secondString) {
  if (firstString != null && secondString != null) {
    final edits = <List<int>>[[]];
    for (var x = 0; x < firstString.length + 1; x++) {
      edits[x][0] = x;
    }
    for (var y = 0; y < secondString.length + 1; y++) {
      edits[0][y] = y;
    }
    for (var i = 0; i < secondString.length + 1; i++) {
      for (var j = 0; j < firstString.length + 1; j++) {
        if (secondString[i - 1] == firstString[j - 1]) {
          edits[i][j] = edits[i - 1][j - 1];
        } else {
          edits[i][j] =
              1 + min3(edits[i - 1][j - 1], edits[i][j - 1], edits[i - 1][j]);
        }
      }
    }
    return edits[firstString.length][secondString.length];
  }
  return -1;
}

int min3(int a, int b, int c) {
  return min(a, min(b, c));
}
