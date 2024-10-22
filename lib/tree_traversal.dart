import 'package:coding/node.dart';

class TreeTraversal<T> {
  final List _elements = [];

  get elements {
    return List.from(_elements);
  }

  inOrder(Node<T>? root) {
    if (root == null) return;
    inOrder(root.children?.first);
    _elements.add(root.value);
    inOrder(root.children?.last);
  }

  preOrder(Node<T>? root) {
    if (root == null) return;
    _elements.add(root.value);
    preOrder(root.children?.first);
    preOrder(root.children?.last);
  }

  postOrder(Node<T>? root) {
    if (root == null) return;
    postOrder(root.children?.first);
    postOrder(root.children?.last);
    _elements.add(root.value);
  }
}
