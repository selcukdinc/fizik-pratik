// Sitedeki yenilikler, en yenisi en üstte. Kullanıcıya görünen her değişiklik
// (her PR) buraya bir kayıt ekler; yenilikler.test.ts sırayı ve biçimi denetler.
// Maddeler kullanıcının diliyle yazılır: ne değişti, sana ne kazandırır.
// Markdown alt kümesi kullanılabilir (`kod`, **kalın**).

export interface Yenilik {
  // Değişikliği getiren PR'ın numarası; kaydın kimliği de budur
  pr: number;
  // YYYY-AA-GG
  tarih: string;
  baslik: string;
  maddeler: string[];
}

export const YENILIKLER: Yenilik[] = [
  {
    pr: 2,
    tarih: "2026-11-02",
    baslik: "Formüller ders kitabındaki gibi",
    maddeler: [
      "Sorulardaki, şıklardaki ve çözümlerdeki bütün formüller artık ders kitabındaki gibi dizilir: kesirler üst üste, kökler gerçek kök işaretiyle, üsler ve alt indisler yerinde.",
      "Çözüm adımlarındaki ana hesap kendi satırında, ortalanmış olarak gelir; uzun bir işlemi tek satırda takip etmek zorunda kalmazsın.",
      "Vektörler okla ($\\vec{A}$), birim vektörler şapkayla ($\\hat{\\imath}$, $\\hat{\\jmath}$, $\\hat{k}$), açılar derece işaretiyle yazılır; sayılarda ondalık virgül kullanılır.",
      "Telefonda sığmayan uzun bir formül sayfayı bozmaz; yalnız formül yana kaydırılır.",
    ],
  },
  {
    pr: 1,
    tarih: "2026-11-02",
    baslik: "Fizik Pratik açıldı",
    maddeler: [
      "Ders sunularının 1–5. bölümlerindeki (Ölçme ve Birim Sistemleri, Vektörler, Bir Boyutta Hareket, İki Boyutta Hareket, Newton Kanunları) bütün çözümlü örnekler sitede. Çok parçalı örnekler parça parça soruya bölündü; bu sorular **Sunu** etiketi taşır.",
      "Her sunu örneğinin yanında aynı kalıptan ve aynı konulardan yazılmış **Türetilmiş** sorular var. Yalnız sunu örnekleriyle çalışmak istersen kaynak seçiminden \"Sunu örnekleri\"ni seç.",
      "Her sorunun çözümü **adım adım**: önce çözümün fikri, sonra adımlar. Bir sonraki adımı açmadan önce kendin bulmayı deneyebilir, istersen hepsini birden açabilirsin.",
      "Şekilli sorular şekilleriyle geliyor: eğik atışlar, eğik düzlemler, makaralar, asılı lambalar. Şekiller açık ve koyu temaya uyar.",
      "Sunularda gözden kaçmış birkaç hesap hatası çözümlerde düzeltildi ve her birinin açıklamasında not düşüldü.",
      "**Karma test**: seçtiğin ünitelerden sorular karışık sırayla, şıklar karışık yerlerde gelir. Soru sayısını seçebilir, önce çözmediklerinin ve yanlışlarının gelmesini isteyebilirsin.",
      "Konu anlatımları **yakında**; o zamana kadar her ünitenin sorularına Konu anlatımları sayfasından da geçebilirsin.",
    ],
  },
];
