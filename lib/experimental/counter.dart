import 'dart:html';

/// Displays a counter that is only visible if the count is greater than zero.
class Counter {
  Counter(this.element);

  final SpanElement element;

  int _itemCount = 0;

  void increment() {
    _itemCount++;
    element.text = '$_itemCount';
    element.attributes.remove('hidden');
  }

  void clear() {
    _itemCount = 0;
    element.setAttribute('hidden', 'true');
  }
}
