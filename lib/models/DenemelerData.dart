class kpssDenemeler {
  int id;
  String Adi;
  String Icerik;

  kpssDenemeler.WithId(int id, String Adi, String Icerik) {
    this.id = id;
    this.Adi = Adi;
    this.Icerik = Icerik;
  }

  kpssDenemeler(String Adi, String Icerik) {
    this.id = id;
    this.Adi = Adi;
    this.Icerik = Icerik;
  }
}

List<kpssDenemeler> turkceDenemelerData = [
  kpssDenemeler.WithId(1, "Deneme 1", "İçerikler"),
  kpssDenemeler.WithId(2, "Deneme 2", "Anıl bu işi hallet")
];

List<kpssDenemeler> matematikDenemelerData = [
  kpssDenemeler.WithId(1, "Ondalıklı Sayılar", "1/2"),
  kpssDenemeler.WithId(2, "Matematik", "bu bir matematik deneme yazısı")
];
