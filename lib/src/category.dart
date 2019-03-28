import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category.g.dart';

/// A category for grouping similar items together.
///
/// Instantiate as follows:
/// ```
/// var category = Category((b) => b
///    ..id = 1
///    ..name = 'Work');
/// ```
///
abstract class Category implements Built<Category, CategoryBuilder> {
  static Serializer<Category> get serializer => _$categorySerializer;

  //A unique identifier for a Category.
  int get id;
  //The name of a Category.
  String get name;

  Category._();
  factory Category([updates(CategoryBuilder b)]) = _$Category;
}
