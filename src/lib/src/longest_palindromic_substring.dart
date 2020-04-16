main(List<String> args) {
  final _result = longestPalindromicSubstring('abaxyzzyxf');
  print('longestPalindromicSubstring -> $_result');
}

String longestPalindromicSubstring(String string) {
  var longestString = '';
  for (var i = 0; i < string.length; i++) {
    final _oddPosition = longestPalindromicFromPosition(string, i, i);
    longestString = maxString(longestString, _oddPosition);
    final _evenPosition = longestPalindromicFromPosition(string, i - 1, i);
    longestString = maxString(longestString, _evenPosition);
  }
  return longestString;
}

String longestPalindromicFromPosition(String string, int left, int right) {
  var leftIdx = left;
  var rightIdx = right;
  var result = "";
  while (leftIdx > -1 && rightIdx < string.length) {
    final leftChar = string[leftIdx];
    final rightChar = string[rightIdx];
    if (leftChar != rightChar) {
      break;
    }
    leftIdx--;
    rightIdx++;
    if (left == right && result.isEmpty) {
      result = leftChar;
    } else {
      result = leftChar + result + rightChar;
    }
  }
  return result;
}

String maxString(String a, String b) {
  if (a.length > b.length) return a;
  return b;
}
