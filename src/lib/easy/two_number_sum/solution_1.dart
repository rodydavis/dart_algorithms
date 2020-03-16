/// O(n^2) time | O(1) space
List<int> twoNumberSum(List<int> array, int targetSum) {
  for (var i = 0; i < array.length - 1; i++) {
    final int firstNumber = array[i];
    for (var j = i + 1; j < array.length; j++) {
      final int secondNumber = array[j];
      if (firstNumber + secondNumber == targetSum) {
        return [secondNumber, firstNumber];
      }
    }
  }
  return [];
}
