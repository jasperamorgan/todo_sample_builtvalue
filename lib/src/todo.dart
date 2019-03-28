import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_sample_builtvalue/src/category.dart';

part 'todo.g.dart';

/// A Todo item that represents a task to be done.
///
/// Instantiate as follows.
/// ```
/// var todo = Todo((b) => b
///    ..id = 1
///    ..title = 'Do something'
///    ..due = DateTime.now()
///    ..category = category);
/// ```
///
abstract class Todo implements Built<Todo, TodoBuilder> {
  static Serializer<Todo> get serializer => _$todoSerializer;

  // A unique identifier for a Todo_
  int get id;
  // The title given to a Todo_.
  String get title;
  // The date when the Todo_ is due.
  DateTime get due;
  // The Category to which a Todo_ is assigned.
  Category get category;
  // Further description of what should be done for this Todo_.
  @nullable
  String get description;

  Todo._();
  factory Todo([updates(TodoBuilder b)]) = _$Todo;
}
