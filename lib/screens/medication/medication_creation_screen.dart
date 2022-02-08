import 'package:field_suggestion/field_suggestion.dart';
import 'package:flutter/material.dart';
import 'package:mucomed_flutter/services/medication_service.dart';
import 'package:fhir/r4.dart';

/// MedicationCreationScreen
///
/// This screen is used for creating medications.
class MedicationCreationScreen extends StatefulWidget {
  const MedicationCreationScreen({Key? key}) : super(key: key);

  @override
  _MedicationCreationScreen createState() => _MedicationCreationScreen();
}

class _MedicationCreationScreen extends State<MedicationCreationScreen> {
  Medication medication = Medication(resourceType: R4ResourceType.Medication);

  int step = 0;
  List<Step> stepScreens = <Step>[
    Step(
      title: Text("Medikament beschreiben"),
      content: FieldSuggestion(
        suggestionList: MedicationService.getMedicationNames(),
        textController: new TextEditingController(),
        fieldType: TextInputType.text,
        fieldDecoration: const InputDecoration(border: UnderlineInputBorder()),
      ),
    ),
    Step(title: Text("Weitere Informationen"), content: Text("test1")),
    Step(title: Text("Zeiten"), content: Text("test1")),
  ];

  Color get leftChevColor {
    return (step == 0) ? Colors.white : Theme.of(context).primaryColor;
  }

  Color get rightChevColor {
    return (step == stepScreens.length - 1) ? Colors.white : Theme.of(context).primaryColor;
  }

  void nextStep() {
    if (step < stepScreens.length - 1) {
      setState(() {
        step = step + 1;
      });
    }
  }

  void prevStep() {
    if (step > 0) {
      setState(() {
        step = step - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stepper(
        steps: stepScreens,
        onStepContinue: nextStep,
        onStepCancel: prevStep,
        currentStep: step,
      ),
    );
  }
}
