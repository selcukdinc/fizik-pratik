// 3. bölüm: Bir boyutta hareket
// Sunu örnekleri metinleriyle; şıklar ve adım adım çözümler bizim. Sayısal sorularda g = 10 m/s².
// Sunudaki düzeltmeler: Örnek 10 (e) konum −25 m olmalı (sunu 25 m yazmış);
// sunuda iki ayrı "Örnek 13" var, ikincisi "13, s. 32" diye anılır.

import { sunu, turet, type Soru } from "./tipler.ts";

const U = 3;
const K = "u3";

const ORNEK2 = "Bir cismin konumu zamanla x(t) = 2t³ − 5t + 20 m şeklinde değişiyor.";
const ORNEK3 = "Bir cismin konumu zamanla x(t) = t³ − 5t² + 4 m şeklinde değişiyor.";
const ORNEK10 = "Bir taş bir binanın tepesinden düşey ve yukarı yönde 20 m/s lik ilk hızla fırlatılmıştır. Bina 50 m yüksekliğindedir. (g = 10 m/s²)";
const ORNEK11 = "Yerden 35 m yükseklikteki bir binanın çatısından bir taş yukarı yönde 30 m/s hızla fırlatılıyor. (g = 10 m/s²)";
const ORNEK12 = "Bir top 15 m/s hızla yerden yukarı doğru fırlatılıyor. (g = 10 m/s²)";
const ORNEK13B = "Yerden bir top 12 m/s hızla yukarı doğru atıldığı anda, 32 m yükseklikteki bir binanın çatısından ikinci bir top 4 m/s hızla aşağı yönde fırlatılıyor. (g = 10 m/s²)\n\n[[G-S3-01]]";

