class Node<T> {
  final T value;
  late final List<Node<T>>? children;

  Node(this.value, this.children);
}
