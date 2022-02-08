/// Vorname & Name
/// E-Mail
/// Telefonnummer
/// Hausarzt / Facharzt -> My-Doc
/// Vitaldaten
/// Verlauf
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hive/hive.dart';
import 'package:mucomed_flutter/model/mucomed/profile/profile.dart';
import 'package:mucomed_flutter/style.dart';
import 'package:mucomed_flutter/widgets/app-bar/app_bar_title.dart';
import 'package:mucomed_flutter/widgets/neumorphic_icon_button.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  Profile profile = Profile();
  late Box profileBox;

  _ProfilState() {
    initProfileHive();
  }

  void initProfileHive() async {
    if (!Hive.isAdapterRegistered(ProfileAdapter().typeId)) {
      Hive.registerAdapter(ProfileAdapter());
    }

    profileBox = await Hive.openBox("profile");

    if (profileBox.values.isEmpty) {
      Profile profile = Profile();

      profileBox.add(profile);
      setState(() => {profile = profile});
    } else {
      print(profileBox.values);
      setState(() => {profile = profileBox.getAt(0)});
    }
  }

  void changeCreonIntake(String intake) {
    Profile newProfile = profile;
    newProfile.creonIntake = intake;
    updateHive(newProfile);
  }

  void updateHive(Profile profile) {
    profileBox.deleteAt(0);
    profileBox.add(profile);
    setState(() => {profile = profile});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle("PROFIL"),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: Style.edgeInsetsY,
        child: Column(
          children: [
            TextField(
              onChanged: (data) => changeCreonIntake(data),
              decoration: InputDecoration(label: Text(profile.creonIntake)),
            ),
            NeumorphicIconButton("Blutdruck", Icons.bloodtype_rounded, () {
              Navigator.pushNamed(
                context,
                "/blutdruck",
              );
            }),
          ],
        ),
      ),
    );
  }
}
