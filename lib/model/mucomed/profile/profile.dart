import 'package:hive/hive.dart';

part 'profile.g.dart';

@HiveType(typeId: 0, adapterName: "ProfileAdapter")
class Profile {
  @HiveField(0)
  String firstName = "";

  @HiveField(1)
  String secondName = "";

  @HiveField(2)
  int age = 0;

  @HiveField(3)
  String creonIntake = "4000";
}
