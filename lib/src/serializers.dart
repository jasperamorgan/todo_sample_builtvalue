import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'category.dart';
import 'todo.dart';

part 'serializers.g.dart';

@SerializersFor([
  Todo,
  Category,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Todo)]),
          () => new ListBuilder<Todo>())
      ..addPlugin(new StandardJsonPlugin()))
    .build();
