class kpssOzetler {
  int id;
  String Adi;
  String Icerik;

  kpssOzetler.WithId(int id, String Adi, String Icerik) {
    this.id = id;
    this.Adi = Adi;
    this.Icerik = Icerik;
  }

  kpssOzetler(String Adi, String Icerik) {
    this.id = id;
    this.Adi = Adi;
    this.Icerik = Icerik;
  }
}

List<kpssOzetler> turkceOzetlerData = [
  kpssOzetler.WithId(1, "Sözcükte Anlam",
      "Sözcükte anlam özellikleri de kendi içinde dallara ayrılır. Bunlar; Gerçek anlam, yan anlam, mecaz anlam ve terim anlamıdır. Sözcükler arası anlam ilişkileri de kendi içinde dallara ayrılır"),
  kpssOzetler.WithId(2, "Ata Sözleri ve Deyimler",
      " Örn: Acele ile menzil alınmaz Atasözleri, kalıplaşmış sözlerdir. Kullanılan sözcükler yerine ne eş anlamlıları ne de benzerleri kullanılamazlar. Geçmişten günümüze aktarıldığı gibi aktarılırlar. “Akılsız başın kahrını ayaklar çeker.” Atasözünde kullanılan “baş” kelimesi yerine “kafa” kullanılamaz."),
  kpssOzetler.WithId(3, "Cümlede Anlam",
      "Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır.Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır. Bir olayın veya durumun gerçekleşmesinin, başka bir olayın veya duruma bağlı olduğunu belirten cümlelerdir. Bu tür cümlelerde birinci bölüm (yan yargı) koşul, ikinci bölüm ise o koşula bağlı olarak ortaya çıkan sonuçtur (temel yargı). Türkçede koşul anlamı asıl olarak “-se” şart ekiyle sağlanır.")
];

List<kpssOzetler> matematikOzetlerData = [
  kpssOzetler.WithId(1, "Ondalıklı Sayılar", "1/2"),
  kpssOzetler.WithId(2, "Matematik", "bu bir matematik deneme yazısı")
];
