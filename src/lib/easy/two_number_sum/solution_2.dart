import 'dart:collection';

/// O(n) time | O(n) space
List<int> twoNumberSum(List<int> array, int targetSum) {
  var nums = HashMap<int, bool>.from({});

  for (var number in array) {
    final int potentialMatch = targetSum - number;

    if (nums.containsKey(potentialMatch)) {
      return [number, potentialMatch];
    } else {
      nums[number] = true;
    }
  }
  return [];
}
