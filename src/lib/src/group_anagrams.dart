List<List<String>> groupAnagrams(List<String> words) {
  final _groups = <String, List<String>>{};
  for (final word in words) {
    final _sorted = sortWord(word);
    if (_groups[_sorted] == null) {
      _groups[_sorted] = [];
    }
    _groups[_sorted].add(word);
  }
  return _groups.values.toList();
}

String sortWord(String val) {
  final _letters = val.split('');
  _letters.sort();
  return _letters.join();
}
