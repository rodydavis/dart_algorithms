class LinkedList {
  int value;
  LinkedList next;

  LinkedList(this.value);
}

/// O(N) time, O(1) space
void removeKthNodeFromEnd(LinkedList head, int k) {
  var first = head;
  var second = head;
  for (var i = 0; i < k; i++) {
    first = first.next;
  }
  var prev = second;
  while (first != null) {
     first = first.next;
     prev = second;
     second = second.next;
  }
  var next = second.next;
  prev.next = next;
}
