// 4. bölüm: İki boyutta hareket
// Sunu örnekleri metinleriyle; şıklar ve adım adım çözümler bizim. Sayısal sorularda,
// sununun kendisi 9,8 kullanmadıysa g = 10 m/s².
// Sunudaki düzeltmeler: Örnek 5'te "tan 37° = 4/3" yazılmış, kullanılan tan 53° = 4/3;
// Örnek 6'nın sonuçları (0,816 ve 686 m) g = 9,8 ile çıkıyor; Örnek 7'de 40 × 4,47 ≈ 179 m;
// Örnek 12 (c) t_b = 2 / 19,4 sa ≈ 6,2 dk.

import { sunu, turet, type Soru } from "./tipler.ts";

const U = 4;
const K = "u4";

const ORNEK1 = "Düzlemde bir hareketlinin koordinatları x = t³ − 2t² + 5 ve y = 3t² − 4t + 4 olarak veriliyor (SI birimleri).";
const ORNEK2 = "Düzlemde Hareket: Bir parçacık 20 m/s'lik x bileşenli ve −15 m/s'lik y bileşenli ilk hızla t = 0'da başlangıç noktasından harekete geçmektedir. Parçacık sadece a_x = 4 m/s² ile verilen ivmenin x bileşeniyle xy düzleminde hareket etmektedir.";
const ORNEK4 = "Bir futbolcunun vurduğu top 30 m/s ilk hızla ve yatayla 37° açı altında yükseliyor. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)";
const ORNEK8 = "Bir motosikletli yerden 20 m yükseklikteki bir uçurumdan v₀ yatay hızıyla atlayıp 9 m genişliğindeki bir nehrin öte tarafına geçebilmek istiyor. (g = 10 m/s²)\n\n[[G-S4-02]]";
const ORNEK9 = "Bir top 33 m yükseklikte bir binanın çatısından, yatayla 53° açı altında 5 m/s hızıyla atılıyor. Yerde, binanın kapısında beklemekte olan bir çocuk topla aynı anda ve aynı yönde, sabit a ivmesiyle koşmaya başlıyor. (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)\n\n[[G-S4-03]]";
const ORNEK11 = "Bir binanın dış asansörü yerden 8 m yükseklikteyken sabit bir u hızıyla inmeye başlıyor. Aynı anda, binadan 6 m yatay uzaklıkta beklemekte olan bir çocuk, elindeki topu 20 m/s hızla ve 53° açıyla, asansöre doğru fırlatıyor. (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)\n\n[[G-S4-05]]";
const ORNEK12 = "Durgun sudaki hızı 20 km/saat olan bir motor, genişliği 2 km olan bir nehri geçmeyi deniyor. Nehirde akıntı hızı 5 km/saat'tir.\n\n[[G-S4-06]]";

