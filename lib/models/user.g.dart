// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Gender _$M = const Gender._('M');
const Gender _$F = const Gender._('F');
const Gender _$OTHER = const Gender._('OTHER');
const Gender _$NOT_DEFINED = const Gender._('NOT_DEFINED');

Gender _$vluOf(String name) {
  switch (name) {
    case 'M':
      return _$M;
    case 'F':
      return _$F;
    case 'OTHER':
      return _$OTHER;
    case 'NOT_DEFINED':
      return _$NOT_DEFINED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Gender> _$vlu = new BuiltSet<Gender>(const <Gender>[
  _$M,
  _$F,
  _$OTHER,
  _$NOT_DEFINED,
]);

Serializer<User> _$userSerializer = new _$UserSerializer();
Serializer<Gender> _$genderSerializer = new _$GenderSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'full_name',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(Gender)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
    ];
    if (object.userName != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(object.userName,
            specifiedType: const FullType(String)));
    }
    if (object.about != null) {
      result
        ..add('about')
        ..add(serializers.serialize(object.about,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(Gender)) as Gender;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GenderSerializer implements PrimitiveSerializer<Gender> {
  @override
  final Iterable<Type> types = const <Type>[Gender];
  @override
  final String wireName = 'Gender';

  @override
  Object serialize(Serializers serializers, Gender object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Gender deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gender.valueOf(serialized as String);
}

class _$User extends User {
  @override
  final String fullName;
  @override
  final String userName;
  @override
  final int id;
  @override
  final String about;
  @override
  final String imageUrl;
  @override
  final int age;
  @override
  final Gender gender;
  @override
  final String country;
  @override
  final String phoneNumber;
  @override
  final String updatedAt;
  @override
  final String createdAt;

  factory _$User([void updates(UserBuilder b)]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.fullName,
      this.userName,
      this.id,
      this.about,
      this.imageUrl,
      this.age,
      this.gender,
      this.country,
      this.phoneNumber,
      this.updatedAt,
      this.createdAt})
      : super._() {
    if (fullName == null) {
      throw new BuiltValueNullFieldError('User', 'fullName');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
    if (age == null) {
      throw new BuiltValueNullFieldError('User', 'age');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('User', 'gender');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('User', 'country');
    }
  }

  @override
  User rebuild(void updates(UserBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        fullName == other.fullName &&
        userName == other.userName &&
        id == other.id &&
        about == other.about &&
        imageUrl == other.imageUrl &&
        age == other.age &&
        gender == other.gender &&
        country == other.country &&
        phoneNumber == other.phoneNumber &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, fullName.hashCode),
                                            userName.hashCode),
                                        id.hashCode),
                                    about.hashCode),
                                imageUrl.hashCode),
                            age.hashCode),
                        gender.hashCode),
                    country.hashCode),
                phoneNumber.hashCode),
            updatedAt.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('fullName', fullName)
          ..add('userName', userName)
          ..add('id', id)
          ..add('about', about)
          ..add('imageUrl', imageUrl)
          ..add('age', age)
          ..add('gender', gender)
          ..add('country', country)
          ..add('phoneNumber', phoneNumber)
          ..add('updatedAt', updatedAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _about;
  String get about => _$this._about;
  set about(String about) => _$this._about = about;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  Gender _gender;
  Gender get gender => _$this._gender;
  set gender(Gender gender) => _$this._gender = gender;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _fullName = _$v.fullName;
      _userName = _$v.userName;
      _id = _$v.id;
      _about = _$v.about;
      _imageUrl = _$v.imageUrl;
      _age = _$v.age;
      _gender = _$v.gender;
      _country = _$v.country;
      _phoneNumber = _$v.phoneNumber;
      _updatedAt = _$v.updatedAt;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void updates(UserBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            fullName: fullName,
            userName: userName,
            id: id,
            about: about,
            imageUrl: imageUrl,
            age: age,
            gender: gender,
            country: country,
            phoneNumber: phoneNumber,
            updatedAt: updatedAt,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
