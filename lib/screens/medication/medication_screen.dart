import 'package:flutter/material.dart';
import 'package:mucomed_flutter/services/medication_service.dart';
import 'package:mucomed_flutter/widgets/horizontal_calendar.dart';
import 'package:mucomed_flutter/widgets/medication/medication.dart';
import 'package:fhir/r4/r4.dart' as Fhir;
import 'package:mucomed_flutter/widgets/time-selector/time_selector.dart';

Fhir.Medication medication1 = Fhir.Medication(
  code: Fhir.CodeableConcept(coding: [Fhir.Coding(display: "Kreon")]),
  form: Fhir.CodeableConcept(
    coding: [
      Fhir.Coding(display: MedicationService.getFormPill()),
    ],
  ),
);

Fhir.Medication medication2 = Fhir.Medication(
  code: Fhir.CodeableConcept(coding: [Fhir.Coding(display: "ACC")]),
  form: Fhir.CodeableConcept(
    coding: [
      Fhir.Coding(display: MedicationService.getFormBrause()),
    ],
  ),
);

Fhir.Medication medication3 = Fhir.Medication(
  code: Fhir.CodeableConcept(coding: [Fhir.Coding(display: "Salbutamol")]),
  form: Fhir.CodeableConcept(
    coding: [
      Fhir.Coding(display: MedicationService.getFormInhale()),
    ],
  ),
);

class MedicationScreen extends StatefulWidget {
  const MedicationScreen({Key? key}) : super(key: key);

  @override
  _MedicationScreen createState() => _MedicationScreen();
}

class _MedicationScreen extends State<MedicationScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          HorizontalCalendar((date) {
            setState(() {
              selectedDate = date;
            });
          }),
          TimeSelector([]),
          Medication(medication1),
          Medication(medication2),
          Medication(medication3),
          Text(selectedDate.toIso8601String())
        ],
      ),
    );
  }
}
