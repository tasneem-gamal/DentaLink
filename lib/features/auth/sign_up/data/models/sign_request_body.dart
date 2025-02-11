class SignRequestBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String academicYear;
  final int universityID;
  final String idPicture;
  final String role;

  SignRequestBody({
    required this.role, 
    required this.name, 
    required this.email, 
    required this.password, 
    required this.phone, 
    required this.academicYear, 
    required this.universityID, 
    required this.idPicture
  });

  Map<String, dynamic> toJson(){
    return {
      'name' : name,
      'email' : email,
      'password' : password,
      'phone' : phone,
      'academicYear' : academicYear,
      'universityID' : universityID,
      'idPicture' : idPicture,
      'role' : role
    };
  }
}