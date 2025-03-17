
class AllPatientsResponseBody {
  List<PatientData>? patientData;
  
  AllPatientsResponseBody({
    this.patientData
  });

  factory AllPatientsResponseBody.fromJson(Map<String, dynamic> json) {
    return AllPatientsResponseBody(
      patientData:
          (json as List?)?.map((e) => PatientData.fromJson(e)).toList(),
    );
  }

}

class PatientData {
  final String? id;
  final String? name;
  final int? age;
  final String? gander;
  final String? phone;
  final String? title;
  final String? category;
  final String? location;
  final String? description;
  final List<String>? images;
  final CreatedBy? createdBy;
  final String? createdAt;
  final String? updatedAt;
  final int? v;
  final bool? isFavPatient;

  PatientData(
      {required this.id,
      required this.name,
      required this.age,
      required this.gander,
      required this.phone,
      required this.title,
      required this.category,
      required this.location,
      required this.description,
      required this.images,
      required this.createdBy,
      required this.createdAt,
      required this.updatedAt,
      required this.v,
      required this.isFavPatient});

      factory PatientData.fromJson(Map<String, dynamic> json){
        return PatientData(
          id: json['_id'], 
          name: json['name'], 
          age: json['age'], 
          gander: json['gender'], 
          phone: json['phone'], 
          title: json['title'], 
          category: json['category'], 
          location: json['location'], 
          description: json['description'], 
          images: (json['images'] as List?)?.map((e) => e.toString()).toList(), 
          createdBy: json['createdBy'] != null ? CreatedBy.fromJson(json['createdBy']) : null,
          createdAt: json['createdAt'], 
          updatedAt: json['updatedAt'], 
          v: json['__v'], 
          isFavPatient: json['isFavPatient']
        );
      } 
}

class CreatedBy{
  final String? id;
  final String? name;
  final String? email;

  CreatedBy({required this.id, required this.name, required this.email});

  factory CreatedBy.fromJson(Map<String, dynamic> json){
    return CreatedBy(
      id: json['_id'],  
      name: json['name'],
      email: json['email'],
    );
  }


}