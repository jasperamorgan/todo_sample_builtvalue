import 'package:built_value/serializer.dart';

import 'category.dart';
import 'todo.dart';

part 'serializers.g.dart';

@SerializersFor([
  Todo,
  Category,
])
final Serializers serializers = _$serializers;
