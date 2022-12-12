import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Mesajlar Sayfası"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            bool benMiyim = true;
            return Align(
              alignment: Alignment.centerRight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                child: Text('Mesaj'),
              ),
            );
          },
        ));
  }
}
