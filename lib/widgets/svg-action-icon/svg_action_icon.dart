import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgActionIcon extends StatelessWidget {
  const SvgActionIcon({
    Key? key,
    required this.svg,
    // required this.iconUrl,
    required this.onTap,
  }) : super(key: key);

  // final String iconUrl;
  final SvgPicture svg;
  final VoidCallback onTap;
  // Future action = () => {};


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: svg,
    );
  }
}