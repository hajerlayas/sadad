class Employee {

  int id ;
  String name;
  int age;
  int salary;
  String profliePicture;

  Employee({this.id , this.name, this.salary, this.age, this.profliePicture});

  Employee.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['employee_name'];
    salary = json['employee_salary'];
    age = json['employee_age'];
    profliePicture = json['profile_image'];
  }

}