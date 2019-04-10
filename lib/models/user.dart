import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  static Serializer<User> get serializer => _$userSerializer;

  @BuiltValueField(wireName: "full_name")
  String get fullName;

  @nullable
  @BuiltValueField(wireName: "user_name")
  String get userName;

  int get id;

  @nullable
  String get about;

  @nullable
  @BuiltValueField(wireName: "image_url")
  String get imageUrl;

  int get age;

  Gender get gender;

  String get country;

  @nullable
  @BuiltValueField(wireName: "phone")
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: "updated_at")
  String get updatedAt;

  @nullable
  @BuiltValueField(wireName: "created_at")
  String get createdAt;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;
}

class Gender extends EnumClass {
  static Serializer<Gender> get serializer => _$genderSerializer;

  static const Gender M = _$M;
  static const Gender F = _$F;
  static const Gender OTHER = _$OTHER;
  static const Gender NOT_DEFINED = _$NOT_DEFINED;

  const Gender._(String name) : super(name);

  static BuiltSet<Gender> get values => _$vlu;

  static Gender valueOf(String name) => _$vluOf(name);
}
