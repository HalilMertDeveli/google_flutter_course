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
          drawerIconButton('Mesajlar', MessagesPage()),
          drawerIconButton('Öğrenciler Sayfası', StudentsPage()),
          drawerIconButton('Öğretmenler Sayfası', TeacherPage())
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
            navigatorTextButton('10 Yeni Mesaj', MessagesPage()),
            navigatorTextButton('10 Öğrenci', StudentsPage()),
            navigatorTextButton('10 Öğretmen ', TeacherPage())
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
