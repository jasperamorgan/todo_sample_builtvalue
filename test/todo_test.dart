import 'package:test/test.dart';
import 'package:todo_sample_builtvalue/src/category.dart';
import 'package:todo_sample_builtvalue/src/todo.dart';

void main() {
  group('Test Todo model', () {
    Category defaultCat;
    DateTime defaultDueDate;

    setUp(() {
      defaultCat = Category((b) => b
        ..id = 1
        ..name = 'Default Category');

      defaultDueDate = DateTime.now();
    });

    test('Create a Todo', () {
      Todo t = Todo((b) => b
        ..id = 1
        ..title = 'todo 1'
        ..due = defaultDueDate
        ..category = defaultCat.toBuilder());
      expect(t.id, 1);
      expect(t.title, 'todo 1');
      expect(t.due, defaultDueDate);
      expect(t.category, defaultCat);
    });

    test('todo equality', () {
      Todo t1 = Todo((b) => b
        ..id = 1
        ..title = 'todo 1'
        ..due = defaultDueDate
        ..category = defaultCat.toBuilder());

      Todo t2 = Todo((b) => b
        ..id = 2
        ..title = 'todo 2'
        ..due = defaultDueDate
        ..category = defaultCat.toBuilder());

      expect(t1, isNot(equals(t2)), reason: 't1 and t2 should not be equal');
    });
  });
}
