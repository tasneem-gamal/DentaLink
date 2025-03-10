class AddPatientRequestBody {
  final String name;
  final int age;
  final String gender;
  final String phone;
  final String title;
  final String category;
  final String location;
  final String description;
  final List<String> images;

  AddPatientRequestBody({
    required this.name, 
    required this.age, 
    required this.gender, 
    required this.phone, 
    required this.title, 
    required this.category, 
    required this.location, 
    required this.description, 
    required this.images}
  );

  Map<String, dynamic> toJson(){
    return {
      'name' : name,
      'age' : age,
      'gender' : gender,
      'phone' : phone,
      'title' : title,
      'category' : category,
      'location' : location,
      'description' : description,
      'images' : images
    };
  }

}