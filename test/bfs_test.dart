import 'package:coding/bfs.dart';
import 'package:test/test.dart';
import 'package:coding/node.dart';

void main() {
  test('BFS: should find a value in the tree', () {
    final tree = Node<int>(1, [
      Node(2, null),
      Node(3, [
        Node(5, [
          Node(12, null),
          Node(7, null),
          Node(8, [Node(10, null)]),
          Node(11, null)
        ]),
        Node(6, null)
      ]),
      Node(4, [Node(9, null)])
    ]);

    final result = bfsSearch<int>(tree, 6);

    expect(result?.value, equals(6));
  });

  test('BFS: should not find a value in the tree', () {
    final tree = Node<int>(1, [
      Node(2, null),
      Node(3, [
        Node(5, [
          Node(12, null),
          Node(7, null),
          Node(8, [Node(10, null)]),
          Node(11, null)
        ]),
        Node(6, null)
      ]),
      Node(4, [Node(9, null)])
    ]);

    final result = bfsSearch<int>(tree, 15);

    expect(result, equals(null));
  });
}
