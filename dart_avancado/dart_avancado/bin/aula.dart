void main() async {
  Stack<String> pilha = Stack();
  pilha.push('Leo');
  pilha.push('Ana');
  print(pilha.pop());

  Stack<int> pilha2 = Stack();
  pilha2.push(10);
}

class Stack<T> {
  List<T> _stack = [];

  push(T value) {
    _stack.add(value);
  }

  T? pop() {
    return _stack.isNotEmpty ? _stack.removeLast() : null;
  }
}
