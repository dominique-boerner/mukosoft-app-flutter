import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:fhir/r4.dart';
import 'package:mucomed_flutter/catalog/medication_icon_catalog.dart';

class MedicationService {
  static MedicationService? _instance;
  late HiveInterface hive;

  MedicationService() {
    // connection with hive
  }

  List<MedicationRequest> getAllMedications() {
    return <MedicationRequest>[];
  }

  String getMedicationCoding(Medication medication) {
    return medication.code?.coding?.first.display ?? "";
  }

  static String getMedicationFormIcon(CodeableConcept form) {
    Map<String, String> assetList = {
      MedicationService.getFormPill(): MedicationIconCatalog.pill,
      MedicationService.getFormBrause(): MedicationIconCatalog.fizzyPill,
      MedicationService.getFormInhale(): MedicationIconCatalog.inhaler,
    };
    String? formDisplay = form.coding?.first.display;

    return assetList[formDisplay] ?? "assets/icons/medication/pill.svg";
  }

  // MedicationRequest getMedicationRequest(DateTime date) {
  //   return MedicationRequest();
  // }

  void createMedication(Medication medication) {
    /// Name, Dosierung, Form, Beschreibung, EinnahmeZeiten (tägliche Einnahme, Einnahme aller X Wochen für X Wochen)
    ///
    /// Name -> Textfeld
    ///
    /// Dosierung -> Slider / textfeld (mg, mikrogramm, etc.)
    /// Form -> Picker (eigen) (siehe alte app)
    ///
    /// Zeit -> Ich nehme meine Medikamente... -> täglich ein, wöchentlich ein, monatlich ein, aller X Wochen für X Wochen, im wechsel mit
    ///
    /// Beschreibung -> Chip (eine halbe stunde vor dem essen, zum essen, nach einnahme zähne putzen, eigene)
  }

  void deleteMedication(int id) {}

  void updateMedication(int id, Medication medication) {}

  void updateMedicationState() {
    // get * from hive
  }

  static List<Medication> getMedications() {
    return <Medication>[];
  }

  static List<String> getMedicationNames() {
    List<String> medicationNames = <String>[];

    for (var medication in MedicationService.getMedications()) {
      // medicationNames.add(medication.;
    }

    return medicationNames;
  }

  Medication getMedicationByName(Identifier identifier) {
    return MedicationService.getMedications().firstWhere((medication) => medication.identifier == identifier, orElse: () {
      return Medication();
    });
  }

  /// Returns a default concept of a medicationForm.
  static CodeableConcept getDefaultMedicationForm() {
    return CodeableConcept(coding: [
      Coding(
        display: MedicationService.getFormPill(),
      ),
    ]);
  }

  static String getFormPill() {
    return "pill";
  }

  static String getFormInhale() {
    return "inhale";
  }

  static String getFormBrause() {
    return "brause";
  }
}
