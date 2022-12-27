import 'package:come_back_flutter_turkish_course/repositories/teacher_repositories.dart';
import 'package:flutter/material.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage({super.key, required this.teacherRepository});
  final TeacherRepository teacherRepository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Öğrenciler Sayfası'),
        ),
        body: Align(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              PhysicalModel(
                color: Colors.white,
                elevation: 10,
                child: Align(
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      child: Text('10 Öğretmen')),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Ayse'),
                    leading: Text('🙅🏼'), //🙅🏼🧔🏽
                  ),
                  separatorBuilder: (context, index) => Divider(
                    height: 10,
                  ),
                  itemCount: 20,
                ),
              )
            ],
          ),
        ));
  }
}
