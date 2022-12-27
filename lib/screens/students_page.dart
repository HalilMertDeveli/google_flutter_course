import 'package:come_back_flutter_turkish_course/repositories/student_repositories.dart';
import 'package:flutter/material.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key, required this.studentRepository});
  final StudentRepository studentRepository;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenciler Sayfasi'),
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
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                    child: Text('10 Öğrenci')),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                        title: Text('Ayse'),
                        leading: Text('🙅🏼'), //🙅🏼🧔🏽
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border)),
                      ),
                  separatorBuilder: (context, index) => Divider(
                        height: 10,
                      ),
                  itemCount: 20),
            )
          ],
        ),
      ),
    );
  }
}