export const unite3: Soru[] = [
  ...sunu(U, K, [
    {
      id: "u3-s01", ornek: 1, kavram: "u3-temel", zorluk: 1,
      soru: "x ekseni boyunca hareket eden bir parçacığın konumu t_i = 1 s de x_i = 12 m ve t_s = 3 s de x_s = 4 m dir. Bu zaman aralığında parçacığın yerdeğiştirmesini ve ortalama hızını bulun.",
      secenekler: ["Δx = −8 m; v̄ = −4 m/s", "Δx = 8 m; v̄ = 4 m/s", "Δx = −8 m; v̄ = −2,7 m/s", "Δx = 16 m; v̄ = 8 m/s", "Δx = −8 m; v̄ = −8 m/s"],
      dogru: 0,
      aciklama: "Yerdeğiştirme son konum eksi ilk konumdur (Δx = x_s − x_i); izlenen yola bakmaz, işareti yönü gösterir. Ortalama hız yerdeğiştirmenin geçen süreye oranıdır.",
      adimlar: [
        "**Yerdeğiştirme:** Δx = x_s − x_i = 4 − 12 = −8 m. Eksi işaret parçacığın −x yönünde gittiğini söyler.",
        "**Süre:** Δt = t_s − t_i = 3 − 1 = 2 s. (Süre 3 s değil; saat 1. saniyede başlıyor.)",
        "**Ortalama hız:** v̄ = Δx / Δt = −8 / 2 = −4 m/s.",
      ],
    },
    {
      id: "u3-s02a", ornek: 2, parca: "a", kavram: "u3-temel", zorluk: 1,
      soru: `${ORNEK2} Hareketlinin t = 2 s anındaki konumunu bulun.`,
      secenekler: ["26 m", "36 m", "16 m", "20 m", "46 m"],
      dogru: 0,
      aciklama: "Konum fonksiyonu verildiğinde bir andaki konum, t yerine o anın değerini koyarak bulunur.",
      adimlar: [
        "**t = 2 yaz:** x(2) = 2 · 2³ − 5 · 2 + 20.",
        "**Hesapla:** 2 · 8 = 16; 16 − 10 + 20 = 26 m.",
      ],
    },
    {
      id: "u3-s02b", ornek: 2, parca: "b ve c", kavram: "u3-temel",
      soru: `${ORNEK2} t = 3 s ve t = 5 s arası yerdeğiştirmesini ve ortalama hızını bulun.`,
      secenekler: ["Δx = 186 m; v̄ = 93 m/s", "Δx = 245 m; v̄ = 122,5 m/s", "Δx = 186 m; v̄ = 37,2 m/s", "Δx = 304 m; v̄ = 152 m/s", "Δx = 59 m; v̄ = 29,5 m/s"],
      dogru: 0,
      aciklama: "Önce iki andaki konumu bul, farkını al. Ortalama hız bu farkın süreye bölümüdür; t = 5'e bölmek yaygın bir hatadır, süre 5 − 3 = 2 s.",
      adimlar: [
        "**t = 3 s'deki konum:** x(3) = 2 · 27 − 15 + 20 = 59 m.",
        "**t = 5 s'deki konum:** x(5) = 2 · 125 − 25 + 20 = 245 m.",
        "**Yerdeğiştirme:** Δx = x(5) − x(3) = 245 − 59 = 186 m.",
        "**Ortalama hız:** v̄ = Δx / Δt = 186 / (5 − 3) = 93 m/s.",
      ],
    },
    {
      id: "u3-s02c", ornek: 2, parca: "d ve e", kavram: "u3-turev",
      soru: `${ORNEK2} Hızın zamana göre fonksiyonunu ve t = 4 s anındaki anlık hızı bulun.`,
      secenekler: ["v(t) = 6t² − 5; v(4) = 91 m/s", "v(t) = 6t² − 5t; v(4) = 76 m/s", "v(t) = 2t² − 5; v(4) = 27 m/s", "v(t) = 6t² + 20; v(4) = 116 m/s", "v(t) = 6t − 5; v(4) = 19 m/s"],
      dogru: 0,
      aciklama: "Anlık hız konumun zamana göre türevidir: v = dx/dt. tⁿ'nin türevi n·tⁿ⁻¹, sabitin türevi sıfırdır.",
      adimlar: [
        "**Terim terim türev al:** d(2t³)/dt = 6t², d(−5t)/dt = −5, d(20)/dt = 0.",
        "**Hız fonksiyonu:** v(t) = 6t² − 5 m/s. Sabit 20 m (başlangıç konumu) hıza katkı vermez.",
        "**t = 4 s:** v(4) = 6 · 16 − 5 = 96 − 5 = 91 m/s.",
      ],
    },
    {
      id: "u3-s02d", ornek: 2, parca: "f", kavram: "u3-turev", zorluk: 1,
      soru: `${ORNEK2} İvmenin zamana göre fonksiyonunu bulun.`,
      secenekler: ["a(t) = 12t m/s²", "a(t) = 6t² m/s²", "a(t) = 12 m/s²", "a(t) = 12t − 5 m/s²", "a(t) = 6t m/s²"],
      dogru: 0,
      aciklama: "İvme hızın zamana göre türevidir: a = dv/dt (konumun ikinci türevi).",
      adimlar: [
        "**Hız:** v(t) = 6t² − 5 (önceki parçadan).",
        "**Türev:** d(6t²)/dt = 12t, d(−5)/dt = 0. Buradan a(t) = 12t m/s².",
        "**Yorum:** İvme zamanla artıyor; bu hareket sabit ivmeli değildir, o yüzden sabit ivme formülleri burada kullanılamaz.",
      ],
    },
    {
      id: "u3-s03a", ornek: 3, parca: "a", kavram: "u3-turev", zorluk: 1,
      soru: `${ORNEK3} Hız ve ivmenin zamana göre fonksiyonlarını bulun.`,
      secenekler: ["v = 3t² − 10t; a = 6t − 10", "v = 3t² − 5t; a = 6t − 5", "v = t² − 10t; a = 2t − 10", "v = 3t² − 10t + 4; a = 6t − 10", "v = 3t² − 10; a = 6t"],
      dogru: 0,
      aciklama: "v = dx/dt ve a = dv/dt. Türev alırken her terimi ayrı ayrı türevle; sabit terim (4) düşer.",
      adimlar: [
        "**Hız:** d(t³)/dt = 3t², d(−5t²)/dt = −10t, d(4)/dt = 0. Buradan v(t) = 3t² − 10t m/s.",
        "**İvme:** d(3t²)/dt = 6t, d(−10t)/dt = −10. Buradan a(t) = 6t − 10 m/s².",
      ],
    },
    {
      id: "u3-s03b", ornek: 3, parca: "b", kavram: "u3-turev",
      soru: `${ORNEK3} Cismin t = 1 s ve t = 5 s anındaki hızlarını bulun.`,
      secenekler: ["v(1) = −7 m/s; v(5) = 25 m/s", "v(1) = 7 m/s; v(5) = 25 m/s", "v(1) = −7 m/s; v(5) = 75 m/s", "v(1) = −4 m/s; v(5) = 20 m/s", "v(1) = 0; v(5) = 4 m/s"],
      dogru: 0,
      aciklama: "Hız fonksiyonu v(t) = 3t² − 10t'ye t değerlerini koy. Eksi hız, cismin o anda −x yönünde gittiğini gösterir.",
      adimlar: [
        "**t = 1 s:** v(1) = 3 · 1 − 10 · 1 = −7 m/s (cisim −x yönünde gidiyor).",
        "**t = 5 s:** v(5) = 3 · 25 − 10 · 5 = 75 − 50 = 25 m/s (+x yönünde).",
      ],
    },
    {
      id: "u3-s03c", ornek: 3, parca: "c", kavram: "u3-temel",
      soru: `${ORNEK3} Cismin t = 1 s ile t = 5 s zaman aralığındaki ortalama ivmesini hesaplayın.`,
      secenekler: ["8 m/s²", "4,5 m/s²", "6 m/s²", "32 m/s²", "−8 m/s²"],
      dogru: 0,
      aciklama: "Ortalama ivme hız değişiminin süreye oranıdır: ā = Δv / Δt. Ani ivmelerin ortalaması alınmaz, uçlardaki hızlar kullanılır.",
      adimlar: [
        "**Hız değişimi:** Δv = v(5) − v(1) = 25 − (−7) = 32 m/s. Eksinin eksisi artı olur; burası en sık hata yapılan yer.",
        "**Süre:** Δt = 5 − 1 = 4 s.",
        "**Ortalama ivme:** ā = 32 / 4 = 8 m/s².",
      ],
    },
    {
      id: "u3-s03d", ornek: 3, parca: "d", kavram: "u3-turev",
      soru: `${ORNEK3} Cismin t = 1 s ve t = 5 s anındaki ivmelerini bulun.`,
      secenekler: ["a(1) = −4 m/s²; a(5) = 20 m/s²", "a(1) = 4 m/s²; a(5) = 20 m/s²", "a(1) = −4 m/s²; a(5) = 30 m/s²", "a(1) = −10 m/s²; a(5) = 20 m/s²", "a(1) = 8 m/s²; a(5) = 8 m/s²"],
      dogru: 0,
      aciklama: "Ani ivme, ivme fonksiyonu a(t) = 6t − 10'un o andaki değeridir. Sonucu ortalama ivmeyle (8 m/s²) karşılaştırmak iki kavramın farkını gösterir.",
      adimlar: [
        "**t = 1 s:** a(1) = 6 · 1 − 10 = −4 m/s².",
        "**t = 5 s:** a(5) = 6 · 5 − 10 = 20 m/s².",
        "**Karşılaştır:** Ortalama ivme 8 m/s² idi; ani ivme bu aralıkta −4'ten 20'ye değişiyor. İvme doğrusal değiştiği için ortalama, uçların ortası olan 8'e eşit çıktı.",
      ],
    },
    {
      id: "u3-s03e", ornek: 3, parca: "e", kavram: "u3-turev",
      soru: `${ORNEK3} İvmenin sıfır olduğu anı bulun.`,
      secenekler: ["t ≈ 1,7 s", "t ≈ 3,3 s", "t = 0", "t = 10 s", "t = 0,6 s"],
      dogru: 0,
      aciklama: "İvme fonksiyonunu sıfıra eşitle ve t'yi çöz.",
      adimlar: [
        "**Denklem:** a(t) = 6t − 10 = 0.",
        "**Çöz:** t = 10 / 6 = 5/3 ≈ 1,7 s.",
        "**Yorum:** Bu anda hız en küçük (en negatif) değerindedir: v(5/3) = 3 · 25/9 − 50/3 ≈ −8,3 m/s. Hızın türevi sıfır olduğu için hız-zaman eğrisinin dip noktasıdır.",
      ],
    },
    {
      id: "u3-s04", ornek: 4, kavram: "u3-sabit-ivme",
      soru: "Bir cisim yatay bir buz tabakası üzerinde itiliyor ve 5 s sonra 25 m uzakta duruyor. Cisme verilen ilk hızı ve ivmeyi hesaplayın.",
      secenekler: ["v₀ = 10 m/s; a = −2 m/s²", "v₀ = 5 m/s; a = −1 m/s²", "v₀ = 10 m/s; a = −4 m/s²", "v₀ = 5 m/s; a = −2 m/s²", "v₀ = 25 m/s; a = −5 m/s²"],
      dogru: 0,
      aciklama: "Cisim düzgün yavaşlayıp durduğu için son hız sıfırdır. Sabit ivmede yerdeğiştirme ortalama hız ile süre çarpımıdır: Δx = ½(v₀ + v) t. Bu bağıntı ivmeyi bilmeden v₀'ı verir.",
      adimlar: [
        "**Bilinenler:** t = 5 s, Δx = 25 m, v = 0 (duruyor). Bilinmeyenler: v₀ ve a.",
        "**İlk hız:** Δx = ½(v₀ + v) t → 25 = ½(v₀ + 0) · 5 → v₀ = 10 m/s.",
        "**İvme:** v = v₀ + at → 0 = 10 + a · 5 → a = −2 m/s². Eksi işaret ivmenin harekete ters, yani yavaşlatıcı olduğunu gösterir.",
        "**Kontrol:** x = v₀t + ½at² = 10 · 5 + ½(−2)(25) = 50 − 25 = 25 m ✓.",
      ],
    },
    {
      id: "u3-s05a", ornek: 5, parca: "a", kavram: "u3-sabit-ivme", zorluk: 1,
      soru: "Durmakta olan bir araba sabit 2 m/s² ivme ile hızlanıyor. 3 s sonra hızı ve aldığı yol ne kadar olur?",
      secenekler: ["v = 6 m/s; x = 9 m", "v = 6 m/s; x = 18 m", "v = 5 m/s; x = 9 m", "v = 6 m/s; x = 6 m", "v = 3 m/s; x = 4,5 m"],
      dogru: 0,
      aciklama: "\"Durmakta olan\" ifadesi v₀ = 0 demektir. Başlangıç noktasını x₀ = 0 alınca denklemler v = at ve x = ½at² olur.",
      adimlar: [
        "**Denklemleri sadeleştir:** v₀ = 0, a = 2 → v = 2t ve x = ½ · 2 · t² = t².",
        "**Hız:** v = 2 · 3 = 6 m/s.",
        "**Yol:** x = 3² = 9 m.",
      ],
    },
    {
      id: "u3-s05b", ornek: 5, parca: "b", kavram: "u3-sabit-ivme", zorluk: 1,
      soru: "Durmakta olan bir araba sabit 2 m/s² ivme ile hızlanıyor. 10 m/s hıza kaç saniyede ulaşır?",
      secenekler: ["5 s", "20 s", "10 s", "√10 s", "2,5 s"],
      dogru: 0,
      aciklama: "Hız denklemi v = v₀ + at'de v₀ = 0 olduğundan t = v / a.",
      adimlar: [
        "**Hız denklemi:** v = 2t.",
        "**Çöz:** 10 = 2t → t = 5 s.",
      ],
    },
    {
      id: "u3-s05c", ornek: 5, parca: "c", kavram: "u3-sabit-ivme",
      soru: "Durmakta olan bir araba sabit 2 m/s² ivme ile hızlanıyor. 64 m uzaklığa kaç saniyede ulaşır?",
      secenekler: ["8 s", "32 s", "16 s", "4 s", "64 s"],
      dogru: 0,
      aciklama: "Konum denklemi x = ½at²; v₀ = 0 ve a = 2 olduğunda x = t² olur.",
      adimlar: [
        "**Konum denklemi:** x = t².",
        "**Çöz:** 64 = t² → t = 8 s (negatif kök fiziksel değil).",
      ],
    },
    {
      id: "u3-s06a", ornek: 6, parca: "a", kavram: "u3-sabit-ivme",
      soru: "Uçak gemisine iniş: Bir jet, uçak gemisine 140 mil/saat (63 m/s) hızla iniyor ve 2 saniye içinde duruyor. Uçağın ivmesi nedir?",
      secenekler: ["−31,5 m/s²", "−63 m/s²", "−126 m/s²", "31,5 m/s²", "−15,75 m/s²"],
      dogru: 0,
      aciklama: "Son hız sıfır, süre biliniyor: ivme hızdaki değişimin süreye bölümüdür, a = (v_s − v_i) / t.",
      adimlar: [
        "**Bilinenler:** v_i = 63 m/s, v_s = 0, t = 2 s.",
        "**İvme:** a = (0 − 63) / 2 = −31,5 m/s². Bu yerçekimi ivmesinin üç katından fazla; pilot öne doğru güçlü bir itme hisseder.",
      ],
    },
    {
      id: "u3-s06b", ornek: 6, parca: "b", kavram: "u3-sabit-ivme",
      soru: "Uçak gemisine iniş: Bir jet, uçak gemisine 140 mil/saat (63 m/s) hızla iniyor ve 2 saniye içinde duruyor. Bu süre içinde uçağın yer değiştirmesi nedir?",
      secenekler: ["63 m", "126 m", "31,5 m", "252 m", "94,5 m"],
      dogru: 0,
      aciklama: "Sabit ivmede ortalama hız ilk ve son hızın ortalamasıdır; yerdeğiştirme bu ortalama hız ile sürenin çarpımıdır: x_s − x_i = ½(v_i + v_s) t.",
      adimlar: [
        "**Ortalama hız:** ½(63 + 0) = 31,5 m/s.",
        "**Yerdeğiştirme:** 31,5 × 2 = 63 m.",
        "**Kontrol:** x = v_i t + ½at² = 63 · 2 + ½(−31,5)(4) = 126 − 63 = 63 m ✓.",
      ],
    },
    {
      id: "u3-s07", ornek: 7, kavram: "u3-sabit-ivme",
      soru: "Bir uçak havalanırken pistte sabit ivme ile 30 s gittikten sonra havalanmaktadır. Pistte aldığı yol x = 1,2 km olduğuna göre havalanma anındaki hızı hesaplayınız.",
      secenekler: ["80 m/s (288 km/sa)", "40 m/s (144 km/sa)", "2,67 m/s (9,6 km/sa)", "160 m/s (576 km/sa)", "80 m/s (22 km/sa)"],
      dogru: 0,
      aciklama: "Uçak durgun başlar (v₀ = 0). Önce x = ½at²'den ivme, sonra v = at'den hız bulunur. Birim dönüşümünde 1 m/s = 3,6 km/sa.",
      adimlar: [
        "**Birim:** x = 1,2 km = 1200 m.",
        "**İvme:** x = ½at² → a = 2x / t² = 2 · 1200 / 30² = 2400 / 900 = 24/9 ≈ 2,67 m/s².",
        "**Hız:** v = at = (24/9) · 30 = 80 m/s.",
        "**km/sa'e çevir:** 80 × 3600 / 1000 = 288 km/sa.",
        "**Kısa yol:** v₀ = 0 iken x = ½ v t olduğundan v = 2x / t = 2400 / 30 = 80 m/s; ivmeye hiç gerek kalmaz.",
      ],
    },
    {
      id: "u3-s08a", ornek: 8, parca: "a", kavram: "u3-sabit-ivme",
      soru: "72 km/sa hızla gitmekte olan bir otomobil frene basarak yavaşlatılıyor ve 5 s içinde hızı 36 km/sa düşürülüyor. Arabanın sabit ivmesi nedir?",
      secenekler: ["−2 m/s²", "−7,2 m/s²", "−10 m/s²", "2 m/s²", "−4 m/s²"],
      dogru: 0,
      aciklama: "Hızlar km/sa verildi; s ile birlikte kullanmadan önce m/s'ye çevir (÷ 3,6). Sonra a = (v − v₀) / t.",
      adimlar: [
        "**Birimler:** v₀ = 72 / 3,6 = 20 m/s; v = 36 / 3,6 = 10 m/s.",
        "**İvme:** v = v₀ + at → 10 = 20 + a · 5 → a = −2 m/s².",
      ],
    },
    {
      id: "u3-s08b", ornek: 8, parca: "b", kavram: "u3-sabit-ivme",
      soru: "72 km/sa hızla gitmekte olan bir otomobil frene basarak yavaşlatılıyor ve 5 s içinde hızı 36 km/sa düşürülüyor. Bu süre içinde ne kadar yol alır?",
      secenekler: ["75 m", "100 m", "50 m", "25 m", "270 m"],
      dogru: 0,
      aciklama: "İvme bulunduktan sonra x = v₀t + ½at² kullanılır.",
      adimlar: [
        "**Değerler:** v₀ = 20 m/s, a = −2 m/s², t = 5 s.",
        "**Yol:** x = 20 · 5 + ½(−2) · 5² = 100 − 25 = 75 m.",
        "**Kontrol:** Ortalama hız (20 + 10)/2 = 15 m/s; 15 × 5 = 75 m ✓.",
      ],
    },
    {
      id: "u3-s08c", ornek: 8, parca: "c", kavram: "u3-sabit-ivme",
      soru: "72 km/sa hızla gitmekte olan bir otomobil frene basarak yavaşlatılıyor ve 5 s içinde hızı 36 km/sa düşürülüyor. Başlangıçtan itibaren arabanın tamamen durması için geçen süre ne kadardır?",
      secenekler: ["10 s", "5 s", "15 s", "20 s", "7,5 s"],
      dogru: 0,
      aciklama: "Aynı ivmeyle frenlemeye devam ederse son hız sıfır olana kadar geçen süreyi v = v₀ + at verir.",
      adimlar: [
        "**Denklem:** 0 = 20 + (−2) t.",
        "**Çöz:** t = 10 s. Hızın yarısını 5 s'de kaybetti, kalan yarısını da 5 s'de kaybeder.",
      ],
    },
    {
      id: "u3-s09a", ornek: 9, parca: "a", kavram: "u3-sabit-ivme",
      soru: "4 m/s hızla koşmakta olan bir yarışçı aniden hızlanmaya başlıyor ve 11 m yol sonunda 7 m/s hıza ulaşıyor. Yarışçının sabit ivmesi ne kadardır?",
      secenekler: ["1,5 m/s²", "3 m/s²", "0,27 m/s²", "2,2 m/s²", "0,75 m/s²"],
      dogru: 0,
      aciklama: "Süre verilmemiş: zamansız hız denklemi v² = v₀² + 2aΔx doğrudan ivmeyi verir.",
      adimlar: [
        "**Zamansız denklem:** v² = v₀² + 2aΔx.",
        "**Yerine koy:** 49 = 16 + 2a · 11 → 33 = 22a.",
        "**Çöz:** a = 33 / 22 = 1,5 m/s².",
      ],
    },
    {
      id: "u3-s09b", ornek: 9, parca: "b", kavram: "u3-sabit-ivme",
      soru: "4 m/s hızla koşmakta olan bir yarışçı aniden hızlanmaya başlıyor ve 11 m yol sonunda 7 m/s hıza ulaşıyor. Yarışçının hızlanması ne kadar sürmüştür?",
      secenekler: ["2 s", "1 s", "3 s", "4,7 s", "1,6 s"],
      dogru: 0,
      aciklama: "İvme bulunduktan sonra v = v₀ + at; ya da ivmeye gerek duymadan Δx = ½(v₀ + v) t.",
      adimlar: [
        "**Hız denklemi:** 7 = 4 + 1,5 t → t = 3 / 1,5 = 2 s.",
        "**Kontrol:** Ortalama hız (4 + 7)/2 = 5,5 m/s; 11 m / 5,5 m/s = 2 s ✓.",
      ],
    },
    {
      id: "u3-s10a", ornek: 10, parca: "a ve b", kavram: "u3-serbest",
      soru: `${ORNEK10} Taşın maksimum yüksekliğe ulaşması için geçen zamanı ve maksimum yüksekliği (atıldığı noktaya göre) bulunuz.`,
      secenekler: ["t = 2 s; y_max = 20 m", "t = 2 s; y_max = 40 m", "t = 4 s; y_max = 20 m", "t = 2 s; y_max = 70 m", "t = 0,5 s; y_max = 10 m"],
      dogru: 0,
      aciklama: "Orijini atış noktasında, +y'yi yukarı al; ivme −g. Tepe noktasında hız sıfırdır: v = v₀ − gt = 0.",
      adimlar: [
        "**Tepe anı:** 0 = 20 − 10 t₁ → t₁ = 2 s.",
        "**Yükseklik:** y_max = v₀t₁ − ½g t₁² = 20 · 2 − 5 · 4 = 40 − 20 = 20 m (atıldığı noktadan). Yerden 50 + 20 = 70 m.",
        "**Kısa yol:** y_max = v₀² / 2g = 400 / 20 = 20 m.",
      ],
    },
    {
      id: "u3-s10b", ornek: 10, parca: "c ve d", kavram: "u3-serbest",
      soru: `${ORNEK10} Taşın atıldığı seviyeye geri gelmesi için geçen zamanı ve taşın bu andaki hızını bulunuz.`,
      secenekler: ["t = 4 s; v = −20 m/s", "t = 2 s; v = 0", "t = 4 s; v = 20 m/s", "t = 4 s; v = −40 m/s", "t = 5 s; v = −30 m/s"],
      dogru: 0,
      aciklama: "Düşey atış simetriktir: çıkış süresi iniş süresine eşittir ve aynı seviyeye aynı büyüklükte ama ters yönde hızla döner.",
      adimlar: [
        "**Süre:** t_u = 2t₁ = 2 · 2 = 4 s. (Ya da y = 20t − 5t² = 0 → t = 4 s.)",
        "**Hız:** v = v₀ − g t₂ = 20 − 10 · 4 = −20 m/s.",
        "**Yorum:** Büyüklük atış hızıyla aynı (20 m/s), eksi işaret aşağı doğru gittiğini gösterir.",
      ],
    },
    {
      id: "u3-s10c", ornek: 10, parca: "e", kavram: "u3-serbest",
      soru: `${ORNEK10} t = 5 saniyede taşın hızını ve konumunu (atıldığı noktaya göre) bulunuz.`,
      secenekler: ["v = −30 m/s; y = −25 m", "v = −30 m/s; y = 25 m", "v = 30 m/s; y = −25 m", "v = −50 m/s; y = −125 m", "v = −30 m/s; y = −45 m"],
      dogru: 0,
      aciklama: "Aynı denklemler (v = v₀ − gt, y = v₀t − ½gt²) taş hangi yönde giderse gitsin geçerlidir; hareketi parçalara ayırmaya gerek yok. Not: sunu bu konumu 25 m yazmış; işlem 100 − 125 = −25 m verir.",
      adimlar: [
        "**Hız:** v = 20 − 10 · 5 = −30 m/s.",
        "**Konum:** y = 20 · 5 − 5 · 5² = 100 − 125 = −25 m.",
        "**Yorum:** Eksi konum taşın atıldığı noktanın 25 m altında, yani yerden 50 − 25 = 25 m yükseklikte olduğunu söyler. Sunudaki \"25 m\" bu yerden yüksekliğe denk gelir; atış noktasına göre konum −25 m'dir.",
      ],
    },
    {
      id: "u3-s11a", ornek: 11, parca: "a ve b", kavram: "u3-serbest",
      soru: `${ORNEK11} Yer hizasını orijin ve yukarı yönü pozitif alarak maksimum yüksekliği (yerden) ve çıkış zamanını hesaplayın.`,
      secenekler: ["t = 3 s; y_max = 80 m", "t = 3 s; y_max = 45 m", "t = 6 s; y_max = 80 m", "t = 3 s; y_max = 125 m", "t = 30 s; y_max = 80 m"],
      dogru: 0,
      aciklama: "Orijin yerde olduğundan y₀ = 35 m. Hareket denklemleri: v = 30 − 10t ve y = 35 + 30t − 5t². Tepede v = 0.",
      adimlar: [
        "**Denklemler:** v = v₀ + at = 30 − 10t; y = y₀ + v₀t + ½at² = 35 + 30t − 5t².",
        "**Çıkış zamanı:** 0 = 30 − 10t → t = 3 s.",
        "**Maksimum yükseklik:** y = 35 + 30 · 3 − 5 · 9 = 35 + 90 − 45 = 80 m (yerden).",
        "**Atıldığı yerden:** 80 − 35 = 45 m.",
      ],
    },
    {
      id: "u3-s11b", ornek: 11, parca: "c ve d", kavram: "u3-serbest",
      soru: `${ORNEK11} Yere düşünceye kadar kaç saniye geçer ve taş yere hangi hızla çarpar?`,
      secenekler: ["t = 7 s; v = −40 m/s", "t = 6 s; v = −30 m/s", "t = 7 s; v = 40 m/s", "t = 4 s; v = −40 m/s", "t = 7 s; v = −70 m/s"],
      dogru: 0,
      aciklama: "Yere düşmek y = 0 demektir. İkinci dereceden denklem iki kök verir; negatif zaman fiziksel değildir.",
      adimlar: [
        "**Denklem:** 0 = 35 + 30t − 5t². 5'e böl: t² − 6t − 7 = 0.",
        "**Çarpanlara ayır:** (t − 7)(t + 1) = 0 → t = 7 s ya da t = −1 s. Negatif kök atılır: t = 7 s.",
        "**Çarpma hızı:** v = 30 − 10 · 7 = −40 m/s. Eksi işaret aşağı yönü gösterir.",
        "**Kontrol:** Zamansız denklem: v² = 30² + 2(−10)(0 − 35) = 900 + 700 = 1600 → |v| = 40 m/s ✓.",
      ],
    },
    {
      id: "u3-s12a", ornek: 12, parca: "a ve b", kavram: "u3-serbest", zorluk: 1,
      soru: `${ORNEK12} Atıldığı yeri orijin, yukarıyı pozitif alarak t = 1 s sonraki konumu ve hızı bulun.`,
      secenekler: ["y = 10 m; v = 5 m/s", "y = 15 m; v = 5 m/s", "y = 10 m; v = −5 m/s", "y = 20 m; v = 25 m/s", "y = 5 m; v = 10 m/s"],
      dogru: 0,
      aciklama: "Hareket denklemleri v = 15 − 10t ve y = 15t − 5t². Bir andaki hız ve konum doğrudan yerine koyarak bulunur.",
      adimlar: [
        "**Denklemler:** v = v₀ − gt = 15 − 10t; y = v₀t − ½gt² = 15t − 5t².",
        "**t = 1 s:** v = 15 − 10 = 5 m/s (hâlâ yukarı çıkıyor).",
        "**t = 1 s:** y = 15 − 5 = 10 m.",
      ],
    },
    {
      id: "u3-s12b", ornek: 12, parca: "c ve d", kavram: "u3-serbest",
      soru: `${ORNEK12} Maksimum yüksekliğe kaç saniyede çıkar ve maksimum yükseklik ne kadardır?`,
      secenekler: ["t = 1,5 s; y ≈ 11,3 m", "t = 1,5 s; y = 22,5 m", "t = 3 s; y ≈ 11,3 m", "t = 1 s; y = 10 m", "t = 1,5 s; y = 15 m"],
      dogru: 0,
      aciklama: "Tepede hız sıfırdır; bu koşul zamanı, zaman da konum denklemiyle yüksekliği verir.",
      adimlar: [
        "**Zaman:** 0 = 15 − 10t → t = 1,5 s.",
        "**Yükseklik:** y = 15 · 1,5 − 5 · 1,5² = 22,5 − 11,25 = 11,25 ≈ 11,3 m.",
        "**Kontrol:** v₀² / 2g = 225 / 20 = 11,25 m ✓.",
      ],
    },
    {
      id: "u3-s12c", ornek: 12, parca: "e", kavram: "u3-serbest",
      soru: `${ORNEK12} Top yerden 10 m yükseklikten hangi zamanlarda geçer?`,
      secenekler: ["t = 1 s ve t = 2 s", "Yalnız t = 1 s", "t = 0,5 s ve t = 2,5 s", "Yalnız t = 2 s", "t = 1 s ve t = 3 s"],
      dogru: 0,
      aciklama: "Konum denklemini 10 m'ye eşitle. Top bu yükseklikten bir kez çıkarken, bir kez inerken geçer; iki kök de geçerlidir.",
      adimlar: [
        "**Denklem:** 10 = 15t − 5t² → 5t² − 15t + 10 = 0 → t² − 3t + 2 = 0.",
        "**Çarpanlar:** (t − 1)(t − 2) = 0 → t = 1 s ve t = 2 s.",
        "**Yorum:** t = 1 s'de yukarı çıkarken (v = +5), t = 2 s'de aşağı inerken (v = −5) geçer. İki an tepe anı 1,5 s'ye göre simetriktir.",
      ],
    },
    {
      id: "u3-s12d", ornek: 12, parca: "f", kavram: "u3-serbest", zorluk: 1,
      soru: `${ORNEK12} Atıldığından itibaren kaç saniye sonra yere düşer?`,
      secenekler: ["3 s", "1,5 s", "2 s", "4,5 s", "6 s"],
      dogru: 0,
      aciklama: "Yere dönmek y = 0 demektir. Çıkış süresi iniş süresine eşit olduğu için tepe zamanının iki katı da aynı sonucu verir.",
      adimlar: [
        "**Denklem:** 0 = 15t − 5t² = t(15 − 5t).",
        "**Kökler:** t = 0 (başlangıç anı) ve t = 3 s (düşüş anı).",
        "**Kontrol:** 2 × 1,5 s = 3 s ✓.",
      ],
    },
    {
      id: "u3-s13", ornek: 13, kavram: "u3-serbest", zorluk: 3,
      soru: "Yerden 45 m yükseklikteki bir binanın çatısından 1 s aralıklarla su damlıyor. Bir damla yere çarptığı anda ikinci damlanın yüksekliği ne kadardır? (g = 10 m/s²)",
      secenekler: ["25 m", "20 m", "35 m", "40 m", "5 m"],
      dogru: 0,
      aciklama: "Her damlaya kendi kronometresini ver: ikinci damla birinciden 1 s sonra yola çıktığı için t₂ = t₁ − 1. Orijini çatıda, aşağıyı pozitif almak denklemleri sadeleştirir: y = ½gt².",
      adimlar: [
        "**Birinci damlanın düşüş süresi:** 45 = ½ · 10 · t₁² → t₁² = 9 → t₁ = 3 s.",
        "**İkinci damlanın süresi:** t₂ = t₁ − 1 = 2 s.",
        "**İkinci damlanın düştüğü yol:** y₂ = ½ · 10 · 2² = 20 m (çatıdan aşağı).",
        "**Yerden yükseklik:** 45 − 20 = 25 m.",
      ],
    },
    {
      id: "u3-s14a", ornek: "13, s. 32", parca: "b ve c", kavram: "u3-serbest", zorluk: 3,
      soru: `${ORNEK13B}\n\nİki top ne zaman ve hangi yükseklikte çarpışırlar?`,
      secenekler: ["t = 2 s; y = 4 m", "t = 2 s; y = 12 m", "t = 4 s; y = 4 m", "t = 1,6 s; y = 6,4 m", "t = 2 s; y = 0"],
      dogru: 0,
      aciklama: "İki topu aynı koordinat sisteminde yaz: orijin yerde, +y yukarı. Çarpışma anında iki topun y konumu aynıdır.",
      adimlar: [
        "**1. top:** y₁₀ = 0, v₁₀ = +12 m/s → y₁ = 12t − 5t².",
        "**2. top:** y₂₀ = 32 m, v₂₀ = −4 m/s (aşağı) → y₂ = 32 − 4t − 5t².",
        "**Eşitle:** 12t − 5t² = 32 − 4t − 5t². −5t² terimleri sadeleşir: 16t = 32 → t = 2 s.",
        "**Yükseklik:** y₁ = 12 · 2 − 5 · 4 = 24 − 20 = 4 m. Kontrol: y₂ = 32 − 8 − 20 = 4 m ✓.",
      ],
    },
    {
      id: "u3-s14b", ornek: "13, s. 32", parca: "d", kavram: "u3-serbest", zorluk: 3,
      soru: `${ORNEK13B}\n\nÇarpıştıkları anda her birinin hızı ne kadardır?`,
      secenekler: ["v₁ = −8 m/s; v₂ = −24 m/s", "v₁ = 8 m/s; v₂ = −24 m/s", "v₁ = −8 m/s; v₂ = −16 m/s", "v₁ = 12 m/s; v₂ = −4 m/s", "v₁ = 32 m/s; v₂ = −24 m/s"],
      dogru: 0,
      aciklama: "Çarpışma anı t = 2 s'yi iki topun hız denklemine koy: v₁ = 12 − 10t, v₂ = −4 − 10t.",
      adimlar: [
        "**Çarpışma anı:** t = 2 s (önceki parça).",
        "**1. top:** v₁ = 12 − 10 · 2 = −8 m/s.",
        "**2. top:** v₂ = −4 − 10 · 2 = −24 m/s.",
        "**Yorum:** v₁ negatif: 1. top 1,2 s'de tepeye çıkmış, geri dönmüş ve aşağı inerken çarpışmıştır.",
      ],
    },
  ]),

  ...turet(U, K, "u3-temel", [
    {
      id: "u3-t01", tip: "mcq",
      soru: "Bir koşucu 10 s'de doğuya 30 m gidiyor, sonra 5 s'de batıya 10 m geri dönüyor. Bu 15 s için ortalama hızın büyüklüğü ve ortalama sürat nedir?",
      secenekler: ["v̄ ≈ 1,33 m/s; sürat ≈ 2,67 m/s", "v̄ ≈ 2,67 m/s; sürat ≈ 1,33 m/s", "v̄ = 2 m/s; sürat = 2 m/s", "v̄ ≈ 1,33 m/s; sürat ≈ 1,33 m/s", "v̄ = 4 m/s; sürat ≈ 2,67 m/s"],
      dogru: 0,
      aciklama: "Ortalama hız yerdeğiştirmeyi (son − ilk konum), ortalama sürat ise toplam yolu kullanır. Geri dönüş olduğunda ikisi farklı çıkar.",
      adimlar: [
        "**Yerdeğiştirme:** doğu +: Δx = +30 − 10 = +20 m.",
        "**Toplam yol:** 30 + 10 = 40 m.",
        "**Süre:** 10 + 5 = 15 s.",
        "**Sonuç:** v̄ = 20 / 15 ≈ 1,33 m/s (doğuya); ortalama sürat = 40 / 15 ≈ 2,67 m/s.",
      ],
    },
    {
      id: "u3-t02", tip: "tf", zorluk: 1,
      soru: "Bir cisim hareket ettiği sürece yerdeğiştirmesi her zaman sıfırdan farklıdır.",
      dogru: false,
      aciklama: "Yerdeğiştirme yalnız ilk ve son konuma bakar. Başladığı yere dönen bir cismin (ör. pistte bir tur atan koşucu) yolu sıfırdan büyük ama yerdeğiştirmesi sıfırdır; ortalama hızı da sıfır olur.",
    },
    {
      id: "u3-t03", tip: "mcq",
      soru: "x ekseninde hareket eden bir cisim t = 2 s'de x = −6 m, t = 6 s'de x = 10 m konumundadır. Bu aralıktaki ortalama hızı nedir?",
      secenekler: ["4 m/s", "1 m/s", "−4 m/s", "2,5 m/s", "16 m/s"],
      dogru: 0,
      aciklama: "v̄ = (x_s − x_i) / (t_s − t_i). İlk konum negatif olduğu için eksiyi dikkatle çıkar.",
      adimlar: [
        "**Yerdeğiştirme:** Δx = 10 − (−6) = 16 m.",
        "**Süre:** Δt = 6 − 2 = 4 s.",
        "**Ortalama hız:** v̄ = 16 / 4 = 4 m/s.",
      ],
    },
    {
      id: "u3-t04", tip: "fill", zorluk: 1,
      soru: "Toplam yolun geçen süreye oranına ortalama ____ denir; bu büyüklük skalerdir ve hiçbir zaman negatif olmaz.",
      bosluklar: [["sürat", "surat"]],
      aciklama: "**Ortalama sürat** = toplam yol / süre. Ortalama hız ise yerdeğiştirme / süredir ve işaretli (vektörel) bir büyüklüktür.",
    },
  ]),

  ...turet(U, K, "u3-turev", [
    {
      id: "u3-t05", tip: "mcq",
      soru: "Bir cismin konumu x(t) = 4t² − 3t + 2 m ile veriliyor. t = 2 s anındaki hızı nedir?",
      secenekler: ["13 m/s", "12 m/s", "16 m/s", "8 m/s", "5 m/s"],
      dogru: 0,
      aciklama: "Ani hız konumun türevidir: v = dx/dt.",
      adimlar: [
        "**Türev:** v(t) = 8t − 3.",
        "**t = 2:** v(2) = 16 − 3 = 13 m/s.",
        "**Tuzak:** x(2) = 16 − 6 + 2 = 12 m konumdur, hız değil.",
      ],
    },
    {
      id: "u3-t06", tip: "mcq",
      soru: "Konumu x(t) = t³ − 6t² + 9t m olan bir cisim hangi anlarda anlık olarak durur?",
      secenekler: ["t = 1 s ve t = 3 s", "t = 0 ve t = 3 s", "Yalnız t = 2 s", "t = 1 s ve t = 2 s", "t = 3 s ve t = 9 s"],
      dogru: 0,
      aciklama: "Cismin durduğu an hızın sıfır olduğu andır. Konumun sıfır olduğu an değil; v = dx/dt = 0 çözülür.",
      adimlar: [
        "**Hız:** v(t) = 3t² − 12t + 9.",
        "**Sıfıra eşitle:** 3t² − 12t + 9 = 0 → t² − 4t + 3 = 0.",
        "**Çarpanlar:** (t − 1)(t − 3) = 0 → t = 1 s ve t = 3 s.",
        "**Yorum:** Cisim t = 1 s'de yön değiştirip geri gelir, t = 3 s'de yeniden yön değiştirir.",
      ],
    },
    {
      id: "u3-t07", tip: "mcq",
      soru: "Konumu x(t) = 5t³ m olan bir cismin t = 2 s anındaki ivmesi nedir?",
      secenekler: ["60 m/s²", "40 m/s²", "30 m/s²", "120 m/s²", "15 m/s²"],
      dogru: 0,
      aciklama: "İvme konumun ikinci türevidir: önce v = dx/dt, sonra a = dv/dt.",
      adimlar: [
        "**Hız:** v = 15t².",
        "**İvme:** a = 30t.",
        "**t = 2 s:** a = 60 m/s².",
      ],
    },
    {
      id: "u3-t08", tip: "tf",
      soru: "Bir cismin hızı bir anda sıfırsa o andaki ivmesi de sıfır olmak zorundadır.",
      dogru: false,
      aciklama: "Hız ve ivme ayrı büyüklüklerdir. Yukarı atılan taş tepede bir an durur (v = 0) ama ivmesi hâlâ g'dir, aşağı yönlüdür. İvme sıfır olsaydı taş tepede asılı kalırdı.",
    },
  ]),

  ...turet(U, K, "u3-grafik", [
    {
      id: "u3-t09", tip: "mcq",
      soru: "Konum-zaman (x-t) grafiğinde bir noktadaki teğetin eğimi neyi verir?",
      secenekler: ["O andaki ani hızı", "O andaki ivmeyi", "O ana kadar alınan yolu", "O andaki konumu", "Ortalama ivmeyi"],
      dogru: 0,
      aciklama: "x-t grafiğinde eğim Δx / Δt'dir. İki nokta arasındaki kirişin eğimi ortalama hızı, bir noktadaki teğetin eğimi ani hızı verir.",
    },
    {
      id: "u3-t10", tip: "mcq",
      soru: "Hız-zaman (v-t) grafiğinde eğri ile zaman ekseni arasında kalan alan neyi verir?",
      secenekler: ["Yerdeğiştirmeyi", "İvmeyi", "Ortalama hızı", "Hız değişimini", "Ani hızı"],
      dogru: 0,
      aciklama: "v-t grafiğinde alan v × t, yani yerdeğiştirmedir. Eksenin altında kalan alan negatif yerdeğiştirme sayılır. Eğim ise ivmeyi verir.",
    },
    {
      id: "u3-t11", tip: "mcq", zorluk: 3,
      soru: "Bir araba durgun hâlden 4 s içinde düzgün hızlanarak 20 m/s'ye çıkıyor, sonra 6 s boyunca bu hızla gidiyor. v-t grafiğinden 10 s'de aldığı yol nedir?",
      secenekler: ["160 m", "200 m", "120 m", "40 m", "180 m"],
      dogru: 0,
      aciklama: "v-t grafiğinin altındaki alanı parça parça hesapla: önce bir üçgen (hızlanma), sonra bir dikdörtgen (sabit hız).",
      adimlar: [
        "**Üçgen (0–4 s):** ½ · 4 · 20 = 40 m.",
        "**Dikdörtgen (4–10 s):** 6 · 20 = 120 m.",
        "**Toplam:** 40 + 120 = 160 m.",
        "**Tuzak:** 20 m/s × 10 s = 200 m, ilk 4 s'de arabanın 20 m/s'den yavaş gittiğini unutur.",
      ],
    },
    {
      id: "u3-t12", tip: "tf",
      soru: "Hız-zaman grafiği yatay bir doğru olan bir cismin ivmesi sıfırdır.",
      dogru: true,
      aciklama: "v-t grafiğinin eğimi ivmedir. Yatay doğrunun eğimi sıfır olduğu için ivme sıfırdır; cisim sabit hızla gider (hız sıfır değilse).",
    },
    {
      id: "u3-t13", tip: "mcq",
      soru: "Hız-zaman grafiği 0–5 s arasında 10 m/s'den 0'a doğrusal inen bir cismin ivmesi ve bu sürede aldığı yol nedir?",
      secenekler: ["a = −2 m/s²; 25 m", "a = 2 m/s²; 25 m", "a = −2 m/s²; 50 m", "a = −0,5 m/s²; 25 m", "a = −10 m/s²; 5 m"],
      dogru: 0,
      aciklama: "Eğim ivmeyi, altında kalan alan yerdeğiştirmeyi verir.",
      adimlar: [
        "**Eğim:** a = (0 − 10) / 5 = −2 m/s².",
        "**Alan (üçgen):** ½ · 5 · 10 = 25 m.",
      ],
    },
  ]),

  ...turet(U, K, "u3-sabit-ivme", [
    {
      id: "u3-t14", tip: "mcq",
      soru: "15 m/s hızla giden bir bisikletli −3 m/s² ivmeyle fren yapıyor. Durana kadar kaç metre yol alır?",
      secenekler: ["37,5 m", "75 m", "5 m", "45 m", "22,5 m"],
      dogru: 0,
      aciklama: "Süre sorulmuyor ve verilmiyor; zamansız hız denklemi v² = v₀² + 2aΔx en kısa yoldur.",
      adimlar: [
        "**Denklem:** 0 = 15² + 2(−3)Δx.",
        "**Çöz:** 6Δx = 225 → Δx = 37,5 m.",
        "**Kontrol:** Durma süresi 15 / 3 = 5 s; ortalama hız 7,5 m/s; 7,5 × 5 = 37,5 m ✓.",
      ],
    },
    {
      id: "u3-t15", tip: "mcq",
      soru: "108 km/sa hızla giden bir otomobil sabit ivmeyle yavaşlayarak 6 s'de duruyor. İvmesi ve durana kadar aldığı yol nedir?",
      secenekler: ["a = −5 m/s²; 90 m", "a = −18 m/s²; 324 m", "a = −5 m/s²; 180 m", "a = −30 m/s²; 90 m", "a = −2,5 m/s²; 90 m"],
      dogru: 0,
      aciklama: "Önce birimi çevir: 108 km/sa ÷ 3,6 = 30 m/s. Sonra a = Δv / t ve Δx = ½(v₀ + v) t.",
      adimlar: [
        "**Birim:** v₀ = 108 / 3,6 = 30 m/s.",
        "**İvme:** a = (0 − 30) / 6 = −5 m/s².",
        "**Yol:** Δx = ½(30 + 0) · 6 = 90 m.",
      ],
    },
    {
      id: "u3-t16", tip: "mcq",
      soru: "6 m/s hızla giden bir cisim 2 m/s² sabit ivmeyle hızlanıyor. 40 m sonra hızı ne olur ve bu ne kadar sürer?",
      secenekler: ["v = 14 m/s; t = 4 s", "v = 14 m/s; t = 7 s", "v = 10 m/s; t = 2 s", "v = 86 m/s; t = 40 s", "v = 16 m/s; t = 5 s"],
      dogru: 0,
      aciklama: "Önce zamansız denklemle son hızı, sonra v = v₀ + at ile süreyi bul.",
      adimlar: [
        "**Son hız:** v² = 6² + 2 · 2 · 40 = 36 + 160 = 196 → v = 14 m/s.",
        "**Süre:** 14 = 6 + 2t → t = 4 s.",
        "**Kontrol:** x = 6 · 4 + ½ · 2 · 16 = 24 + 16 = 40 m ✓.",
      ],
    },
    {
      id: "u3-t17", tip: "fill",
      soru: "Durgun hâlden 4 m/s² sabit ivmeyle harekete başlayan bir araç 5 s sonunda kaç metre yol almış olur? (Yalnız sayıyı yazın.)",
      bosluklar: [["50", "50 m"]],
      aciklama: "v₀ = 0 olduğundan x = ½at².",
      adimlar: [
        "**Denklem:** x = ½ · 4 · 5².",
        "**Hesap:** 2 · 25 = 50 m. (Bu anda hızı 4 · 5 = 20 m/s'dir.)",
      ],
    },
    {
      id: "u3-t18", tip: "tf",
      soru: "Sabit ivmeli harekette bir zaman aralığındaki ortalama hız, ilk ve son hızların aritmetik ortalamasına eşittir.",
      dogru: true,
      aciklama: "İvme sabitken v-t grafiği bir doğrudur; altındaki yamuğun alanı ½(v₀ + v) t olduğundan v̄ = ½(v₀ + v). İvme değişiyorsa bu bağıntı genelde geçerli değildir.",
    },
  ]),

  ...turet(U, K, "u3-serbest", [
    {
      id: "u3-t19", tip: "mcq",
      soru: "80 m yükseklikten serbest bırakılan bir taş kaç saniyede yere düşer ve yere hangi hızla çarpar? (g = 10 m/s², hava direnci yok)",
      secenekler: ["t = 4 s; v = 40 m/s", "t = 8 s; v = 80 m/s", "t = 4 s; v = 80 m/s", "t = 16 s; v = 40 m/s", "t = 2 s; v = 20 m/s"],
      dogru: 0,
      aciklama: "Serbest bırakılan cismin v₀ = 0'dır. Aşağıyı pozitif alırsak h = ½gt² ve v = gt.",
      adimlar: [
        "**Süre:** 80 = 5t² → t² = 16 → t = 4 s.",
        "**Hız:** v = 10 · 4 = 40 m/s (aşağı).",
        "**Kontrol:** v² = 2gh = 2 · 10 · 80 = 1600 → v = 40 m/s ✓.",
      ],
    },
    {
      id: "u3-t20", tip: "mcq",
      soru: "Yerden 30 m/s hızla düşey yukarı atılan bir topun çıkabileceği en büyük yükseklik ve havada kalma süresi nedir? (g = 10 m/s²)",
      secenekler: ["h = 45 m; 6 s", "h = 90 m; 6 s", "h = 45 m; 3 s", "h = 30 m; 6 s", "h = 45 m; 9 s"],
      dogru: 0,
      aciklama: "Tepede v = 0: çıkış süresi v₀/g, yükseklik v₀²/2g. Havada kalma süresi çıkış süresinin iki katıdır.",
      adimlar: [
        "**Çıkış süresi:** t = 30 / 10 = 3 s.",
        "**Yükseklik:** h = 30² / (2 · 10) = 900 / 20 = 45 m.",
        "**Havada kalma:** 2 × 3 = 6 s.",
      ],
    },
    {
      id: "u3-t21", tip: "mcq", zorluk: 3,
      soru: "Yerden 60 m yükseklikteki bir çatıdan bir taş 20 m/s hızla düşey yukarı atılıyor. Taş kaç saniye sonra yere düşer ve yere hangi hızla çarpar? (g = 10 m/s²)",
      secenekler: ["t = 6 s; v = −40 m/s", "t = 4 s; v = −20 m/s", "t = 6 s; v = −60 m/s", "t = 2 s; v = 0", "t = 8 s; v = −40 m/s"],
      dogru: 0,
      aciklama: "Orijini yerde, +y'yi yukarı al: y = 60 + 20t − 5t². Yere düşmek y = 0 demektir.",
      adimlar: [
        "**Denklem:** 0 = 60 + 20t − 5t² → t² − 4t − 12 = 0.",
        "**Çarpanlar:** (t − 6)(t + 2) = 0 → t = 6 s (negatif kök atılır).",
        "**Hız:** v = 20 − 10 · 6 = −40 m/s.",
        "**Kontrol:** v² = 20² + 2 · 10 · 60 = 400 + 1200 = 1600 → |v| = 40 m/s ✓.",
      ],
    },
    {
      id: "u3-t22", tip: "mcq", zorluk: 3,
      soru: "Yerden 80 m yükseklikteki bir çatıdan 1 s aralıklarla su damlıyor. Bir damla yere çarptığı anda bir sonraki damla yerden kaç metre yüksektedir? (g = 10 m/s²)",
      secenekler: ["35 m", "45 m", "5 m", "20 m", "75 m"],
      dogru: 0,
      aciklama: "Her damlanın kendi kronometresi olsun: ikinci damla 1 s geç başladığı için t₂ = t₁ − 1. Orijin çatıda, aşağı pozitif.",
      adimlar: [
        "**İlk damla:** 80 = 5t₁² → t₁ = 4 s.",
        "**İkinci damla:** t₂ = 3 s → düştüğü yol 5 · 9 = 45 m.",
        "**Yerden yükseklik:** 80 − 45 = 35 m.",
      ],
    },
    {
      id: "u3-t23", tip: "mcq", zorluk: 3,
      soru: "Yerden bir top 20 m/s hızla yukarı atıldığı anda, 40 m yükseklikteki bir çatıdan ikinci bir top serbest bırakılıyor. İki top ne zaman ve yerden hangi yükseklikte karşılaşır? (g = 10 m/s²)\n\n[[G-S3-02]]",
      secenekler: ["t = 2 s; y = 20 m", "t = 2 s; y = 0", "t = 1 s; y = 15 m", "t = 4 s; y = 20 m", "t = 2 s; y = 40 m"],
      dogru: 0,
      aciklama: "Aynı koordinat sistemi (orijin yerde, +y yukarı) iki topa da uygulanır. Karşılaşmada y₁ = y₂; −5t² terimleri iki yanda da olduğu için sadeleşir.",
      adimlar: [
        "**1. top:** y₁ = 20t − 5t².",
        "**2. top:** y₂ = 40 − 5t² (v₀ = 0).",
        "**Eşitle:** 20t = 40 → t = 2 s.",
        "**Yükseklik:** y₁ = 40 − 20 = 20 m.",
        "**Hızlar:** v₁ = 20 − 20 = 0 (1. top tam tepede), v₂ = −20 m/s.",
      ],
    },
    {
      id: "u3-t24", tip: "tf", zorluk: 1,
      soru: "Hava direnci ihmal edildiğinde aynı yükseklikten aynı anda bırakılan ağır ve hafif iki cisim yere aynı anda düşer.",
      dogru: true,
      aciklama: "Serbest düşmede ivme g'dir ve kütleye bağlı değildir. Düşme süresi t = √(2h/g) yalnız yüksekliğe bağlıdır.",
    },
    {
      id: "u3-t25", tip: "tf",
      soru: "Düşey yukarı atılan bir cismin tepe noktasındaki ivmesi sıfırdır.",
      dogru: false,
      aciklama: "Tepe noktasında sıfır olan hızdır. İvme hareket boyunca g = 10 m/s², aşağı yönlüdür; tepede de değişmez.",
    },
  ]),
];
