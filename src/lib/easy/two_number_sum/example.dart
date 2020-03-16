import 'solution_1.dart' as solution1;
import 'solution_2.dart' as solution2;
import 'solution_3.dart' as solution3;

/// Two Number Sum
/// 
/// Write a function that takes in a non-empty array of 
/// distinct integers and an integer representing a target sum. 
/// If any two numbers in the input array sum up to the 
/// target sum, the function should return them in an array. 
/// If no two numbers sum up to the target sum, the function 
/// should return an empty array. Assume that there will be 
/// at most one pair of numbers summing up to the target sum.

void main(List<String> args) {
  final array = [3, 5, -4, 8, 11, 1, -1, -6];
  final targetSum = 10;
  _execute('Solution 1', () => solution1.twoNumberSum(array, targetSum));
  _execute('Solution 2', () => solution2.twoNumberSum(array, targetSum));
  _execute('Solution 3', () => solution3.twoNumberSum(array, targetSum));
}

void _execute(String name, Function function) {
  final stopwatch = Stopwatch();
  stopwatch.start();
  final result = function();
  print('$name => $result in ${stopwatch.elapsedMilliseconds}ms');
  stopwatch.stop();
  stopwatch.reset();
}
