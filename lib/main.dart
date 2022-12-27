import 'package:come_back_flutter_turkish_course/repositories/messages_repositories.dart';
import 'package:come_back_flutter_turkish_course/repositories/student_repositories.dart';
import 'package:come_back_flutter_turkish_course/repositories/teacher_repositories.dart';
import 'package:come_back_flutter_turkish_course/screens/students_page.dart';
import 'package:come_back_flutter_turkish_course/screens/teacher_page.dart';
import 'package:flutter/material.dart';
import 'screens/messages_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Turkish Course',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Turkish Course'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MesajRepository mesajRepository = new MesajRepository();
  StudentRepository studentRepository = new StudentRepository();
  TeacherRepository teacherRepository = new TeacherRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("Öğrenci İsmi"),
          ),
          drawerIconButton(
              '${mesajRepository.mesajlarListesi.length} Mesajlar',
              MessagesPage(
                mesajRepository: mesajRepository,
              )),
          drawerIconButton(
              '${studentRepository.studentsList.length} Yeni öğrenci',
              StudentsPage(
                studentRepository: studentRepository,
              )),
          drawerIconButton(
              '${teacherRepository.teachers.length} Öğretmen ',
              TeacherPage(
                teacherRepository: teacherRepository,
              ))
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            navigatorTextButton(
              '${mesajRepository.mesajlarListesi.length} Yeni Mesaj',
              MessagesPage(
                mesajRepository: mesajRepository,
              ),
            ),
            navigatorTextButton(
              '${studentRepository.studentsList.length} Öğrenci',
              StudentsPage(
                studentRepository: studentRepository,
              ),
            ),
            navigatorTextButton(
              '${teacherRepository.teachers.length} Öğretmen ',
              TeacherPage(
                teacherRepository: teacherRepository,
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile drawerIconButton(String text, Widget widget) {
    return ListTile(
      title: MaterialButton(
        color: Colors.grey,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget,
              ));
        },
        child: Text(text),
      ),
    );
  }

  MaterialButton navigatorTextButton([String text = '', Widget? widget]) {
    return MaterialButton(
      child: Text(
        text,
        style: TextStyle(color: Colors.blue),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget!,
            ));
      },
    );
  }
}
