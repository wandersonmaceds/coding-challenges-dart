import 'dart:collection';

import 'package:coding/node.dart';

Node? bfsSearch<T>(Node<T> root, T value) {
  final Queue queue = Queue<Node<T>>()..add(root);

  while (queue.isNotEmpty) {
    final node = queue.removeFirst() as Node<T>;
    if (node.value == value) {
      return node;
    }

    if (node.children != null) {
      queue.addAll(node.children!);
    }
  }

  return null;
}
