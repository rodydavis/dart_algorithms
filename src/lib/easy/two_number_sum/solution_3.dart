/// O(nlog(n)) time | O(1) space
List<int> twoNumberSum(List<int> array, int targetSum) {
  array.sort((a, b) => a - b);
  int left = 0;
  int right = array.length - 1;
  while (left < right) {
    final int currentSum = array[left] + array[right];
    if (currentSum == targetSum) {
      return [array[left], array[right]];
    } else if (currentSum < targetSum) {
      left++;
    } else if (currentSum > targetSum) {
      right--;
    }
  }
  return [];
}
