import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mucomed_flutter/style.dart';

class NeumorphicIconButton extends StatelessWidget {
  const NeumorphicIconButton(this.text, this.icon, this._onTap, {Key? key}) : super(key: key);

  final NeumorphicStyle buttonNeuStyle = const NeumorphicStyle(depth: 4, intensity: 1);

  final String text;
  final IconData icon;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      style: buttonNeuStyle,
      onPressed: _onTap,
      child: Column(
        children: [
          Icon(icon, size: Style.iconSizeButton),
          Text(
            text,
            textScaleFactor: Style.fontSizeMD,
          ),
        ],
      ),
    );
  }
}
