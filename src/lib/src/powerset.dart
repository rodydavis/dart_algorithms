List<List<int>> powerset(List<int> array, [int index]) {
  var _result = <List<int>>[[]];
  for (var item in array) {
    var _powersets = <List<int>>[];
    for (List<int> result in _result) {
      var _newSet = List<int>.from(result);
      _newSet.add(item);
      _powersets.add(_newSet);
    }
    _result.addAll(_powersets);
  }
  return _result;
}
