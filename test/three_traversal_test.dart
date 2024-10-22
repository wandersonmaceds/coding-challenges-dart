import 'package:coding/node.dart';
import 'package:coding/tree_traversal.dart';
import 'package:test/test.dart';

void main() {
  test('should traverse a tree in a in-order way', () {
    final tree = Node(1, [
      Node(2, [Node(4, null), Node(5, null)]),
      Node(3, [Node(6, null), Node(7, null)])
    ]);

    final traverser = TreeTraversal<int>();
    traverser.inOrder(tree);
    expect(traverser.elements, [4, 2, 5, 1, 6, 3, 7]);
  });

  test('should traverse a tree in a pre-order way', () {
    final tree = Node(1, [
      Node(2, [Node(4, null), Node(5, null)]),
      Node(3, [Node(6, null), Node(7, null)])
    ]);

    final traverser = TreeTraversal<int>();
    traverser.preOrder(tree);
    expect(traverser.elements, [1, 2, 4, 5, 3, 6, 7]);
  });

  test('should traverse a tree in a post-order way', () {
    final tree = Node(1, [
      Node(2, [Node(4, null), Node(5, null)]),
      Node(3, [Node(6, null), Node(7, null)])
    ]);

    final traverser = TreeTraversal<int>();
    traverser.postOrder(tree);
    expect(traverser.elements, [4, 5, 2, 6, 7, 3, 1]);
  });
}
