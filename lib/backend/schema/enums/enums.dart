import 'package:collection/collection.dart';

enum UserRole {
  admin,
  user,
  guest,
}

enum Gender {
  male,
  female,
  preferNotToSay,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (UserRole):
      return UserRole.values.deserialize(value) as T?;
    case (Gender):
      return Gender.values.deserialize(value) as T?;
    default:
      return null;
  }
}
