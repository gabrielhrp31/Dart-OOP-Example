abstract class LivinBeing {
  void lifeCycle();
}

class People implements LivinBeing{
  String firstName, lastName;
  int age;

  People(this.firstName, this.lastName, this.age);

  @override
  String toString() {
    super.toString();
    return "Name: ${this.firstName} ${this.lastName}\n"
        "Age: ${this.age}\n";
  }
  
  @override
  void lifeCycle(){
    print("Uma pessoa deve nascer, viver, reporoduzir e morrer"); 
  }
}

class Animal implements LivinBeing{
  String gender, family, nickname;

  Animal(this.gender, this.family, [this.nickname]);

  @override
  String toString() {
    super.toString();
    return "Gender: ${this.gender}\n"
        "Family: ${this.family}\n"
        "Nickname: ${this.nickname}\n";
  }
  
  @override
  void lifeCycle(){
    print("Um animal deve nascer, viver, reporoduzir e morrer"); 
  }
}

class Employee extends People {
  double salary;

  Employee(String firstName, String lastName, int age, this.salary)
      : super(firstName, lastName, age);

  @override
  String toString() {
    super.toString();
    return "Name: ${this.firstName} ${this.lastName}\n"
        "Age: ${this.age}\n"
        "Salary: ${this.salary}\n";
  }
}

class Programmer extends People {
  String level;

  Programmer(String firstName, String lastName, int age, this.level)
      : super(firstName, lastName, age);

  @override
  String toString() {
    super.toString();
    return "Name: ${this.firstName} ${this.lastName}\n"
        "Age: ${this.age}\n"
        "Level: ${this.level}\n";
  }
}

void main() {
  People people = People("João", "das Couves", 25);
  print(people.toString());

  Programmer programmer = Programmer("João", "das Couves", 25, "Pleno");
  print(programmer.toString());

  Employee employee = Employee("José", "das Couves", 20, 250);
  print(employee.toString());
  
  Animal animal = Animal("Felis", "Felidae", "Gato");
  print(animal.toString());
  
  people.lifeCycle();
  
  animal.lifeCycle();
}

