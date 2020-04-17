class AncestralTree {
  final String name;
  AncestralTree ancestor;
  AncestralTree(this.name, [this.ancestor]);
  @override
  String toString() {
    return name;
  }
}

AncestralTree getYoungestCommonAncestor(
  AncestralTree root,
  AncestralTree descendantA,
  AncestralTree descendantB,
) {
  var descendantALevel = _getLevelForDescendant(root, descendantA);
  var descendantBLevel = _getLevelForDescendant(root, descendantB);
  var aNode = descendantA;
  var bNode = descendantB;
  if (descendantALevel < descendantBLevel) {
    for (var i = descendantALevel; i <= descendantBLevel; i++) {
      aNode = aNode.ancestor;
    }
  }
  if (descendantBLevel < descendantALevel) {
    for (var i = descendantBLevel; i <= descendantALevel; i++) {
      bNode = bNode.ancestor;
    }
  }
  while (!identical(aNode, bNode)) {
    aNode = aNode.ancestor;
    bNode = bNode.ancestor;
  }
  return aNode;
}

int _getLevelForDescendant(AncestralTree root, AncestralTree descendant) {
  var count = 0;
  var node = descendant;
  while (!identical(root, node)) {
    node = node.ancestor;
    count++;
  }
  return count;
}
