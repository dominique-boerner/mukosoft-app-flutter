// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileAdapter extends TypeAdapter<Profile> {
  @override
  final int typeId = 0;

  @override
  Profile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Profile()
      ..firstName = fields[0] as String
      ..secondName = fields[1] as String
      ..age = fields[2] as int
      ..creonIntake = fields[3] as String;
  }

  @override
  void write(BinaryWriter writer, Profile obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.secondName)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.creonIntake);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProfileAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
