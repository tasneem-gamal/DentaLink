
import 'package:dentalink/features/home/data/models/all_patients/all_patients_response_body.dart';

class LatestPatientsResponseModel {
  List<PatientData>? patientData;

  LatestPatientsResponseModel({
    this.patientData
  });

    factory LatestPatientsResponseModel.fromJson(List<dynamic> json) {
    return LatestPatientsResponseModel(
      patientData: json.map((e) => PatientData.fromJson(e)).toList(),
    );
  }
}

