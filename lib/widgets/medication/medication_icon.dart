import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mucomed_flutter/services/icon_loader_service.dart';
import 'package:mucomed_flutter/services/medication_service.dart';
import 'package:fhir/r4/r4.dart';

import '../../style.dart';

class MedicationIcon extends StatelessWidget {
  const MedicationIcon(this.medication, {Key? key}) : super(key: key);

  final Medication medication;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Style.edgeInsetsAll,
      child: Padding(
        padding: Style.edgeInsetsAll,
        child: IconLoadService.loadMedicationIcon(
          icon: MedicationService.getMedicationFormIcon(
              medication.form ?? MedicationService.getDefaultMedicationForm()),
        ),
      ),
    );
  }
}
