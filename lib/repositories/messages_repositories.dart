class MesajRepository {
  List<Mesaj> mesajlarListesi = [
    Mesaj('Nerdesin', 'Ahmet', DateTime.now().subtract(Duration(minutes: 4))),
    Mesaj('Evdeyim aq Sen nerdesin', 'Yusuf',
        DateTime.now().subtract(Duration(minutes: 3))),
    Mesaj('Yurda geçiyorum ben ', 'Ahmet',
        DateTime.now().subtract(Duration(minutes: 2))),
    Mesaj('Ne yaparsan yap', 'Yusuf',
        DateTime.now().subtract(Duration(minutes: 1)))
  ];
}

class Mesaj {
  String message;
  String gonderen;
  DateTime neZaman;
  Mesaj(this.message, this.gonderen, this.neZaman);
}
