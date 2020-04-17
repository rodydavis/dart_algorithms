List<List<int>> permutations(List<int> array) {
  final List<List<int>> _results = [];
  swapForPermutations(0, array, _results);
  return _results;
}

void swapForPermutations(
    int index, List<int> array, List<List<int>> permutations) {
  if (index == array.length - 1) {
    permutations.add(List.from(array));
  } else {
    for (var j = index; j < array.length; j++) {
      swap(array, index, j);
      swapForPermutations(index + 1, array, permutations);
      swap(array, index, j);
    }
  }
}

void swap(List<int> array, int a, int b) {
  final item = array[a];
  array[a] = array[b];
  array[b] = item;
}
