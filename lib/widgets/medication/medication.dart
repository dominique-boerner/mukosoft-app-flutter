import 'package:fhir/r4/r4.dart' as Fhir;
import 'package:flutter/material.dart';
import 'package:mucomed_flutter/services/medication_service.dart';
import 'package:mucomed_flutter/style.dart';
import 'package:mucomed_flutter/widgets/medication/medication_icon.dart';

/// Medication
///
/// Represents a widget for showing medication type and name.
class Medication extends StatelessWidget {
  const Medication(this.medication, {Key? key}) : super(key: key);

  final Fhir.Medication medication;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: Style.edgeInsetsAll,
      elevation: Style.elevationMD,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MedicationIcon(medication),
          Text(
            MedicationService().getMedicationCoding(medication),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
            textScaleFactor: Style.fontSizeXL,
          ),
          Container(
            margin: Style.edgeInsetsAll,
            decoration: BoxDecoration(
              borderRadius: Style.borderRadiusDefault,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
        ],
      ),
    );
  }
}
