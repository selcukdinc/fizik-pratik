// 1. bölüm: Ölçme ve birim sistemleri
// Sunu örnekleri metinleriyle; şıklar ve adım adım çözümler bizim.
// Sunudaki düzeltme: Örnek 2'de yoğunluk 5,59 × 10⁻³ kg/m³ yazılmış; doğrusu 5,59 × 10³ kg/m³.

import { sunu, turet, type Soru } from "./tipler.ts";

const U = 1;
const K = "u1";

export const unite1: Soru[] = [
  ...sunu(U, K, [
    {
      id: "u1-s01", ornek: 1, kavram: "u1-boyut", zorluk: 1,
      soru: "v = v₀ + at ifadesinin boyutunun doğruluğunu gösteriniz. Buna göre at teriminin boyutu nedir?",
      secenekler: ["[L/T]; hızın boyutuyla aynı olduğu için denklem tutarlıdır", "[L/T²]; denklem tutarsızdır", "[L]; denklem tutarsızdır", "[L·T]; denklem tutarsızdır", "[L/T]; ama v₀ boyutsuz olduğu için denklem tutarsızdır"],
      dogru: 0,
      aciklama: "Bir eşitliğin bütün terimleri aynı boyutta olmalıdır; toplanan terimler de birbiriyle aynı boyutta olmalıdır. Her terimin boyutunu temel boyutlar (L, T) cinsinden yaz ve karşılaştır.",
      adimlar: [
        "**Sol taraf:** v hızdır: [v] = L/T.",
        "**İlk terim:** v₀ da hızdır: [v₀] = L/T.",
        "**İkinci terim:** ivme [a] = L/T², zaman [t] = T. Çarpım: [at] = (L/T²) · T = L/T.",
        "**Karşılaştır:** L/T = L/T + L/T. Üç terim de hız boyutunda, eşitlik boyutça doğrudur.",
      ],
    },
    {
      id: "u1-s02", ornek: 2, kavram: "u1-yogunluk",
      soru: "Katı bir kübün kütlesi 856 g ve her bir kenarı 5,35 cm uzunluğa sahiptir. SI birim sisteminde kübün yoğunluğunu bulunuz.",
      secenekler: ["≈ 5,59 × 10³ kg/m³", "≈ 5,59 × 10⁻³ kg/m³", "≈ 5,59 kg/m³", "≈ 160 kg/m³", "≈ 5,59 × 10⁶ kg/m³"],
      dogru: 0,
      aciklama: "Önce kütleyi kg'a, kenarı m'ye çevir; hacmi kenarın küpüyle bul; sonra ρ = m / V. Not: sunu sonucu 5,59 × 10⁻³ kg/m³ yazmış; 0,856 / (1,53 × 10⁻⁴) = 5,59 × 10³ kg/m³'tür (5,59 g/cm³, demirden biraz hafif).",
      adimlar: [
        "**Kütle:** m = 856 g × 10⁻³ kg/g = 0,856 kg.",
        "**Kenar:** L = 5,35 cm × 10⁻² m/cm = 5,35 × 10⁻² m.",
        "**Hacim:** V = L³ = (5,35 × 10⁻²)³ m³ ≈ 153 × 10⁻⁶ m³ = 1,53 × 10⁻⁴ m³. Dikkat: 10⁻²'nin küpü 10⁻⁶'dır.",
        "**Yoğunluk:** ρ = 0,856 / (1,53 × 10⁻⁴) ≈ 5,59 × 10³ kg/m³.",
        "**Kontrol:** g/cm³ ile: 856 / 5,35³ = 856 / 153 ≈ 5,59 g/cm³; 1 g/cm³ = 1000 kg/m³ olduğundan 5,59 × 10³ kg/m³ ✓.",
      ],
    },
  ]),

  ...turet(U, K, "u1-si", [
    {
      id: "u1-t01", tip: "mcq", zorluk: 1,
      soru: "Mekanikte kullanılan üç temel büyüklük hangileridir?",
      secenekler: ["Uzunluk, kütle, zaman", "Uzunluk, kuvvet, zaman", "Kütle, hız, zaman", "Uzunluk, kütle, sıcaklık", "Kuvvet, enerji, zaman"],
      dogru: 0,
      aciklama: "Mekanikteki bütün nicelikler uzunluk [L], kütle [M] ve zaman [T] cinsinden yazılabilir. Hız, kuvvet ve enerji bunlardan türetilir.",
    },
    {
      id: "u1-t02", tip: "mcq", zorluk: 1,
      soru: "Aşağıdakilerden hangisi SI sistemindeki 7 temel birimden biri değildir?",
      secenekler: ["Newton", "Kelvin", "Amper", "Mol", "Kandela"],
      dogru: 0,
      aciklama: "SI'nın 7 temel birimi: metre, kilogram, saniye, amper, kelvin, mol, kandela. Newton türetilmiş bir birimdir: 1 N = 1 kg·m/s².",
    },
    {
      id: "u1-t03", tip: "fill", zorluk: 1,
      soru: "SI sisteminde sıcaklığın birimi ____, madde miktarının birimi ____'dür.\n\nBoşluk 1: sıcaklık, Boşluk 2: madde miktarı",
      bosluklar: [["kelvin", "K"], ["mol"]],
      aciklama: "Sıcaklık **kelvin** (K), madde miktarı **mol**. Diğer temel birimler: metre (m), kilogram (kg), saniye (s), amper (A), kandela (cd).",
    },
    {
      id: "u1-t04", tip: "mcq",
      soru: "Sunudaki tanıma göre 1 saniye nasıl tanımlanır?",
      secenekler: ["Sezyum-133 atomunun 9 192 631 770 titreşiminin süresi", "Bir günün 86 400'de biri", "Işığın 1 metreyi alma süresi", "Bir sarkacın bir tam salınım süresi", "Dünyanın Güneş çevresindeki turunun 3,2 × 10⁷'de biri"],
      dogru: 0,
      aciklama: "1967'den beri saniye atomik saatle tanımlanır: sezyum-133 atomunun 9 192 631 770 titreşimi 1 s'dir. Metre de buna dayanır: ışığın vakumda 1/299 792 458 saniyede aldığı yol.",
    },
    {
      id: "u1-t05", tip: "tf", zorluk: 1,
      soru: "Bir ölçümün sonucu birimi yazılmadan da tam olarak anlaşılabilir; örneğin \"masanın boyu 90\" demek yeterlidir.",
      dogru: false,
      aciklama: "Her ölçüm sonucu birimiyle verilmelidir. \"90\" santimetre mi, inç mi belli değildir; \"90 cm\" anlamlıdır.",
    },
  ]),

  ...turet(U, K, "u1-onek", [
    {
      id: "u1-t06", tip: "mcq", zorluk: 1,
      soru: "\"mikro\" ön ekinin anlamı ve sembolü nedir?",
      secenekler: ["10⁻⁶, μ", "10⁻³, m", "10⁻⁹, n", "10⁶, M", "10⁻¹², p"],
      dogru: 0,
      aciklama: "Alt katlar: mili (m) 10⁻³, mikro (μ) 10⁻⁶, nano (n) 10⁻⁹, piko (p) 10⁻¹². Üst katlarda mega (M) 10⁶; büyük M ile küçük m'yi karıştırma.",
    },
    {
      id: "u1-t07", tip: "mcq",
      soru: "72 km/sa kaç m/s'dir?",
      secenekler: ["20 m/s", "72 000 m/s", "259,2 m/s", "7,2 m/s", "2 m/s"],
      dogru: 0,
      aciklama: "1 km = 1000 m, 1 saat = 3600 s. Birimleri kesir gibi çarpanlarla çevir; kısa yol: km/sa ÷ 3,6 = m/s.",
      adimlar: [
        "**Çarpanlar:** 72 km/sa × (1000 m / 1 km) × (1 sa / 3600 s).",
        "**Hesap:** 72 000 / 3600 = 20 m/s.",
        "**Tuzak:** 72 × 3,6 = 259,2; çevirme yönünü ters almak.",
      ],
    },
    {
      id: "u1-t08", tip: "mcq",
      soru: "1 cm³ kaç m³'tür?",
      secenekler: ["10⁻⁶ m³", "10⁻² m³", "10⁻³ m³", "10⁻⁴ m³", "10⁻⁹ m³"],
      dogru: 0,
      aciklama: "Hacim uzunluğun küpüdür; çevirme çarpanının da küpü alınır.",
      adimlar: [
        "**Uzunluk:** 1 cm = 10⁻² m.",
        "**Küp:** 1 cm³ = (10⁻² m)³ = 10⁻⁶ m³.",
      ],
    },
    {
      id: "u1-t09", tip: "mcq",
      soru: "Bir yarış pisti 5 mil uzunluğundadır. Bu uzunluk kaç km'dir? (1 mil = 1609 m)",
      secenekler: ["≈ 8,0 km", "≈ 3,1 km", "8045 km", "≈ 0,8 km", "≈ 80 km"],
      dogru: 0,
      aciklama: "1 mil = 1,609 km. Mil, km'den uzun olduğu için km cinsinden sayı büyümelidir.",
      adimlar: [
        "**Çarp:** 5 × 1609 m = 8045 m.",
        "**km:** 8045 m = 8,045 km ≈ 8,0 km.",
      ],
    },
    {
      id: "u1-t10", tip: "fill",
      soru: "1 inç 2,54 cm'dir. 10 inç kaç santimetredir? (Yalnız sayıyı yazın.)",
      bosluklar: [["25,4", "25.4", "25,4 cm"]],
      aciklama: "10 × 2,54 cm = 25,4 cm.",
    },
    {
      id: "u1-t11", tip: "mcq",
      soru: "5 mg kütle kaç kg'dır?",
      secenekler: ["5 × 10⁻⁶ kg", "5 × 10⁻³ kg", "5 × 10⁻⁹ kg", "5 × 10³ kg", "5 × 10⁻⁴ kg"],
      dogru: 0,
      aciklama: "Mili 10⁻³ demektir: 1 mg = 10⁻³ g. Gramı da kg'a çevirmek için bir 10⁻³ daha gerekir.",
      adimlar: [
        "**mg → g:** 5 mg = 5 × 10⁻³ g.",
        "**g → kg:** 5 × 10⁻³ × 10⁻³ kg = 5 × 10⁻⁶ kg.",
      ],
    },
  ]),

  ...turet(U, K, "u1-boyut", [
    {
      id: "u1-t12", tip: "mcq", zorluk: 1,
      soru: "İvmenin boyutu nedir?",
      secenekler: ["[L/T²]", "[L/T]", "[L·T²]", "[M·L/T²]", "[L²/T]"],
      dogru: 0,
      aciklama: "İvme hızın zamana bölümüdür: (L/T) / T = L/T². [M·L/T²] kuvvetin boyutudur.",
    },
    {
      id: "u1-t13", tip: "mcq",
      soru: "x uzunluk, v hız, t zaman ve a ivme olmak üzere aşağıdaki eşitliklerden hangisi boyutça tutarsızdır?",
      secenekler: ["x = v t²", "x = v t", "v² = 2 a x", "x = ½ a t²", "v = a t"],
      dogru: 0,
      aciklama: "Her terimin boyutunu yaz: iki taraf aynı çıkmazsa eşitlik kesinlikle yanlıştır. (Boyutça tutarlı olmak doğruluğun garantisi değildir; sayısal çarpanları denetlemez.)",
      adimlar: [
        "**x = v t²:** sağ taraf (L/T) · T² = L·T, sol taraf L. Tutarsız.",
        "**v² = 2ax:** (L/T)² = L²/T²; sağ taraf (L/T²) · L = L²/T². Tutarlı.",
        "**x = ½at²:** (L/T²) · T² = L. Tutarlı (½ boyutsuzdur).",
      ],
    },
    {
      id: "u1-t14", tip: "tf",
      soru: "Boyut analizi bir eşitlikteki ½ veya 2π gibi sayısal çarpanların doğru olup olmadığını gösterir.",
      dogru: false,
      aciklama: "Sayısal çarpanlar boyutsuzdur; boyut analizi onları göremez. x = at² ve x = ½at² ikisi de boyutça tutarlıdır ama yalnız ikincisi doğrudur.",
    },
    {
      id: "u1-t15", tip: "mcq", zorluk: 3,
      soru: "Bir sarkacın periyodu T'nin, ipin uzunluğu ℓ ve yerçekimi ivmesi g'ye T ∝ ℓᵐ gⁿ biçiminde bağlı olduğu biliniyor. Boyut analizine göre m ve n nedir?",
      secenekler: ["m = ½, n = −½", "m = 1, n = −1", "m = −½, n = ½", "m = ½, n = ½", "m = 2, n = −1"],
      dogru: 0,
      aciklama: "İki tarafın boyutlarını eşitle: [T] = Lᵐ (L/T²)ⁿ. L'nin ve T'nin üsleri ayrı ayrı eşit olmalı.",
      adimlar: [
        "**Sağ taraf:** Lᵐ · Lⁿ · T⁻²ⁿ = Lᵐ⁺ⁿ T⁻²ⁿ.",
        "**T için:** sol taraf T¹ → −2n = 1 → n = −½.",
        "**L için:** sol tarafta L yok → m + n = 0 → m = ½.",
        "**Sonuç:** T ∝ √(ℓ/g). (Gerçek formül T = 2π√(ℓ/g); 2π'yi boyut analizi veremez.)",
      ],
    },
  ]),

  ...turet(U, K, "u1-yogunluk", [
    {
      id: "u1-t16", tip: "mcq",
      soru: "Alüminyumun yoğunluğu 2,7 g/cm³'tür. 20 cm³ hacmindeki bir alüminyum parçanın kütlesi nedir?",
      secenekler: ["54 g", "7,4 g", "22,7 g", "540 g", "0,135 g"],
      dogru: 0,
      aciklama: "ρ = m / V'den m = ρV.",
      adimlar: ["**Hesap:** m = 2,7 g/cm³ × 20 cm³ = 54 g."],
    },
    {
      id: "u1-t17", tip: "mcq",
      soru: "Kurşunun yoğunluğu 11,3 g/cm³'tür. Bu değer SI biriminde kaçtır?",
      secenekler: ["11 300 kg/m³", "11,3 kg/m³", "0,0113 kg/m³", "1130 kg/m³", "113 000 kg/m³"],
      dogru: 0,
      aciklama: "1 g/cm³ = 10⁻³ kg / 10⁻⁶ m³ = 10³ kg/m³. Yani g/cm³'ten kg/m³'e geçerken 1000 ile çarpılır.",
      adimlar: [
        "**Çevirme:** 1 g/cm³ = (10⁻³ kg) / (10⁻⁶ m³) = 1000 kg/m³.",
        "**Sonuç:** 11,3 × 1000 = 11 300 kg/m³.",
      ],
    },
    {
      id: "u1-t18", tip: "tf",
      soru: "Alüminyum ile kurşunun yoğunlukları arasındaki fark yalnızca atom kütlelerinin farklı olmasından kaynaklanır.",
      dogru: false,
      aciklama: "Atom kütlesi farkı (Al: 27, Pb: 207) yoğunluk farkının bir kısmını açıklar. Kalanı kristal yapıdaki atomlar arası uzaklık ve diziliş farkından gelir.",
    },
  ]),

  ...turet(U, K, "u1-anlamli", [
    {
      id: "u1-t19", tip: "mcq", zorluk: 1,
      soru: "0,00000039 sayısında kaç anlamlı rakam vardır?",
      secenekler: ["2", "8", "9", "7", "3"],
      dogru: 0,
      aciklama: "Baştaki sıfırlar yalnız ondalık noktanın yerini gösterir, anlamlı değildir. 3,9 × 10⁻⁷ yazınca iki anlamlı rakam olduğu görülür.",
    },
    {
      id: "u1-t20", tip: "mcq",
      soru: "Uzunluğu 16,3 cm, genişliği 4,5 cm ölçülen bir plakanın alanı anlamlı rakam kurallarına göre nasıl yazılmalıdır?",
      secenekler: ["73 cm²", "73,35 cm²", "73,4 cm²", "70 cm²", "73,3 cm²"],
      dogru: 0,
      aciklama: "Çarpma ve bölmede sonuç, en az anlamlı rakamı olan çarpan kadar anlamlı rakam taşır.",
      adimlar: [
        "**Çarpım:** 16,3 × 4,5 = 73,35.",
        "**Anlamlı rakamlar:** 16,3 üç, 4,5 iki anlamlı rakamlı. Sonuç iki anlamlı rakamla yazılır.",
        "**Sonuç:** 73 cm².",
      ],
    },
    {
      id: "u1-t21", tip: "mcq",
      soru: "9,12 − 5,4917 işleminin sonucu anlamlı rakam kurallarına göre nasıl yazılır?",
      secenekler: ["3,63", "3,6283", "3,628", "3,6", "4"],
      dogru: 0,
      aciklama: "Toplama ve çıkarmada sonuç, ondalık basamak sayısı en az olan terim kadar ondalık basamakla yazılır.",
      adimlar: [
        "**İşlem:** 9,12 − 5,4917 = 3,6283.",
        "**Basamak:** 9,12'nin iki ondalık basamağı var; sonuç iki ondalığa yuvarlanır: 3,63.",
      ],
    },
    {
      id: "u1-t22", tip: "tf",
      soru: "2,70 sayısının sonundaki sıfır anlamlıdır; sayı üç anlamlı rakam içerir.",
      dogru: true,
      aciklama: "Ondalık kısımda sona yazılan sıfır ölçülmüş demektir: 2,70, ölçümün yüzde birler basamağına kadar yapıldığını söyler. Bu yüzden üç anlamlı rakam vardır.",
    },
  ]),
];