export const unite4: Soru[] = [
  ...sunu(U, K, [
    {
      id: "u4-s01a", ornek: 1, parca: "a", kavram: "u4-vektorel",
      soru: `${ORNEK1} Hız ve ivmeyi zamanın fonksiyonları olarak ifade edin.`,
      secenekler: [
        "v = (3t² − 4t)î + (6t − 4)ĵ; a = (6t − 4)î + 6ĵ",
        "v = (3t² − 4t)î + (6t − 4)ĵ; a = (6t − 4)î + 6tĵ",
        "v = (3t² − 2t)î + (3t − 4)ĵ; a = (6t − 2)î + 3ĵ",
        "v = (t² − 4t)î + (6t − 4)ĵ; a = (2t − 4)î + 6ĵ",
        "v = (3t² − 4t + 5)î + (6t − 4)ĵ; a = (6t − 4)î + 6ĵ",
      ],
      dogru: 0,
      aciklama: "İki boyutta her bileşen kendi başına türevlenir: v_x = dx/dt, v_y = dy/dt; a_x = dv_x/dt, a_y = dv_y/dt.",
      adimlar: [
        "**x bileşeni:** v_x = d(t³ − 2t² + 5)/dt = 3t² − 4t; a_x = 6t − 4.",
        "**y bileşeni:** v_y = d(3t² − 4t + 4)/dt = 6t − 4; a_y = 6 (sabit).",
        "**Vektör olarak:** v = (3t² − 4t)î + (6t − 4)ĵ m/s ve a = (6t − 4)î + 6ĵ m/s².",
      ],
    },
    {
      id: "u4-s01b", ornek: 1, parca: "b", kavram: "u4-vektorel",
      soru: `${ORNEK1} t = 1 s anında konum, hız ve ivme vektörlerini bulun.`,
      secenekler: [
        "r = 4î + 3ĵ; v = −î + 2ĵ; a = 2î + 6ĵ",
        "r = 4î + 3ĵ; v = î + 2ĵ; a = 2î + 6ĵ",
        "r = 3î + 4ĵ; v = −î + 2ĵ; a = 6î + 2ĵ",
        "r = 4î + 3ĵ; v = −î − 2ĵ; a = −2î + 6ĵ",
        "r = 5î + 4ĵ; v = −î + 2ĵ; a = 2î + 6ĵ",
      ],
      dogru: 0,
      aciklama: "Bir andaki vektörleri bulmak için zaman fonksiyonlarına t = 1 koyulur; her bileşen ayrı hesaplanır.",
      adimlar: [
        "**Konum:** x(1) = 1 − 2 + 5 = 4; y(1) = 3 − 4 + 4 = 3 → r = 4î + 3ĵ m.",
        "**Hız:** v_x(1) = 3 − 4 = −1; v_y(1) = 6 − 4 = 2 → v = −î + 2ĵ m/s.",
        "**İvme:** a_x(1) = 6 − 4 = 2; a_y = 6 → a = 2î + 6ĵ m/s².",
      ],
    },
    {
      id: "u4-s01c", ornek: 1, parca: "c ve d", kavram: "u4-vektorel", zorluk: 3,
      soru: `${ORNEK1} t = 1 s anında hız ve ivmenin büyüklüğünü ve hız ile ivme arasındaki açıyı bulun.`,
      secenekler: ["|v| = √5 m/s; |a| = √40 m/s²; θ = 45°", "|v| = √5 m/s; |a| = √40 m/s²; θ = 90°", "|v| = 3 m/s; |a| = 8 m/s²; θ = 45°", "|v| = √5 m/s; |a| = √40 m/s²; θ = 135°", "|v| = √3 m/s; |a| = √32 m/s²; θ = 60°"],
      dogru: 0,
      aciklama: "Büyüklükler Pisagor'la bulunur. İki vektör arasındaki açıyı skaler çarpım verir: cos θ = (v · a) / (|v| |a|).",
      adimlar: [
        "**Büyüklükler:** |v| = √((−1)² + 2²) = √5 m/s; |a| = √(2² + 6²) = √40 m/s².",
        "**Skaler çarpım:** v · a = (−1)(2) + (2)(6) = −2 + 12 = 10.",
        "**Kosinüs:** cos θ = 10 / (√5 · √40) = 10 / √200 = 10 / (10√2) = √2 / 2.",
        "**Açı:** θ = cos⁻¹(√2 / 2) = 45°.",
      ],
    },
    {
      id: "u4-s02a", ornek: 2, parca: "a", kavram: "u4-vektorel",
      soru: `${ORNEK2} Zamanın fonksiyonu olarak herhangi bir andaki hız vektörünü bulunuz.`,
      secenekler: ["v = (20 + 4t)î − 15ĵ m/s", "v = (20 + 4t)î + (−15 + 4t)ĵ m/s", "v = 20î + (−15 + 4t)ĵ m/s", "v = (20 + 2t²)î − 15ĵ m/s", "v = (20 − 4t)î − 15ĵ m/s"],
      dogru: 0,
      aciklama: "Sabit ivmede her bileşen için v = v₀ + at ayrı yazılır. İvmenin y bileşeni sıfır olduğundan v_y değişmez.",
      adimlar: [
        "**Verilenler:** v₀ₓ = 20 m/s, v₀ᵧ = −15 m/s, a_x = 4 m/s², a_y = 0.",
        "**x bileşeni:** v_x = 20 + 4t.",
        "**y bileşeni:** v_y = −15 + 0 · t = −15 m/s (sabit).",
        "**Vektör:** v = (20 + 4t)î − 15ĵ m/s.",
      ],
    },
    {
      id: "u4-s02b", ornek: 2, parca: "b", kavram: "u4-vektorel",
      soru: `${ORNEK2} t = 5 s'de parçacığın hızının büyüklüğünü ve yönünü hesaplayınız.`,
      secenekler: ["|v| ≈ 43 m/s; θ ≈ −21°", "|v| ≈ 43 m/s; θ ≈ 21°", "|v| = 25 m/s; θ ≈ −37°", "|v| ≈ 55 m/s; θ ≈ −21°", "|v| ≈ 43 m/s; θ ≈ −69°"],
      dogru: 0,
      aciklama: "Önce t = 5 s'deki bileşenleri bul, sonra büyüklük için Pisagor, yön için tan θ = v_y / v_x.",
      adimlar: [
        "**Bileşenler:** v_x = 20 + 4 · 5 = 40 m/s; v_y = −15 m/s → v = 40î − 15ĵ.",
        "**Büyüklük:** |v| = √(40² + 15²) = √(1600 + 225) = √1825 ≈ 43 m/s.",
        "**Yön:** θ = tan⁻¹(−15 / 40) ≈ −21°. v_x pozitif, v_y negatif: dördüncü çeyrek, yani +x'in 21° altı.",
      ],
    },
    {
      id: "u4-s03", ornek: 3, kavram: "u4-egik", zorluk: 1,
      soru: "Maksimum atış uzaklığı (menzil): Yatay bir düzlemdeki cisim hangi açıda atılırsa en uzağa düşer, yani menzili (erimi) maksimum olur?",
      secenekler: ["45°", "30°", "60°", "90°", "37°"],
      dogru: 0,
      aciklama: "Yatay düzlemde menzil R = v₀² sin 2θ / g. Aynı v₀ için R'nin en büyük olması sin 2θ'nın en büyük (1) olmasını ister.",
      adimlar: [
        "**Yörünge denklemi:** y = (tan θ) x − g x² / (2v₀² cos² θ). Yere dönüşte y = 0.",
        "**Çöz:** x = 0 (atış noktası) ya da x = 2v₀² cos² θ tan θ / g = 2v₀² sin θ cos θ / g.",
        "**Menzil:** 2 sin θ cos θ = sin 2θ olduğundan R = v₀² sin 2θ / g.",
        "**Maksimum:** sin 2θ = 1 → 2θ = 90° → θ = 45°.",
      ],
    },
    {
      id: "u4-s04a", ornek: 4, parca: "a ve b", kavram: "u4-egik",
      soru: `${ORNEK4} t = 1 s anında topun konum ve hız bileşenleri ne olur?`,
      secenekler: ["x = 24 m, y = 13 m; v_x = 24 m/s, v_y = 8 m/s", "x = 24 m, y = 18 m; v_x = 24 m/s, v_y = 18 m/s", "x = 18 m, y = 19 m; v_x = 18 m/s, v_y = 14 m/s", "x = 24 m, y = 13 m; v_x = 14 m/s, v_y = 8 m/s", "x = 24 m, y = 23 m; v_x = 24 m/s, v_y = 28 m/s"],
      dogru: 0,
      aciklama: "Eğik atışta yatay hareket sabit hızlı (a_x = 0), düşey hareket sabit ivmelidir (a_y = −g). Önce ilk hızın bileşenleri bulunur.",
      adimlar: [
        "**İlk hız bileşenleri:** v₀ₓ = 30 cos 37° = 24 m/s; v₀ᵧ = 30 sin 37° = 18 m/s.",
        "**Denklemler:** x = 24t; y = 18t − 5t²; v_x = 24; v_y = 18 − 10t.",
        "**t = 1 s:** x = 24 m; y = 18 − 5 = 13 m.",
        "**t = 1 s:** v_x = 24 m/s (değişmez); v_y = 18 − 10 = 8 m/s.",
      ],
    },
    {
      id: "u4-s04b", ornek: 4, parca: "c ve d", kavram: "u4-egik",
      soru: `${ORNEK4} Top maksimum yüksekliğe kaç saniyede çıkar ve maksimum yükseklik ne kadardır?`,
      secenekler: ["t = 1,8 s; y_max = 16,2 m", "t = 3,6 s; y_max = 16,2 m", "t = 1,8 s; y_max = 32,4 m", "t = 2,4 s; y_max = 28,8 m", "t = 1,8 s; y_max = 45 m"],
      dogru: 0,
      aciklama: "Tepe noktasında hız tamamen yataydır: v_y = 0. Bu anı y denklemine koymak yüksekliği verir.",
      adimlar: [
        "**Tepe anı:** v_y = 18 − 10t = 0 → t = 1,8 s.",
        "**Yükseklik:** y_max = 18 · 1,8 − 5 · 1,8² = 32,4 − 16,2 = 16,2 m.",
        "**Kontrol:** v₀ᵧ² / 2g = 324 / 20 = 16,2 m ✓.",
      ],
    },
    {
      id: "u4-s04c", ornek: 4, parca: "e", kavram: "u4-egik",
      soru: `${ORNEK4} Top ne kadar uzağa düşer?`,
      secenekler: ["≈ 86 m", "≈ 43 m", "90 m", "≈ 108 m", "≈ 65 m"],
      dogru: 0,
      aciklama: "Yatay düzlemde uçuş süresi tepe süresinin iki katıdır; menzil yatay hız ile uçuş süresinin çarpımıdır.",
      adimlar: [
        "**Uçuş süresi:** 2 × 1,8 = 3,6 s.",
        "**Menzil:** R = 24 × 3,6 = 86,4 ≈ 86 m.",
        "**Formülle kontrol:** R = v₀² sin 2θ / g = 900 × sin 74° / 10 = 900 × 0,96 / 10 = 86,4 m ✓.",
      ],
    },
    {
      id: "u4-s05", ornek: 5, kavram: "u4-egik", zorluk: 3,
      soru: "Bir top 9 m ötedeki bir duvara yatayla 53° açı altında atılıyor. Top duvara yerden 7 m yükseklikte çarpıyor. Topun ilk hızı ne idi? (cos 53° = 0,6; tan 53° = 4/3; g = 10 m/s²)\n\n[[G-S4-01]]",
      secenekler: ["15 m/s", "10 m/s", "20 m/s", "12 m/s", "225 m/s"],
      dogru: 0,
      aciklama: "Zaman verilmediği için yörünge denklemini kullanmak en hızlı yoldur: y = (tan θ) x − g x² / (2v₀² cos² θ). Not: sunu \"tan 37° = 4/3\" yazmış; kullanılan değer tan 53° = 4/3'tür.",
      adimlar: [
        "**Bilinenler:** x = 9 m, y = 7 m, tan 53° = 4/3, cos 53° = 0,6.",
        "**Yerine koy:** 7 = (4/3) · 9 − 10 · 81 / (2v₀² · 0,36).",
        "**Sadeleştir:** 7 = 12 − 810 / (0,72 v₀²) → 810 / (0,72 v₀²) = 5.",
        "**Çöz:** v₀² = 810 / 3,6 = 225 → v₀ = 15 m/s.",
        "**Zamanla kontrol:** v₀ₓ = 9 m/s, duvara t = 1 s'de varır; y = 12 · 1 − 5 · 1 = 7 m ✓.",
      ],
    },
    {
      id: "u4-s06a", ornek: 6, parca: "a", kavram: "u4-egik", zorluk: 3,
      soru: "Liman ağzından 560 m açıkta bir gemi vardır. Liman ağzında deniz düzeyinde bulunan bir savunma topu 82 m/s ilk hızıyla gülleler atıyor. Gemiyi vurmak için gülleler yatayla hangi θ açısıyla atılmalıdır? (g = 9,8 m/s²)",
      secenekler: ["θ ≈ 27° ya da θ ≈ 63°", "Yalnız θ ≈ 27°", "θ ≈ 45°", "θ ≈ 54° ya da θ ≈ 36°", "Yalnız θ ≈ 63°"],
      dogru: 0,
      aciklama: "Menzil R = v₀² sin 2θ / g'den sin 2θ bulunur. sin 2θ = k denkleminin 0°–90° arasında iki çözümü vardır: θ ve 90° − θ (tümler açılar aynı menzili verir). Not: sunu g'yi 10 yazmış, sayılar g = 9,8 ile çıkıyor.",
      adimlar: [
        "**Menzil formülü:** 560 = 82² sin 2θ / 9,8.",
        "**sin 2θ:** sin 2θ = 560 · 9,8 / 6724 ≈ 0,816.",
        "**İlk açı:** 2θ = sin⁻¹(0,816) ≈ 54,7° → θ ≈ 27°.",
        "**İkinci açı:** sin(180° − 54,7°) de 0,816'dır: 2θ ≈ 125,3° → θ ≈ 63°. İki açı tümler (27° + 63° = 90°).",
      ],
    },
    {
      id: "u4-s06b", ornek: 6, parca: "b", kavram: "u4-egik",
      soru: "Liman ağzında deniz düzeyinde bulunan bir savunma topu 82 m/s ilk hızıyla gülleler atıyor. Güllelerin maksimum menzili nedir? (g = 9,8 m/s²)",
      secenekler: ["≈ 686 m", "≈ 343 m", "≈ 672 m", "≈ 560 m", "≈ 1372 m"],
      dogru: 0,
      aciklama: "Maksimum menzil θ = 45°'de, sin 90° = 1 iken elde edilir: R_max = v₀² / g.",
      adimlar: [
        "**Açı:** θ = 45° → sin 2θ = 1.",
        "**Menzil:** R_max = 82² / 9,8 = 6724 / 9,8 ≈ 686 m. (g = 10 alınsaydı 672 m çıkardı.)",
      ],
    },
    {
      id: "u4-s07", ornek: 7, kavram: "u4-yatay",
      soru: "Bir uçak zor durumdaki bir kısım kaşife acil kumanya paketi atıyor. Uçak yerden 100 m yükseklikte 40 m/s hızla yatay olarak yol alıyor ise paket bırakıldığı noktaya göre nerede yere çarpar? (g = 10 m/s²)",
      secenekler: ["≈ 179 m ileride", "≈ 89 m ileride", "400 m ileride", "100 m ileride", "≈ 253 m ileride"],
      dogru: 0,
      aciklama: "Paket bırakıldığı anda uçağın yatay hızını taşır, düşey ilk hızı sıfırdır. Düşme süresini yalnız yükseklik belirler; yatay mesafe bu süre ile yatay hızın çarpımıdır. Not: sunu t'yi 4,5 s'ye yuvarlayıp 181 m bulmuş; √20 ≈ 4,47 ile 179 m çıkar.",
      adimlar: [
        "**İlk hız:** v₀ₓ = 40 m/s, v₀ᵧ = 0.",
        "**Düşme süresi:** 0 = 100 − ½ · 10 · t² → t² = 20 → t = √20 ≈ 4,47 s.",
        "**Yatay uzaklık:** x = 40 × 4,47 ≈ 179 m.",
      ],
    },
    {
      id: "u4-s08a", ornek: 8, parca: "a ve b", kavram: "u4-yatay",
      soru: `${ORNEK8}\n\nMotosikletin uçuş süresi ne kadardır ve ilk hızı ne olmalıdır ki nehri geçebilsin?`,
      secenekler: ["t = 2 s; v₀ = 4,5 m/s", "t = 4 s; v₀ = 2,25 m/s", "t = 2 s; v₀ = 9 m/s", "t = 1 s; v₀ = 9 m/s", "t = 2 s; v₀ = 20 m/s"],
      dogru: 0,
      aciklama: "Yatay atış eğik atışın θ = 0 hâlidir. Uçuş süresini düşey hareket (20 m düşüş) belirler; yatay hız bu sürede 9 m gitmeye yetmelidir.",
      adimlar: [
        "**Denklemler:** Orijin uçurumun dibinde: x = v₀t, y = 20 − 5t².",
        "**Süre:** 0 = 20 − 5t² → t = 2 s.",
        "**İlk hız:** 9 = v₀ · 2 → v₀ = 4,5 m/s (en az).",
      ],
    },
    {
      id: "u4-s08b", ornek: 8, parca: "c", kavram: "u4-yatay",
      soru: `${ORNEK8}\n\nMotosiklet v₀ = 4,5 m/s ile atlarsa yere çarpmadan hemen önceki hızı ne olur?`,
      secenekler: ["≈ 21 m/s", "≈ 24,5 m/s", "20 m/s", "4,5 m/s", "≈ 15,5 m/s"],
      dogru: 0,
      aciklama: "Çarpma anındaki hız iki bileşenin vektörel toplamıdır; yatay bileşen değişmez, düşey bileşen −gt olur. Bileşenler toplanmaz, Pisagor uygulanır.",
      adimlar: [
        "**Yatay bileşen:** v_x = 4,5 m/s.",
        "**Düşey bileşen:** v_y = −10 · 2 = −20 m/s (aşağı).",
        "**Büyüklük:** v = √(4,5² + 20²) = √(20,25 + 400) ≈ √420 ≈ 21 m/s.",
      ],
    },
    {
      id: "u4-s09a", ornek: 9, parca: "a ve b", kavram: "u4-egik", zorluk: 3,
      soru: `${ORNEK9}\n\nTopun yere düşünceye kadar uçuş süresi ne olur?`,
      secenekler: ["3 s", "0,8 s", "2,6 s", "3,8 s", "2,2 s"],
      dogru: 0,
      aciklama: "Orijini çocuğun bulunduğu yerde (binanın dibinde) al. Topun düşey denklemi y = 33 + 4t − 5t²; yere düşmek y = 0 demektir.",
      adimlar: [
        "**İlk hız bileşenleri:** v₀ₓ = 5 × 0,6 = 3 m/s; v₀ᵧ = 5 × 0,8 = 4 m/s.",
        "**Denklem:** y = 33 + 4t − 5t² = 0 → 5t² − 4t − 33 = 0.",
        "**Kökler:** t = [4 ± √(16 + 660)] / 10 = (4 ± 26) / 10 → t = 3 s ya da t = −2,2 s.",
        "**Sonuç:** Negatif kök atılır, t = 3 s.",
      ],
    },
    {
      id: "u4-s09b", ornek: 9, parca: "c ve d", kavram: "u4-egik", zorluk: 3,
      soru: `${ORNEK9}\n\nTop binadan ne kadar uzağa düşer ve çocuğun ivmesi ne olmalıdır ki top yere düşmeden onu tutabilsin?`,
      secenekler: ["x = 9 m; a = 2 m/s²", "x = 15 m; a = 3,3 m/s²", "x = 9 m; a = 6 m/s²", "x = 9 m; a = 1 m/s²", "x = 12 m; a = 2,7 m/s²"],
      dogru: 0,
      aciklama: "Top ile çocuk aynı anda aynı x konumunda olmalı. Çocuğun hareketi durgun hâlden sabit ivmeli: x₂ = ½at².",
      adimlar: [
        "**Topun yatay yolu:** x₁ = 3 · t = 3 · 3 = 9 m.",
        "**Çocuğun denklemi:** x₂ = ½at².",
        "**Eşitle (t = 3 s):** 9 = ½ · a · 9 → a = 2 m/s².",
      ],
    },
    {
      id: "u4-s10", ornek: 10, kavram: "u4-egik", zorluk: 3,
      soru: "Bir taş, yüksekliği 45 m olan bir binanın tepesinden yatayla 30° açı yapacak şekilde 20 m/s'lik ilk hızla fırlatılıyor. Taş ne kadar sürede yere düşer ve yere hangi hızla çarpar? (g = 9,8 m/s²)\n\n[[G-S4-04]]",
      secenekler: ["t ≈ 4,22 s; v ≈ 35,9 m/s", "t ≈ 3,03 s; v ≈ 35,9 m/s", "t ≈ 4,22 s; v ≈ 31,4 m/s", "t ≈ 4,22 s; v ≈ 48,7 m/s", "t ≈ 2,04 s; v = 20 m/s"],
      dogru: 0,
      aciklama: "Orijini atış noktasına koy; yer y = −45 m'dedir. Düşey denklemden süre, sonra iki bileşenden çarpma hızı bulunur.",
      adimlar: [
        "**Bileşenler:** v₀ₓ = 20 cos 30° ≈ 17,3 m/s; v₀ᵧ = 20 sin 30° = 10 m/s.",
        "**Düşey denklem:** −45 = 10t − 4,9t² → 4,9t² − 10t − 45 = 0.",
        "**Kök:** t = [10 + √(100 + 882)] / 9,8 = (10 + 31,3) / 9,8 ≈ 4,22 s.",
        "**Düşey hız:** v_y = 10 − 9,8 × 4,22 ≈ −31,4 m/s.",
        "**Çarpma hızı:** v = √(17,3² + 31,4²) ≈ √(299 + 986) ≈ 35,9 m/s.",
        "**Enerjiyle kontrol:** v² = v₀² + 2gh = 400 + 882 = 1282 → v ≈ 35,8 m/s ✓ (yuvarlama farkı).",
      ],
    },
    {
      id: "u4-s11a", ornek: 11, parca: "b ve c", kavram: "u4-egik",
      soru: `${ORNEK11}\n\nTop duvara kaç saniye sonra ve hangi yükseklikte çarpar?`,
      secenekler: ["t = 0,5 s; y = 6,75 m", "t = 0,5 s; y = 8 m", "t = 0,3 s; y = 4,35 m", "t = 0,5 s; y = 1,25 m", "t = 0,75 s; y = 9,2 m"],
      dogru: 0,
      aciklama: "Topun yatay hızı sabittir; 6 m'yi ne kadar sürede aldığı çarpma anını verir. O anı düşey denkleme koy.",
      adimlar: [
        "**Bileşenler:** v₀ₓ = 20 × 0,6 = 12 m/s; v₀ᵧ = 20 × 0,8 = 16 m/s.",
        "**Denklemler (orijin top):** x₁ = 12t; y₁ = 16t − 5t².",
        "**Çarpma anı:** 6 = 12t → t = 0,5 s.",
        "**Yükseklik:** y₁ = 16 × 0,5 − 5 × 0,25 = 8 − 1,25 = 6,75 m.",
      ],
    },
    {
      id: "u4-s11b", ornek: 11, parca: "d", kavram: "u4-egik",
      soru: `${ORNEK11}\n\nAsansörün u hızı ne olmalıdır ki top asansöre çarpsın?`,
      secenekler: ["2,5 m/s", "1,25 m/s", "6,75 m/s", "16 m/s", "3,5 m/s"],
      dogru: 0,
      aciklama: "Asansör sabit hızla iner: y₂ = 8 − ut. Top asansöre çarpacaksa çarpma anında ikisinin yüksekliği aynı olmalı.",
      adimlar: [
        "**Asansör:** y₂ = 8 − u t.",
        "**Çarpma anı:** t = 0,5 s, topun yüksekliği 6,75 m (önceki parça).",
        "**Eşitle:** 6,75 = 8 − u × 0,5 → 0,5u = 1,25 → u = 2,5 m/s.",
      ],
    },
    {
      id: "u4-s12a", ornek: 12, parca: "a", kavram: "u4-bagil",
      soru: `${ORNEK12}\n\nKaptan tekneyi kıyıya dik olarak sürmek istediğinde, motorun yere göre hızı ve yönü ne olur?`,
      secenekler: ["≈ 21 km/sa; dik doğrultudan akıntı yönüne ≈ 14°", "25 km/sa; akıntı yönüne 14°", "15 km/sa; dik doğrultudan akıntıya karşı ≈ 14°", "≈ 19 km/sa; akıntı yönüne ≈ 15°", "20 km/sa; tam karşıya"],
      dogru: 0,
      aciklama: "Hız toplama: v_MO = v_MN + v_NO (motorun yere göre hızı = motorun nehre göre hızı + nehrin yere göre hızı). Tekne kıyıya dik tutulursa iki vektör birbirine diktir.",
      adimlar: [
        "**Vektörler:** v_MN = 20 km/sa (karşıya), v_NO = 5 km/sa (akıntı yönünde), aralarında 90°.",
        "**Büyüklük:** v_MO = √(20² + 5²) = √425 ≈ 21 km/sa.",
        "**Yön:** tan θ = 5 / 20 = 0,25 → θ ≈ 14°. Tekne karşıya dik doğrultudan akıntı yönüne 14° sapar.",
      ],
    },
    {
      id: "u4-s12b", ornek: 12, parca: "b", kavram: "u4-bagil", zorluk: 3,
      soru: `${ORNEK12}\n\nKaptan bu kez nehri dikine geçmek istiyor. Teknenin burnunu hangi yönde tutmalıdır ki yerden gözlenen hızı kıyıya dik olsun? Bu durumda yere göre hızı ne olur?`,
      secenekler: ["Akıntıya karşı ≈ 15°; ≈ 19 km/sa", "Akıntı yönüne ≈ 15°; ≈ 19 km/sa", "Akıntıya karşı ≈ 14°; ≈ 21 km/sa", "Akıntıya karşı 45°; 15 km/sa", "Tam karşıya; 20 km/sa"],
      dogru: 0,
      aciklama: "Bu kez toplam v_MO kıyıya dik olmalı. v_MN hipotenüs olur; akıntıyı dengelemek için burun akıntıya karşı çevrilir.",
      adimlar: [
        "**Üçgen:** v_MN = 20 (hipotenüs), v_NO = 5, v_MO kıyıya dik.",
        "**Açı:** sin θ = v_NO / v_MN = 5 / 20 = 0,25 → θ ≈ 15° (akıntıya karşı).",
        "**Hız:** v_MO = √(20² − 5²) = √375 ≈ 19 km/sa.",
      ],
    },
    {
      id: "u4-s12c", ornek: 12, parca: "c", kavram: "u4-bagil", zorluk: 3,
      soru: `${ORNEK12}\n\nHer iki durumda karşıya geçiş sürelerini hesaplayın.`,
      secenekler: ["t_a = 6 dk; t_b ≈ 6,2 dk", "t_a ≈ 5,7 dk; t_b = 6 dk", "t_a = 6 dk; t_b = 6 dk", "t_a ≈ 6,2 dk; t_b = 6 dk", "t_a = 8 dk; t_b ≈ 6,2 dk"],
      dogru: 0,
      aciklama: "Karşıya geçiş süresini yalnız kıyıya dik hız bileşeni belirler. Not: sunu t_b'yi 0,11 sa = 6,5 dk'ya yuvarlamış; 2 / 19,4 ≈ 0,103 sa ≈ 6,2 dk.",
      adimlar: [
        "**(a) durumu:** Kıyıya dik bileşen v_MN = 20 km/sa. t_a = 2 / 20 = 0,10 sa = 6 dk. (Sunudaki gibi çapraz yol L / cos 14° bölü 21 km/sa da aynı sonucu verir.)",
        "**(b) durumu:** Kıyıya dik hız v_MO = √375 ≈ 19,4 km/sa. t_b = 2 / 19,4 ≈ 0,103 sa ≈ 6,2 dk.",
        "**Yorum:** En kısa sürede geçmek için burun kıyıya dik tutulur; en kısa yoldan geçmek için akıntıya karşı çevrilir ve biraz daha uzun sürer.",
      ],
    },
    {
      id: "u4-s13", ornek: 13, kavram: "u4-bagil",
      soru: "Bir bot, doğuya doğru (yere göre) sabit 5 km/saat hızla akan bir nehir üzerinde nehire göre 10 km/saat hızla kuzeye doğru hareket etmektedir. Botun hızını kenardaki bank üzerinde bulunan gözlemciye göre hesaplayınız.\n\n[[G-S4-07]]",
      secenekler: ["≈ 11,2 km/sa; kuzeyden doğuya ≈ 26,6°", "15 km/sa; kuzeyden doğuya ≈ 26,6°", "≈ 11,2 km/sa; kuzeyden doğuya ≈ 63,4°", "5 km/sa; kuzeye", "≈ 8,7 km/sa; kuzeyden batıya ≈ 30°"],
      dogru: 0,
      aciklama: "v_bE = v_br + v_rE: botun yere göre hızı, botun nehre göre hızı ile nehrin yere göre hızının vektör toplamıdır. İki vektör dik olduğu için Pisagor kullanılır.",
      adimlar: [
        "**Vektörler:** v_br = 10 km/sa kuzey, v_rE = 5 km/sa doğu.",
        "**Büyüklük:** v_bE = √(10² + 5²) = √125 ≈ 11,2 km/sa.",
        "**Yön:** θ = tan⁻¹(5 / 10) ≈ 26,6°, kuzeyden doğuya doğru.",
      ],
    },
  ]),

  ...turet(U, K, "u4-vektorel", [
    {
      id: "u4-t01", tip: "mcq",
      soru: "Bir parçacığın konum vektörü r = 2t² î + 3t ĵ m ile veriliyor. t = 2 s'de hızının büyüklüğü nedir?",
      secenekler: ["≈ 8,5 m/s", "11 m/s", "≈ 8,9 m/s", "≈ 10 m/s", "≈ 7 m/s"],
      dogru: 0,
      aciklama: "Hız vektörü konumun türevidir; her bileşen ayrı türevlenir. Büyüklük Pisagor'la bulunur.",
      adimlar: [
        "**Türev:** v = 4t î + 3 ĵ.",
        "**t = 2 s:** v = 8î + 3ĵ m/s.",
        "**Büyüklük:** |v| = √(64 + 9) = √73 ≈ 8,5 m/s.",
        "**Tuzak:** 8 + 3 = 11, bileşenleri doğrudan toplamak; vektör büyüklüğü öyle bulunmaz.",
      ],
    },
    {
      id: "u4-t02", tip: "mcq",
      soru: "Bir cisim v₀ = 5î m/s hızla harekete başlıyor ve sabit a = 2ĵ m/s² ivmesiyle hareket ediyor. t = 3 s'de hızının büyüklüğü nedir?",
      secenekler: ["≈ 7,8 m/s", "11 m/s", "6 m/s", "5 m/s", "≈ 9,4 m/s"],
      dogru: 0,
      aciklama: "Sabit ivmede v = v₀ + at vektörel olarak geçerlidir. İvme yalnız y yönünde olduğundan v_x değişmez.",
      adimlar: [
        "**Hız:** v = 5î + 2 · 3 ĵ = 5î + 6ĵ m/s.",
        "**Büyüklük:** √(25 + 36) = √61 ≈ 7,8 m/s.",
      ],
    },
    {
      id: "u4-t03", tip: "tf",
      soru: "İki boyutlu sabit ivmeli harekette x ve y yönündeki hareketler birbirinden bağımsız olarak incelenebilir; ortak olan yalnızca zamandır.",
      dogru: true,
      aciklama: "Bileşenlere ayırınca x ve y için ayrı birer bir boyutlu hareket denklemi yazılır. Eğik atışta da yatay hareket düzgün, düşey hareket sabit ivmelidir; ikisini bağlayan t'dir.",
    },
  ]),

  ...turet(U, K, "u4-egik", [
    {
      id: "u4-t04", tip: "mcq",
      soru: "Yatay zeminden yatayla 30° açıyla 20 m/s hızla atılan bir topun maksimum yüksekliği ve menzili nedir? (g = 10 m/s², √3 ≈ 1,73)",
      secenekler: ["h = 5 m; R ≈ 34,6 m", "h = 10 m; R ≈ 34,6 m", "h = 5 m; R = 40 m", "h = 15 m; R = 20 m", "h = 5 m; R ≈ 17,3 m"],
      dogru: 0,
      aciklama: "h = v₀ᵧ² / 2g ve R = v₀² sin 2θ / g. Önce ilk hız bileşenlerini bulmak hata riskini azaltır.",
      adimlar: [
        "**Bileşenler:** v₀ₓ = 20 cos 30° ≈ 17,3 m/s; v₀ᵧ = 20 sin 30° = 10 m/s.",
        "**Yükseklik:** h = 10² / 20 = 5 m.",
        "**Uçuş süresi:** 2 × (10 / 10) = 2 s.",
        "**Menzil:** R = 17,3 × 2 ≈ 34,6 m. (Formül: 400 × sin 60° / 10 ≈ 34,6 m.)",
      ],
    },
    {
      id: "u4-t05", tip: "mcq",
      soru: "Yatay zeminden yatayla 53° açıyla 40 m/s hızla atılan bir cismin uçuş süresi, maksimum yüksekliği ve menzili nedir? (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)",
      secenekler: ["t = 6,4 s; h = 51,2 m; R = 153,6 m", "t = 3,2 s; h = 51,2 m; R = 76,8 m", "t = 6,4 s; h = 28,8 m; R = 153,6 m", "t = 4,8 s; h = 28,8 m; R = 115,2 m", "t = 6,4 s; h = 102,4 m; R = 153,6 m"],
      dogru: 0,
      aciklama: "Tepe süresi v₀ᵧ / g, uçuş süresi onun iki katı. Yükseklik v₀ᵧ² / 2g, menzil v₀ₓ × uçuş süresi.",
      adimlar: [
        "**Bileşenler:** v₀ₓ = 40 × 0,6 = 24 m/s; v₀ᵧ = 40 × 0,8 = 32 m/s.",
        "**Tepe süresi:** 32 / 10 = 3,2 s → uçuş süresi 6,4 s.",
        "**Yükseklik:** 32² / 20 = 1024 / 20 = 51,2 m.",
        "**Menzil:** 24 × 6,4 = 153,6 m.",
      ],
    },
    {
      id: "u4-t06", tip: "tf",
      soru: "Yatay düzlemde aynı ilk hızla 30° ve 60° açılarla atılan iki cisim aynı uzaklığa düşer.",
      dogru: true,
      aciklama: "R = v₀² sin 2θ / g. sin 60° = sin 120° olduğu için tümler açılar (θ ve 90° − θ) aynı menzili verir. Büyük açıyla atılan daha yükseğe çıkar ve havada daha uzun kalır.",
    },
    {
      id: "u4-t07", tip: "mcq",
      soru: "Eğik atılan bir cisim yörüngesinin tepe noktasındayken hızı ve ivmesi için hangisi doğrudur?",
      secenekler: ["Hız yatay ve sıfırdan farklı; ivme g, aşağı", "Hız sıfır; ivme g, aşağı yönlü", "Hız yatay ve sıfırdan farklı; ivme sıfır", "Hız sıfır; ivme de sıfır", "Hız düşey ve aşağı; ivme g, aşağı"],
      dogru: 0,
      aciklama: "Tepe noktasında yalnız düşey hız bileşeni sıfırlanır; yatay bileşen v₀ cos θ hareket boyunca değişmez. İvme her noktada g'dir, aşağı yönlüdür.",
    },
    {
      id: "u4-t08", tip: "mcq", zorluk: 3,
      soru: "Bir top 24 m ötedeki bir duvara yatayla 37° açıyla, 20 m/s hızla atılıyor. Top duvara yerden hangi h yüksekliğinde çarpar? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)\n\n[[G-S4-08]]",
      secenekler: ["6,75 m", "18 m", "11,25 m", "4,5 m", "9 m"],
      dogru: 0,
      aciklama: "Yatay hız sabit: duvara varış süresi 24 / v₀ₓ. Bu süreyi düşey konum denklemine koy.",
      adimlar: [
        "**Bileşenler:** v₀ₓ = 20 × 0,8 = 16 m/s; v₀ᵧ = 20 × 0,6 = 12 m/s.",
        "**Varış süresi:** t = 24 / 16 = 1,5 s.",
        "**Yükseklik:** h = 12 × 1,5 − 5 × 1,5² = 18 − 11,25 = 6,75 m.",
        "**Yorum:** Tepe 1,2 s'de olduğu için top duvara inerken çarpar.",
      ],
    },
  ]),

  ...turet(U, K, "u4-yatay", [
    {
      id: "u4-t09", tip: "mcq",
      soru: "45 m yükseklikteki bir uçurumdan yatay olarak 10 m/s hızla atılan bir taş, uçurumun dibinden ne kadar uzağa düşer ve yere hangi hızla çarpar? (g = 10 m/s²)",
      secenekler: ["x = 30 m; v ≈ 31,6 m/s", "x = 30 m; v = 40 m/s", "x = 45 m; v ≈ 31,6 m/s", "x = 30 m; v = 30 m/s", "x = 90 m; v ≈ 31,6 m/s"],
      dogru: 0,
      aciklama: "Düşey ilk hız sıfır; düşme süresini yükseklik belirler. Çarpma hızı yatay ve düşey bileşenlerin Pisagor toplamıdır.",
      adimlar: [
        "**Süre:** 45 = 5t² → t = 3 s.",
        "**Yatay uzaklık:** x = 10 × 3 = 30 m.",
        "**Düşey hız:** v_y = 10 × 3 = 30 m/s (aşağı).",
        "**Çarpma hızı:** v = √(10² + 30²) = √1000 ≈ 31,6 m/s.",
      ],
    },
    {
      id: "u4-t10", tip: "mcq",
      soru: "Yerden 500 m yükseklikte 50 m/s hızla yatay uçan bir uçak bir paket bırakıyor. Paket yere düştüğünde uçak paketin neresindedir? (Hava direnci yok, g = 10 m/s²)",
      secenekler: ["Tam paketin üstünde", "Paketin 500 m gerisinde", "Paketin 500 m önünde", "Paketin 50 m önünde", "Paketin 250 m önünde"],
      dogru: 0,
      aciklama: "Paket bırakıldığında uçağın yatay hızını taşır ve hava direnci olmadığı için yatayda uçakla aynı hızla gider. Bu yüzden düşerken hep uçağın altındadır.",
      adimlar: [
        "**Düşme süresi:** 500 = 5t² → t = 10 s.",
        "**Paketin yatay yolu:** 50 × 10 = 500 m.",
        "**Uçağın yatay yolu:** 50 × 10 = 500 m. İkisi aynı: uçak paketin tam üstündedir.",
      ],
    },
    {
      id: "u4-t11", tip: "mcq",
      soru: "Bir motosikletli 5 m yüksekliğindeki bir uçurumdan yatay olarak atlayıp 8 m genişliğindeki dereyi geçmek istiyor. Uçuş süresi ve gereken en küçük yatay hız nedir? (g = 10 m/s²)\n\n[[G-S4-09]]",
      secenekler: ["t = 1 s; v₀ = 8 m/s", "t = 2 s; v₀ = 4 m/s", "t = 1 s; v₀ = 5 m/s", "t = 0,5 s; v₀ = 16 m/s", "t = 1 s; v₀ = 10 m/s"],
      dogru: 0,
      aciklama: "Uçuş süresini yalnız düşüş yüksekliği belirler (yatay hızdan bağımsız). Yatay hız bu sürede 8 m almaya yetmeli.",
      adimlar: [
        "**Süre:** 5 = 5t² → t = 1 s.",
        "**Hız:** 8 = v₀ × 1 → v₀ = 8 m/s (en az).",
      ],
    },
    {
      id: "u4-t12", tip: "tf",
      soru: "Aynı yükseklikten biri serbest bırakılan, öbürü yatay olarak atılan iki top yere aynı anda düşer.",
      dogru: true,
      aciklama: "İkisinin de düşey ilk hızı sıfırdır ve düşey ivmeleri g'dir. Yatay hız düşey hareketi etkilemez; düşme süresi t = √(2h/g) ikisi için aynıdır.",
    },
  ]),

  ...turet(U, K, "u4-dairesel", [
    {
      id: "u4-t13", tip: "mcq",
      soru: "Yarıçapı 50 m olan dairesel bir pistte 20 m/s sabit süratle giden bir arabanın merkezcil ivmesi nedir?",
      secenekler: ["8 m/s²", "0,4 m/s²", "2,5 m/s²", "1000 m/s²", "4 m/s²"],
      dogru: 0,
      aciklama: "Düzgün dairesel harekette sürat sabit olsa da hızın yönü sürekli değişir; bunu sağlayan merkezcil ivme a_r = v² / r'dir, merkeze yönelir.",
      adimlar: [
        "**Formül:** a_r = v² / r.",
        "**Hesap:** 20² / 50 = 400 / 50 = 8 m/s².",
      ],
    },
    {
      id: "u4-t14", tip: "mcq",
      soru: "Bir cisim yarıçapı 2 m olan bir çemberde bir turu 4 s'de atıyor. Süratı ve merkezcil ivmesi yaklaşık nedir? (π ≈ 3,14)",
      secenekler: ["v ≈ 3,14 m/s; a ≈ 4,93 m/s²", "v ≈ 3,14 m/s; a ≈ 1,57 m/s²", "v ≈ 1,57 m/s; a ≈ 1,23 m/s²", "v ≈ 6,28 m/s; a ≈ 19,7 m/s²", "v = 0,5 m/s; a = 0,125 m/s²"],
      dogru: 0,
      aciklama: "Bir turda alınan yol çemberin çevresi 2πr, süre periyot T. Sürat v = 2πr / T, merkezcil ivme v² / r.",
      adimlar: [
        "**Sürat:** v = 2π · 2 / 4 = π ≈ 3,14 m/s.",
        "**Merkezcil ivme:** a = π² / 2 ≈ 9,86 / 2 ≈ 4,93 m/s².",
      ],
    },
    {
      id: "u4-t15", tip: "tf",
      soru: "Düzgün dairesel hareket yapan bir cismin sürati sabit olduğu için ivmesi sıfırdır.",
      dogru: false,
      aciklama: "İvme hız vektörünün değişimidir. Süratin büyüklüğü sabit kalsa da yön sürekli değiştiği için bir ivme vardır: merkeze doğru a_r = v² / r.",
    },
    {
      id: "u4-t16", tip: "mcq",
      soru: "Dairesel bir yörüngede hızlanan bir cismin bir anda merkezcil ivmesi 3 m/s², teğetsel ivmesi 4 m/s²'dir. Toplam ivmenin büyüklüğü nedir?",
      secenekler: ["5 m/s²", "7 m/s²", "1 m/s²", "12 m/s²", "3,5 m/s²"],
      dogru: 0,
      aciklama: "Teğetsel ivme hıza paralel, merkezcil ivme hıza diktir. Birbirine dik iki bileşen Pisagor'la toplanır.",
      adimlar: [
        "**Bileşenler dik:** a = √(a_r² + a_t²).",
        "**Hesap:** √(9 + 16) = 5 m/s².",
      ],
    },
    {
      id: "u4-t17", tip: "fill", zorluk: 1,
      soru: "Düzgün dairesel harekette ivme her an çemberin ____ doğru yönelir.",
      bosluklar: [["merkezine", "merkeze", "merkez"]],
      aciklama: "**Merkezcil** (radyal) ivme hız vektörüne diktir ve çemberin merkezine yönelir; büyüklüğü v² / r'dir.",
    },
  ]),

  ...turet(U, K, "u4-bagil", [
    {
      id: "u4-t18", tip: "mcq", zorluk: 1,
      soru: "20 m/s hızla giden bir trenin içinde bir yolcu trenin gidiş yönünde trene göre 2 m/s hızla yürüyor. Yolcunun yere göre hızı nedir?",
      secenekler: ["22 m/s", "18 m/s", "20 m/s", "2 m/s", "40 m/s"],
      dogru: 0,
      aciklama: "Bağıl hız toplama: v_yolcu,yer = v_yolcu,tren + v_tren,yer. Aynı doğrultuda ve yönde oldukları için doğrudan toplanır.",
      adimlar: [
        "**Topla:** 2 + 20 = 22 m/s (trenin yönünde).",
        "**Ters yönde yürüseydi:** 20 − 2 = 18 m/s olurdu.",
      ],
    },
    {
      id: "u4-t19", tip: "mcq",
      soru: "Nehre göre 4 m/s hızla burnu kuzeye (karşı kıyıya) tutulan bir sandal, doğuya 3 m/s hızla akan bir nehirde ilerliyor. Sandalın yere göre hızı nedir? (tan 37° = 0,75)",
      secenekler: ["5 m/s; kuzeyden doğuya 37°", "7 m/s; kuzeyden doğuya 37°", "5 m/s; kuzeyden doğuya 53°", "1 m/s; kuzeye", "5 m/s; kuzeyden batıya 37°"],
      dogru: 0,
      aciklama: "v_sandal,yer = v_sandal,nehir + v_nehir,yer. İki vektör dik olduğundan büyüklük Pisagor'la, yön tanjantla bulunur.",
      adimlar: [
        "**Büyüklük:** √(4² + 3²) = 5 m/s.",
        "**Yön:** tan θ = 3 / 4 = 0,75 → θ = 37°, kuzeyden doğuya (akıntı sandalı doğuya sürükler).",
      ],
    },
    {
      id: "u4-t20", tip: "mcq", zorluk: 3,
      soru: "Genişliği 100 m olan bir nehirde akıntı hızı 3 m/s'dir. Nehre göre 4 m/s hızı olan sandalın burnu karşı kıyıya dik tutuluyor. Sandal karşıya kaç saniyede geçer ve akıntı yönünde ne kadar sürüklenir?",
      secenekler: ["25 s; 75 m", "20 s; 60 m", "25 s; 100 m", "33 s; 100 m", "≈ 38 s; 113 m"],
      dogru: 0,
      aciklama: "Karşıya geçiş süresini yalnız kıyıya dik hız (4 m/s) belirler. Akıntı bu sürede sandalı akıntı yönünde sürükler.",
      adimlar: [
        "**Süre:** t = 100 / 4 = 25 s.",
        "**Sürüklenme:** x = 3 × 25 = 75 m.",
        "**Tuzak:** Yere göre hız 5 m/s ile 100 / 5 = 20 s hesaplamak; sandal 100 m değil, çapraz bir yol alır.",
      ],
    },
  ]),
];
