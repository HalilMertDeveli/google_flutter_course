import 'package:come_back_flutter_turkish_course/repositories/messages_repositories.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  final MesajRepository mesajRepository;
  const MessagesPage({super.key, required this.mesajRepository});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Mesajlar Sayfası"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: false,
              itemCount: widget.mesajRepository.mesajlarListesi.length,
              itemBuilder: (context, index) {
                return MesajGorunumu(
                  widget.mesajRepository.mesajlarListesi[
                      widget.mesajRepository.mesajlarListesi.length -
                          index -
                          1],
                );
              },
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Gönder'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MesajGorunumu extends StatelessWidget {
  final Mesaj mesajlarListesi;
  const MesajGorunumu(
    this.mesajlarListesi, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: mesajlarListesi.gonderen == 'Ali'
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey, width: 2),
            color: Colors.orange.shade200,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(mesajlarListesi.message),
          ),
        ),
      ),
    );
  }
}
