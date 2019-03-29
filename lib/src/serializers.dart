import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'category.dart';
import 'todo.dart';

part 'serializers.g.dart';

@SerializersFor([
  Todo,
  Category,
])
final Serializers serializers =  (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();;
