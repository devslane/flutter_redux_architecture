import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_demo/models/user.dart';

const userList = FullType(BuiltList, [FullType(User)]);

// To deserialize a list of user objects use serializers.deserialize(data, specifiedType: userList);
