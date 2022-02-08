import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mucomed_flutter/widgets/neumorphic_icon_button.dart';

class BloodPressureScreen extends StatelessWidget {
  const BloodPressureScreen({Key? key}) : super(key: key);

  final Widget placeholder = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        leading: NeumorphicButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: const NeumorphicStyle(depth: 4, intensity: 1),
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.teal[700],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Blutdruck",
              textAlign: TextAlign.center,
              textScaleFactor: 1.8,
            ),
            Neumorphic(
              style: const NeumorphicStyle(depth: -4, intensity: 1),
              child: const TextField(
                cursorColor: Colors.teal,
                style: TextStyle(decoration: TextDecoration.none),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    EvaIcons.heart,
                    color: Colors.teal,
                  ),
                  // needs to set a padding, because text is not centered without
                  contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
              ),
            ),
            placeholder,
            Neumorphic(
              style: const NeumorphicStyle(depth: -4, intensity: 1),
              child: const TextField(
                cursorColor: Colors.teal,
                style: TextStyle(decoration: TextDecoration.none),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    EvaIcons.heartOutline,
                    color: Colors.teal,
                  ),
                  // needs to set a padding, because text is not centered without
                  contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
              ),
            ),
            placeholder,
            Neumorphic(
              style: const NeumorphicStyle(depth: -4, intensity: 1),
              child: const TextField(
                cursorColor: Colors.teal,
                style: TextStyle(decoration: TextDecoration.none),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    EvaIcons.activity,
                    color: Colors.teal,
                  ),
                  // needs to set a padding, because text is not centered without
                  contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
              ),
            ),
            placeholder,
            NeumorphicIconButton("Speichern", Icons.save_rounded, () {})
          ],
        ),
      ),
    );
  }
}
