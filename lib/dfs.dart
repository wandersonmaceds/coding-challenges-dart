import 'dart:collection';

import 'package:coding/node.dart';

Node<T>? dfsSearch<T>(Node<T> root, T value) {
  final Queue queue = Queue<Node<T>>()..add(root);

  while (queue.isNotEmpty) {
    final node = queue.removeLast() as Node<T>;
    if (node.value == value) {
      return node;
    }

    if (node.children != null) {
      queue.addAll(node.children!);
    }
  }

  return null;
}
