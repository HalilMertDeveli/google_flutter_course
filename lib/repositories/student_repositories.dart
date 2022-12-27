class StudentRepository {
  List<Student> studentsList = [
    Student('Ahmet', 'Yıldız', 22, 'Erkek gibi'),
    Student('Yusuf', 'Erduran', 22, 'Kadın'),
    Student('Halil Ibrahim', 'Kutlu', 19, 'Erkek')
  ];
}

class Student {
  final String name;
  final String lastName;
  final int yas;
  final String cinsiyet;

  Student(this.name, this.lastName, this.yas, this.cinsiyet);
}
