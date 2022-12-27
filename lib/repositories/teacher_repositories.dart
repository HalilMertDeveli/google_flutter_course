class TeacherRepository {
  List<Teacher> teachers = [
    Teacher('Yusuf', 'Pandır', 'Erkek', 38),
    Teacher('Mücella', 'Özbay Karakuş', 'Kadın', 40)
  ];
}

class Teacher {
  final String name;
  final String lastName;
  final String gender;

  final int yas;

  Teacher(this.name, this.lastName, this.gender, this.yas);
}
