import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/all_patients/all_patients_response_body.dart';
import 'package:dentalink/features/home/data/repo/latest_patients/latest_patients_repo.dart';

part 'latest_patients_state.dart';

class LatestPatientsCubit extends Cubit<LatestPatientsState> {
  LatestPatientsCubit(this.latestPatientsRepo) : super(LatestPatientsInitial());

  final LatestPatientsRepo latestPatientsRepo;
  List<PatientData> patientDataList = [];

  void getLatestPatients() async{
    emit(LatestPatientsLoading());
    final response = await latestPatientsRepo.getLatestPatients();
    response.fold(
      (failure){
        emit(LatestPatientsFailure(failure.errMessage));
      },
      (allPatientsResponse){
        patientDataList = allPatientsResponse.patientData!;
        emit(LatestPatientsSuccess(patientDataList));
      }
    );
  }
}
