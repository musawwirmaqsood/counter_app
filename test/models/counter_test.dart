import 'package:counter_app/models/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter', () {
    test('Default counter value should be 0', () {
      final counter = Counter();
      expect(counter.val, 0);
    });

    test('Incrementing counter increases the value', () {
      final counter = Counter();
      counter.increment();
      expect(counter.val, 1);
    });
  });
}
