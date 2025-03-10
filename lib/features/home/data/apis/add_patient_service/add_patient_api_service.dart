import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/apis/add_patient_service/add_patient_api_const.dart';
import 'package:dentalink/features/home/data/models/add_patient/add_patient_request_body.dart';
import 'package:dentalink/features/home/data/models/add_patient/add_patient_response_body.dart';
import 'package:dio/dio.dart';

class AddPatientApiService {
  late Dio dio;
  AddPatientApiService(){
    dio = DioFactory.getDio();
  }

  Future<AddPatientResponseBody> addPatient(AddPatientRequestBody addPatientRequestBody)async {
    final response = await dio.post(
      '${ApiConstants.baseUrl}${AddPatientApiConst.addpatient}',
      data: addPatientRequestBody.toJson()
    );
    return AddPatientResponseBody.fromJson(response.data);
  }
}