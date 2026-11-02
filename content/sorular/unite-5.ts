// 5. bölüm: Newton kanunları
// Sunu örnekleri metinleriyle; şıklar ve adım adım çözümler bizim. Sununun kendisi 9,8
// kullanmadıysa g = 10 m/s².
// Sunudaki düzeltmeler: Örnek 2'de ağırlık "5 N" yazılmış, çözümde 50 N kullanılmış;
// Örnek 9'daki son ivme formülü işaret hatalı; Örnek 10'da μ_k = 0,177 (sunu 0,117);
// Örnek 13'ün sonucu hatalı (doğrusu a₂ = 10/3, a₁ = 20/3 m/s², T ≈ 6,7 N);
// Örnek 23 (b)'de verilen 14 N ve 8 N temas kuvvetleri, bloklara etki eden bileşke kuvvetler 4, 6 ve 8 N.

import { sunu, turet, type Soru } from "./tipler.ts";

const U = 5;
const K = "u5";

const ORNEK3 = "Sürtünmesiz eğik düzlem: Şekilde görülen sürtünmesiz, θ eğim açılı bir eğik düzlem üzerine m kütleli bir sandık konulmuştur.\n\n[[G-S5-03]]";
const ORNEK4 = "Sürtünmesiz yatay bir düzlem üzerinde durmakta olan m = 3 kg kütleli bir cisme, yatayla 37° açı yapan F = 12 N luk bir kuvvet uygulanıyor. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)\n\n[[G-S5-04]]";
const ORNEK6 = "m = 3 kg kütleli bir cisim yatay bir düzlem üzerindedir. Cisimle düzlem arasındaki statik ve kinetik sürtünme katsayıları eşit olup μ = 0,5 değerindedir. (g = 10 m/s²)";
const ORNEK13 = "Şekilde gösterilen ipin kütlesi sıfır, yüzeyler ve makara sürtünmesizdir. Masadaki blok 1 kg, hareketli makaraya asılı blok 2 kg'dır. (g = 10 m/s²)\n\n[[G-S5-10]]";
const ORNEK18 = "Kütlesi 1200 kg olan bir otomobil r = 200 m yarıçaplı yatay ve dairesel bir virajı 72 km/saat hızıyla dönmektedir. (g = 10 m/s²)";
const ORNEK21 = "Sallanan Top: 0,5 m uzunluğunda bir sicimin ucuna bağlanan bir top, şekildeki gibi, yerçekiminin etkisi altında düşey bir daire çevresinde salınmaktadır. Sicim, düşeyle θ = 20°'lik açı yaptığı zaman top 1,5 m/s'lik hıza sahiptir. (g = 9,8 m/s²; sin 20° ≈ 0,34)\n\n[[G-S5-15]]";
const ORNEK23 = "Sürtünmesiz bir düzlem üzerindeki üç kütleye şekildeki gibi F = 18 N luk bir kuvvet m₁ kütlesi tarafından etkimektedir. m₁ = 2,00 kg, m₂ = 3,00 kg, m₃ = 4,00 kg olarak verilmektedir.\n\n[[G-S5-17]]";

export const unite5: Soru[] = [
  ...sunu(U, K, [
    {
      id: "u5-s01", ornek: 1, kavram: "u5-ikinci",
      soru: "0,30 kg kütleli bir hokey diski yatay, sürtünmesiz bir buz zemini üzerinde kaymaktadır. Diske şekilde görüldüğü gibi iki kuvvet etki eder. F₁ kuvvetinin büyüklüğü 5 N, F₂ kuvvetinin büyüklüğü ise 8 N'dur. Diskin ivmesinin büyüklüğünü ve yönünü bulunuz. (cos 20° = 0,94; sin 20° = 0,34; cos 60° = 0,5; sin 60° = 0,87)\n\n[[G-S5-01]]",
      secenekler: ["|a| ≈ 34 m/s²; θ ≈ 30°", "|a| ≈ 43 m/s²; θ ≈ 30°", "|a| ≈ 34 m/s²; θ ≈ 60°", "|a| ≈ 10 m/s²; θ ≈ 30°", "|a| ≈ 34 m/s²; θ ≈ −20°"],
      dogru: 0,
      aciklama: "Newton'un ikinci yasası her eksende ayrı yazılır: ΣF_x = m a_x, ΣF_y = m a_y. Kuvvetlerin büyüklükleri toplanmaz; bileşenleri toplanır.",
      adimlar: [
        "**x bileşenleri:** ΣF_x = 5 cos(−20°) + 8 cos 60° = 5 × 0,94 + 8 × 0,5 = 4,7 + 4 = 8,7 N.",
        "**y bileşenleri:** ΣF_y = 5 sin(−20°) + 8 sin 60° = −1,7 + 7,0 = 5,2 N. (F₁ x ekseninin altında, y bileşeni eksi.)",
        "**İvme bileşenleri:** a_x = 8,7 / 0,3 = 29 m/s²; a_y = 5,2 / 0,3 ≈ 17 m/s² → a = 29î + 17ĵ m/s².",
        "**Büyüklük:** |a| = √(29² + 17²) = √(841 + 289) ≈ 34 m/s².",
        "**Yön:** θ = tan⁻¹(17 / 29) ≈ 30° (+x ekseninden yukarı).",
      ],
    },
    {
      id: "u5-s02", ornek: 2, kavram: "u5-denge",
      soru: "Bir trafik lambası şekilde görüldüğü gibi kablolarla bir desteğe asılmıştır. Üst taraftaki kablolar yatayla 37° ve 53°'lik açılar yapmaktadır ve lambanın ağırlığı 50 N dur. Her üç kablodaki gerilmeyi bulunuz. (cos 53° = 0,6; sin 53° = 0,8; cos 37° = 0,8; sin 37° = 0,6)\n\n[[G-S5-02]]",
      secenekler: ["T₁ = 30 N; T₂ = 40 N; T₃ = 50 N", "T₁ = 40 N; T₂ = 30 N; T₃ = 50 N", "T₁ = 25 N; T₂ = 25 N; T₃ = 50 N", "T₁ = 30 N; T₂ = 40 N; T₃ = 70 N", "T₁ = 37,5 N; T₂ = 50 N; T₃ = 50 N"],
      dogru: 0,
      aciklama: "Lamba ve düğüm noktası dengededir: ΣF_x = 0 ve ΣF_y = 0. Önce lambadan T₃ = W, sonra düğümde iki denklem iki bilinmeyenle çözülür. Not: sunu soruda ağırlığı 5 N yazmış ama çözümde 50 N kullanmış; sonuçlar 50 N'a aittir.",
      adimlar: [
        "**Lamba:** T₃ − W = 0 → T₃ = 50 N.",
        "**Düğümde x:** −T₁ cos 37° + T₂ cos 53° = 0 → 0,8 T₁ = 0,6 T₂ → T₂ = (4/3) T₁.",
        "**Düğümde y:** T₁ sin 37° + T₂ sin 53° − 50 = 0 → 0,6 T₁ + 0,8 · (4/3) T₁ = 50.",
        "**Çöz:** 0,6 T₁ + 1,067 T₁ = 50 → (5/3) T₁ = 50 → T₁ = 30 N; T₂ = 40 N.",
        "**Kontrol:** Daha dik kablo (53°) yükün daha büyük kısmını taşır: T₂ > T₁ ✓.",
      ],
    },
    {
      id: "u5-s03a", ornek: 3, parca: "A", kavram: "u5-ikinci", zorluk: 1,
      soru: `${ORNEK3}\n\nSandık serbest bırakılınca sahip olacağı ivmeyi ve normal kuvveti bulunuz.`,
      secenekler: ["a = g sin θ; n = mg cos θ", "a = g cos θ; n = mg sin θ", "a = g; n = mg", "a = g sin θ; n = mg", "a = g tan θ; n = mg cos θ"],
      dogru: 0,
      aciklama: "x eksenini eğik düzlem boyunca, y eksenini düzleme dik al. Ağırlık bu eksenlerde mg sin θ (düzlem boyunca) ve mg cos θ (düzleme dik) bileşenlerine ayrılır.",
      adimlar: [
        "**Bileşenler:** Düzlem boyunca mg sin θ, düzleme dik mg cos θ.",
        "**y ekseni (hareket yok):** ΣF_y = n − mg cos θ = 0 → n = mg cos θ.",
        "**x ekseni:** ΣF_x = mg sin θ = m a_x → a_x = g sin θ.",
        "**Yorum:** İvme kütleden bağımsızdır; θ = 90°'de g'ye (serbest düşme), θ = 0'da sıfıra gider.",
      ],
    },
    {
      id: "u5-s03b", ornek: 3, parca: "B", kavram: "u5-ikinci",
      soru: `${ORNEK3}\n\nSandığın eğik düzlemin tepesinden serbest bırakıldığını varsayalım. Tepeden itibaren alt uca kadar olan uzaklık d olsun. Bloğun alt uca varması için geçen zaman nedir ve tam alt uçta sandığın hızı ne olacaktır?`,
      secenekler: ["t = √(2d / (g sin θ)); v = √(2gd sin θ)", "t = √(2d / g); v = √(2gd)", "t = √(d / (g sin θ)); v = √(gd sin θ)", "t = √(2d / (g cos θ)); v = √(2gd cos θ)", "t = 2d / (g sin θ); v = 2gd sin θ"],
      dogru: 0,
      aciklama: "İvme sabit (g sin θ) ve ilk hız sıfır olduğundan bir boyutlu sabit ivmeli hareket denklemleri düzlem boyunca uygulanır.",
      adimlar: [
        "**Konum:** d = ½ a t² ve a = g sin θ → t = √(2d / (g sin θ)).",
        "**Hız:** v² = 0 + 2ad → v = √(2gd sin θ).",
        "**Kontrol:** d sin θ eğik düzlemin yüksekliği h'dir; v = √(2gh), yani aynı yükseklikten serbest düşen cismin hızıyla aynı.",
      ],
    },
    {
      id: "u5-s04a", ornek: 4, parca: "b", kavram: "u5-ikinci",
      soru: `${ORNEK4}\n\nCismin ivmesi ne kadardır?`,
      secenekler: ["3,2 m/s²", "4 m/s²", "2,4 m/s²", "1,6 m/s²", "7,6 m/s²"],
      dogru: 0,
      aciklama: "Cisim yalnız yatayda hareket edebilir; ivmeyi kuvvetin yatay bileşeni F cos 37° verir.",
      adimlar: [
        "**Yatay bileşen:** F cos 37° = 12 × 0,8 = 9,6 N.",
        "**İkinci yasa:** 9,6 = 3a → a = 3,2 m/s².",
        "**Tuzak:** 12 / 3 = 4 m/s², kuvvetin tamamının yatay olduğunu varsayar.",
      ],
    },
    {
      id: "u5-s04b", ornek: 4, parca: "c", kavram: "u5-ikinci",
      soru: `${ORNEK4}\n\nMasanın normal tepki kuvveti ne kadar olur?`,
      secenekler: ["22,8 N", "30 N", "37,2 N", "20,4 N", "7,2 N"],
      dogru: 0,
      aciklama: "Düşeyde hareket yok: ΣF_y = 0. F'nin düşey bileşeni cismi yukarı çektiği için normal kuvvet mg'den küçük çıkar.",
      adimlar: [
        "**Düşey bileşen:** F sin 37° = 12 × 0,6 = 7,2 N (yukarı).",
        "**Denge:** N + F sin 37° − mg = 0 → N + 7,2 − 30 = 0.",
        "**Sonuç:** N = 22,8 N. Normal kuvvet her zaman mg'ye eşit değildir.",
      ],
    },
    {
      id: "u5-s05", ornek: 5, kavram: "u5-surtunme",
      soru: "Kütlesi m olan bir blok 4 m/s hızla sürtünmeli yatay bir düzleme paralel fırlatılıyor. Blok ne kadar gittikten sonra durur? (μ = 0,25; g = 10 m/s²)",
      secenekler: ["3,2 m", "1,6 m", "6,4 m", "0,8 m", "16 m"],
      dogru: 0,
      aciklama: "Yatayda tek kuvvet sürtünmedir: −μmg = ma → a = −μg. Kütle sadeleşir, bu yüzden m verilmeden çözülür. Sonra zamansız hız denklemi.",
      adimlar: [
        "**Normal kuvvet:** ΣF_y = 0 → N = mg.",
        "**İvme:** −μmg = ma → a = −μg = −0,25 × 10 = −2,5 m/s².",
        "**Yol:** 0 = 4² + 2(−2,5)x → x = 16 / 5 = 3,2 m.",
      ],
    },
    {
      id: "u5-s06a", ornek: 6, parca: "a", kavram: "u5-surtunme",
      soru: `${ORNEK6} Bu cisme yatay F₁ = 12 N kuvveti uygulanıyor. Sürtünme kuvveti ne kadardır?`,
      secenekler: ["12 N", "15 N", "6 N", "3 N", "0"],
      dogru: 0,
      aciklama: "Statik sürtünme kuvveti sabit değildir: en fazla μN'ye kadar çıkar ve uygulanan kuvveti tam karşılar. Önce maksimum değeri hesapla, uygulanan kuvvetle karşılaştır.",
      adimlar: [
        "**Maksimum statik sürtünme:** f_max = μN = μmg = 0,5 × 3 × 10 = 15 N.",
        "**Karşılaştır:** F₁ = 12 N < 15 N, cisim harekete geçmez.",
        "**Sürtünme:** Cisim durduğu için net kuvvet sıfır: f = F₁ = 12 N. (15 N değil; 15 N yalnız sınır değer.)",
      ],
    },
    {
      id: "u5-s06b", ornek: 6, parca: "b", kavram: "u5-surtunme",
      soru: `${ORNEK6} Bu kez yatay F₂ = 18 N luk bir kuvvet uygulanıyor. Cismin ivmesi ne kadar olur?`,
      secenekler: ["1 m/s²", "6 m/s²", "2 m/s²", "0", "11 m/s²"],
      dogru: 0,
      aciklama: "F₂ maksimum statik sürtünmeyi aştığı için cisim kayar; kayma sırasında sürtünme kinetik sürtünmedir, μ_k N.",
      adimlar: [
        "**Hareket var mı:** 18 N > f_max = 15 N, cisim hareket eder.",
        "**Sürtünme:** f = μ_k N = 15 N (μ_s = μ_k).",
        "**İkinci yasa:** 18 − 15 = 3a → a = 1 m/s².",
      ],
    },
    {
      id: "u5-s07", ornek: 7, kavram: "u5-surtunme", zorluk: 3,
      soru: "m = 3 kg kütleli bir cisim yatay bir düzlem üzerindedir. Cisimle düzlem arasındaki statik ve kinetik sürtünme katsayıları eşit olup μ = 0,3 değerindedir. Bu cisme yatayın altında 37° açı yapan F = 20 N kuvveti uygulanıyor. Normal tepki kuvvetini ve cismin ivmesini hesaplayın. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)\n\n[[G-S5-05]]",
      secenekler: ["N = 42 N; a ≈ 1,1 m/s²", "N = 30 N; a ≈ 2,3 m/s²", "N = 18 N; a ≈ 3,5 m/s²", "N = 42 N; a ≈ 5,3 m/s²", "N = 42 N; a = 0"],
      dogru: 0,
      aciklama: "Aşağı doğru iten kuvvetin düşey bileşeni cismi zemine bastırır, normal kuvvet ve dolayısıyla sürtünme artar. Önce cismin kayıp kaymadığını kontrol et.",
      adimlar: [
        "**Düşey:** N − F sin 37° − mg = 0 → N = 30 + 20 × 0,6 = 42 N.",
        "**Maksimum sürtünme:** f = μN = 0,3 × 42 = 12,6 N.",
        "**Hareket var mı:** F cos 37° = 20 × 0,8 = 16 N > 12,6 N, cisim hareket eder.",
        "**İvme:** 16 − 12,6 = 3a → a = 3,4 / 3 ≈ 1,1 m/s².",
      ],
    },
    {
      id: "u5-s08", ornek: 8, kavram: "u5-surtunme",
      soru: "37° eğimli bir düzlem üzerine m = 5 kg kütlesi konulmuştur. Eğik düzlemle cisim arasındaki statik ve kinetik sürtünme katsayıları eşit olup μ = 0,2 değerindedir. Sürtünme kuvveti ne kadardır? Buna göre cisim hareket eder mi? Ederse ivmesi ne kadar olur? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)\n\n[[G-S5-06]]",
      secenekler: ["f = 8 N; hareket eder, a = 4,4 m/s²", "f = 6 N; hareket eder, a = 4,8 m/s²", "f = 30 N; hareket etmez", "f = 8 N; hareket eder, a = 6 m/s²", "f = 10 N; hareket eder, a = 4 m/s²"],
      dogru: 0,
      aciklama: "Eğik düzlemde normal kuvvet mg cos θ'dır. Cismi aşağı çeken mg sin θ ile maksimum sürtünmeyi karşılaştır; aşıyorsa net kuvvet farkıdır.",
      adimlar: [
        "**Normal kuvvet:** N = mg cos 37° = 50 × 0,8 = 40 N.",
        "**Maksimum sürtünme:** f_max = 0,2 × 40 = 8 N (yukarı yönde, harekete ters).",
        "**Aşağı çeken bileşen:** mg sin 37° = 50 × 0,6 = 30 N > 8 N, cisim kayar.",
        "**İvme:** 30 − 8 = 5a → a = 4,4 m/s² (aşağı).",
      ],
    },
    {
      id: "u5-s09", ornek: 9, kavram: "u5-bagli", zorluk: 3,
      soru: "m₁ kütleli bir blok şekilde görüldüğü gibi yatay pürüzlü bir masa üzerinde ağırlıksız bir iple sürtünmesiz bir makaradan geçirildikten sonra m₂ kütlesine bağlanmıştır. F büyüklüğünde bir kuvvet şekilde görüldüğü gibi m₁ kütlesine uygulanmıştır. m₁ ile yüzey arasındaki sürtünme katsayısı μ'dür. m₂ yukarı çıktığına göre ivme nedir?\n\n[[G-S5-07]]",
      secenekler: [
        "a = [F(cos θ + μ sin θ) − g(m₂ + μm₁)] / (m₁ + m₂)",
        "a = [F(cos θ − μ sin θ) − g(m₁ + μm₂)] / (m₁ + m₂)",
        "a = [F(cos θ − μ sin θ) − g(m₂ + μm₁)] / (m₁ + m₂)",
        "a = [F cos θ − g(m₂ + μm₁)] / (m₁ + m₂)",
        "a = [F(cos θ + μ sin θ) − g(m₂ − μm₁)] / (m₁ − m₂)",
      ],
      dogru: 0,
      aciklama: "Her kütle için ikinci yasayı ayrı yaz. F'nin düşey bileşeni F sin θ m₁'i yukarı çektiği için normal kuvveti, dolayısıyla sürtünmeyi azaltır. Not: sununun son satırındaki formül [F(cos θ − μ sin θ) − g(m₁ + μm₂)] işaret ve kütle hatası içeriyor; adımlar doğrusunu türetir.",
      adimlar: [
        "**m₁ düşey:** N + F sin θ − m₁g = 0 → N = m₁g − F sin θ; f = μ(m₁g − F sin θ).",
        "**m₁ yatay:** F cos θ − f − T = m₁a.",
        "**m₂ (yukarı çıkıyor):** T − m₂g = m₂a → T = m₂(g + a).",
        "**Yerine koy:** F cos θ − μm₁g + μF sin θ − m₂g − m₂a = m₁a.",
        "**Topla:** a = [F(cos θ + μ sin θ) − g(m₂ + μm₁)] / (m₁ + m₂); gerilme T = m₂(g + a).",
        "**Kontrol:** μ = 0 ve θ = 0 iken a = (F − m₂g)/(m₁ + m₂): ip ve masa sürtünmesiz iken beklenen sonuç ✓.",
      ],
    },
    {
      id: "u5-s10", ornek: 10, kavram: "u5-surtunme",
      soru: "Donmuş bir havuzda bir hokey diskine vurulsun ve ona 20 m/s'lik bir hız kazandırılmış olsun. Disk, buz yüzeyi üzerinde durmadan önce 115 m kayarsa disk ile buz yüzeyi arasındaki kinetik sürtünme katsayısını bulunuz. (g = 9,8 m/s²)",
      secenekler: ["μ_k ≈ 0,177", "μ_k ≈ 0,117", "μ_k ≈ 0,35", "μ_k ≈ 0,087", "μ_k ≈ 1,74"],
      dogru: 0,
      aciklama: "Tek yatay kuvvet kinetik sürtünme: a = −μ_k g. Zamansız hız denklemiyle μ_k bulunur. Not: sunu sonucu 0,117 yazmış; 400 / 2254 ≈ 0,177'dir.",
      adimlar: [
        "**İvme:** −μ_k mg = ma → a = −μ_k g.",
        "**Zamansız denklem:** 0 = v_i² + 2ax → 0 = 400 − 2μ_k g · 115.",
        "**Çöz:** μ_k = 400 / (2 × 9,8 × 115) = 400 / 2254 ≈ 0,177.",
      ],
    },
    {
      id: "u5-s11", ornek: 11, kavram: "u5-bagli",
      soru: "Sürtünmesiz yatay bir düzlem üzerindeki m₁ = 1 kg ve m₂ = 2 kg kütleleri bir iple birbirlerine bağlanmışlardır. m₁ kütlesine yatay F = 5 N kuvveti uygulanıyor. Kütleleri ayrı ayrı ele alarak ivmeyi ve ipteki gerilmeyi bulun.\n\n[[G-S5-08]]",
      secenekler: ["a ≈ 1,7 m/s²; T ≈ 3,3 N", "a = 5 m/s²; T = 5 N", "a ≈ 1,7 m/s²; T ≈ 1,7 N", "a = 2,5 m/s²; T = 5 N", "a ≈ 1,7 m/s²; T = 5 N"],
      dogru: 0,
      aciklama: "İple bağlı cisimlerin ivmesi aynıdır. Sistemi bütün olarak ele almak ivmeyi verir (gerilme iç kuvvettir, sadeleşir); gerilmeyi bulmak için bir kütleyi ayrı incelemek gerekir.",
      adimlar: [
        "**m₁:** F − T = m₁a → 5 − T = a.",
        "**m₂:** T = m₂a → T = 2a.",
        "**Topla:** 5 = 3a → a = 5/3 ≈ 1,7 m/s².",
        "**Gerilme:** T = 2 × 5/3 = 10/3 ≈ 3,3 N.",
      ],
    },
    {
      id: "u5-s12", ornek: 12, kavram: "u5-surtunme", zorluk: 3,
      soru: "m = 1 kg lık kütle, sürtünme katsayısı μ = 0,3 ve eğim açısı 37° olan eğik bir düzlem üzerine konulmuştur. F = 20 N kuvveti cisme yatay doğrultuda etkiyor. Cisim hangi yönde gider ve ivmesi nedir? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)\n\n[[G-S5-09]]",
      secenekler: ["Yukarı; a = 4 m/s²", "Aşağı; a = 4 m/s²", "Yukarı; a = 10 m/s²", "Yukarı; a ≈ 7,6 m/s²", "Hareket etmez"],
      dogru: 0,
      aciklama: "Sürtünmenin yönü hareket yönüne bağlı olduğu için önce yönü bul: F cos θ (yukarı) ile mg sin θ (aşağı) karşılaştırılır. F'nin düzleme dik bileşeni normal kuvveti artırır.",
      adimlar: [
        "**Yön:** mg sin 37° = 6 N, F cos 37° = 16 N. 16 > 6, cisim yukarı gitmek ister.",
        "**Normal kuvvet:** N = mg cos 37° + F sin 37° = 8 + 12 = 20 N.",
        "**Sürtünme:** f = μN = 0,3 × 20 = 6 N (aşağı yönde).",
        "**İvme:** 16 − 6 − 6 = 1 × a → a = 4 m/s² (yukarı). Artı çıktığı için cisim gerçekten hareket eder.",
      ],
    },
    {
      id: "u5-s13a", ornek: 13, parca: "b", kavram: "u5-bagli",
      soru: `${ORNEK13}\n\nİvmeler arasındaki ilişki nedir? (a₁: masadaki bloğun, a₂: asılı bloğun ivmesi)`,
      secenekler: ["a₁ = 2a₂", "a₂ = 2a₁", "a₁ = a₂", "a₁ = 4a₂", "a₁ = a₂ / 4"],
      dogru: 0,
      aciklama: "İpin boyu sabittir. Hareketli makara iki ip parçası tarafından taşındığı için makara bir miktar inince iki parçanın her biri o kadar uzar.",
      adimlar: [
        "**Geometri:** Makara (ve 2 kg) x kadar inerse makaranın iki yanındaki ip parçalarının her biri x kadar uzar; toplam 2x ip masadan çekilir.",
        "**Yer değiştirmeler:** Masadaki blok 2x giderken asılı blok x iner.",
        "**İvmeler:** Aynı oran ivmelere geçer: a₁ = 2a₂.",
      ],
    },
    {
      id: "u5-s13b", ornek: 13, parca: "c", kavram: "u5-bagli", zorluk: 3,
      soru: `${ORNEK13}\n\nİvmeleri ve ipteki gerilmeyi hesaplayın.`,
      secenekler: ["a₁ ≈ 6,7 m/s²; a₂ ≈ 3,3 m/s²; T ≈ 6,7 N", "a₁ = 20 m/s²; a₂ = 10 m/s²; T = 20 N", "a₁ = 5 m/s²; a₂ = 2,5 m/s²; T = 5 N", "a₁ ≈ 3,3 m/s²; a₂ ≈ 6,7 m/s²; T ≈ 3,3 N", "a₁ = 10 m/s²; a₂ = 5 m/s²; T = 10 N"],
      dogru: 0,
      aciklama: "Üç bilinmeyen (a₁, a₂, T) için iki hareket denklemi ve ivme ilişkisi yeterlidir. Asılı blok aşağı indiği için ağırlığı 2T'den büyük olmalı. Not: sununun sonucu (T = 20 N, a₁ = 20, a₂ = 10) bir işaret hatasından geliyor; T = 20 N olsaydı 2T = 40 N > 20 N ağırlık ve asılı blok yukarı çıkardı.",
      adimlar: [
        "**Masadaki blok (1 kg):** T = m₁a₁ → T = a₁.",
        "**Asılı blok (2 kg, aşağı pozitif):** m₂g − 2T = m₂a₂ → 20 − 2T = 2a₂.",
        "**İlişkiyi koy:** T = a₁ = 2a₂ → 20 − 4a₂ = 2a₂ → a₂ = 20/6 = 10/3 ≈ 3,3 m/s².",
        "**Kalanlar:** a₁ = 20/3 ≈ 6,7 m/s²; T = 20/3 ≈ 6,7 N.",
        "**Kontrol:** 2T ≈ 13,3 N < 20 N, asılı blok gerçekten aşağı ivmelenir ✓.",
      ],
    },
    {
      id: "u5-s14", ornek: 14, kavram: "u5-bagli",
      soru: "Sürtünmesiz ve 30° eğimli bir eğik düzlem üzerindeki m₁ = 7 kg kütlesi makaradan geçen ipin bir ucuna bağlıdır. İpin diğer ucuna m₂ = 5 kg kütlesi asılmıştır. Hareket yönünü tayin edin; ivmeyi ve ipteki gerilme kuvvetini hesaplayın. (g = 10 m/s²)\n\n[[G-S5-11]]",
      secenekler: ["m₂ aşağı iner; a = 1,25 m/s²; T ≈ 44 N", "m₁ aşağı kayar; a = 1,25 m/s²; T ≈ 44 N", "m₂ aşağı iner; a ≈ 4,2 m/s²; T = 50 N", "m₂ aşağı iner; a = 1,25 m/s²; T = 35 N", "Hareket etmez; T = 50 N"],
      dogru: 0,
      aciklama: "Yönü bulmak için m₂'yi aşağı çeken m₂g ile m₁'i düzlem boyunca aşağı çeken m₁g sin 30° karşılaştırılır. Sonra her kütle için hareket yönünde ikinci yasa.",
      adimlar: [
        "**Yön:** m₂g = 50 N; m₁g sin 30° = 70 × 0,5 = 35 N. 50 > 35, m₂ aşağı, m₁ yukarı gider.",
        "**m₁:** T − 35 = 7a.",
        "**m₂:** 50 − T = 5a.",
        "**Topla:** 15 = 12a → a = 1,25 m/s².",
        "**Gerilme:** T = 35 + 7 × 1,25 = 43,75 ≈ 44 N.",
      ],
    },
    {
      id: "u5-s15", ornek: 15, kavram: "u5-surtunme",
      soru: "Kütlesi 2 kg olan bir blok, bir duvara yatay yönde F = 30 N kuvvetiyle bastırılırken aşağı doğru kayabiliyor. Blok ile duvar arasında sürtünme katsayısı μ = 0,5 tir. Bloğun ivmesini bulun. (g = 10 m/s²)\n\n[[G-S5-12]]",
      secenekler: ["2,5 m/s²", "10 m/s²", "5 m/s²", "7,5 m/s²", "0"],
      dogru: 0,
      aciklama: "Normal kuvvet her zaman mg'ye eşit değildir; yüzeye dik kuvvetleri karşılar. Burada yüzeye dik tek kuvvet F'dir, bu yüzden N = F.",
      adimlar: [
        "**Normal kuvvet:** N − F = 0 → N = 30 N.",
        "**Sürtünme:** f = μN = 0,5 × 30 = 15 N (yukarı, harekete ters).",
        "**İkinci yasa (aşağı pozitif):** mg − f = ma → 20 − 15 = 2a.",
        "**Sonuç:** a = 2,5 m/s².",
      ],
    },
    {
      id: "u5-s16", ornek: 16, kavram: "u5-bagli",
      soru: "Atwood aleti. Şekildeki iki eşit M = 10 kg kütleleri bir makaradan geçirilen ipin iki ucuna asılmışlardır. Makara sürtünmesiz ve ipin kütlesi önemsizdir. Kütlelerden biri üzerine ilave küçük bir m = 1 kg kütlesi konuluyor. İvmeyi ve ipteki gerilmeyi hesaplayın. (g = 10 m/s²)\n\n[[G-S5-13]]",
      secenekler: ["a ≈ 0,5 m/s²; T ≈ 105 N", "a = 1 m/s²; T = 110 N", "a ≈ 0,5 m/s²; T = 100 N", "a = 10 m/s²; T = 0", "a ≈ 0,9 m/s²; T ≈ 109 N"],
      dogru: 0,
      aciklama: "İp gerilmesi iki yanda eşit, ivmeler aynı büyüklükte. Ağır taraf (M + m) aşağı, hafif taraf M yukarı ivmelenir.",
      adimlar: [
        "**(M + m) kütlesi:** (M + m)g − T = (M + m)a → 110 − T = 11a.",
        "**M kütlesi:** T − Mg = Ma → T − 100 = 10a.",
        "**Topla:** 10 = 21a → a = 10/21 ≈ 0,48 ≈ 0,5 m/s².",
        "**Gerilme:** T = 100 + 10 × 0,476 ≈ 104,8 ≈ 105 N.",
        "**Yorum:** Küçük bir m ile büyük M'ler kolayca ivmelendirilir; asansör ve füniküler karşı ağırlığı bu ilkeyle çalışır.",
      ],
    },
    {
      id: "u5-s17", ornek: 17, kavram: "u5-dairesel",
      soru: "0,5 kg kütleli bir top, 1,5 m uzunluğunda kablonun ucuna bağlanmıştır. Top, yatay düzlemde dairesel yörüngede hızla döndürülüyor. Kablo 50 N'luk maksimum gerilmeye dayanabiliyorsa, kopmadan önce topun sahip olabileceği maksimum sürat nedir?",
      secenekler: ["≈ 12,2 m/s", "≈ 8,7 m/s", "150 m/s", "≈ 5,5 m/s", "≈ 17,3 m/s"],
      dogru: 0,
      aciklama: "Yatay dairesel harekette merkezcil kuvveti ipteki gerilme sağlar: T = m v² / r. Gerilmenin üst sınırı hızın üst sınırını belirler.",
      adimlar: [
        "**Merkezcil kuvvet:** T = m v² / r → v = √(rT / m).",
        "**Yerine koy:** v_max = √(1,5 × 50 / 0,5) = √150.",
        "**Sonuç:** v_max ≈ 12,2 m/s.",
      ],
    },
    {
      id: "u5-s18a", ornek: 18, parca: "a", kavram: "u5-dairesel",
      soru: `${ORNEK18} Tekerlekler ile yol arasındaki sürtünme kuvveti ne kadardır?`,
      secenekler: ["2400 N", "31 104 N", "120 N", "12 000 N", "4800 N"],
      dogru: 0,
      aciklama: "Yatay virajda arabayı merkeze doğru çeken tek kuvvet tekerlek-yol sürtünmesidir: f = m v² / r. Önce hızı m/s'ye çevir.",
      adimlar: [
        "**Birim:** 72 km/sa = 72 / 3,6 = 20 m/s.",
        "**Merkezcil kuvvet:** f = 1200 × 20² / 200 = 1200 × 2 = 2400 N.",
        "**Tuzak:** 72² ile hesaplamak 31 104 N verir; birim çevrilmemiştir.",
      ],
    },
    {
      id: "u5-s18b", ornek: 18, parca: "b", kavram: "u5-dairesel",
      soru: `${ORNEK18} Bu yoldaki sürtünme katsayısı μ = 0,8 ise, otomobilin kaymadan dönebileceği maksimum hız ne kadar olur?`,
      secenekler: ["40 m/s (144 km/sa)", "20 m/s (72 km/sa)", "1600 m/s (5760 km/sa)", "≈ 28 m/s (≈ 102 km/sa)", "≈ 44,7 m/s (≈ 161 km/sa)"],
      dogru: 0,
      aciklama: "Sürtünmenin sağlayabileceği en büyük merkezcil kuvvet μmg'dir: μmg = m v² / r → v = √(μgr). Kütle sadeleşir.",
      adimlar: [
        "**Sınır:** μmg = m v² / r → v² = μgr.",
        "**Hesap:** v² = 0,8 × 10 × 200 = 1600 → v = 40 m/s.",
        "**km/sa:** 40 × 3,6 = 144 km/sa.",
      ],
    },
    {
      id: "u5-s19", ornek: 19, kavram: "u5-dairesel", zorluk: 3,
      soru: "Bir otomobil r = 100 m yarıçaplı ve yatayla 30° açı yapan sürtünmesiz bir virajı v hızıyla alıyor. Otomobil savrulmadan hangi hızla dönebilir? (g = 10 m/s²; tan 30° ≈ 0,58)\n\n[[G-S5-14]]",
      secenekler: ["≈ 24 m/s (≈ 87 km/sa)", "≈ 32 m/s (≈ 114 km/sa)", "≈ 17 m/s (≈ 61 km/sa)", "58 m/s (≈ 209 km/sa)", "≈ 22 m/s (≈ 80 km/sa)"],
      dogru: 0,
      aciklama: "Sürtünme yok; merkezcil kuvveti normal kuvvetin yatay bileşeni N sin θ sağlar. Düşey bileşen N cos θ ağırlığı dengeler.",
      adimlar: [
        "**Yatay:** N sin θ = m v² / r.",
        "**Düşey:** N cos θ = mg.",
        "**Böl:** tan θ = v² / (gr) → v = √(gr tan θ).",
        "**Hesap:** v = √(10 × 100 × 0,58) = √580 ≈ 24 m/s ≈ 87 km/sa.",
      ],
    },
    {
      id: "u5-s20", ornek: 20, kavram: "u5-dairesel",
      soru: "Sürtünmesiz yatay bir düzlemde 80 cm uzunluktaki bir ipin ucunda sabit hızla dönen m = 200 g kütleli blok 3 dakikada 500 devir yapmaktadır. Bloğun merkezcil ivmesini ve ipteki gerilme kuvvetini hesaplayın.",
      secenekler: ["a_r ≈ 245 m/s²; T ≈ 49 N", "a_r ≈ 17,5 m/s²; T ≈ 3,5 N", "a_r ≈ 245 m/s²; T ≈ 49 000 N", "a_r ≈ 196 m/s²; T ≈ 39 N", "a_r ≈ 14 m/s²; T ≈ 2,8 N"],
      dogru: 0,
      aciklama: "Önce sürat: bir devirde 2πr yol, toplam yol bölü toplam süre. Merkezcil ivme v² / r, gerilme m a_r. Birimleri SI'ya çevir (80 cm = 0,8 m, 200 g = 0,2 kg, 3 dk = 180 s).",
      adimlar: [
        "**Sürat:** v = 500 × 2π × 0,8 / 180 ≈ 2513 / 180 ≈ 14 m/s.",
        "**Merkezcil ivme:** a_r = 14² / 0,8 = 196 / 0,8 = 245 m/s².",
        "**Gerilme:** T = m a_r = 0,2 × 245 = 49 N.",
        "**Tuzak:** 200 g'yi 200 kg diye kullanmak 49 000 N verir.",
      ],
    },
    {
      id: "u5-s21a", ornek: 21, parca: "a ve b", kavram: "u5-dairesel",
      soru: `${ORNEK21}\n\nİvmenin bu andaki çapsal (a_r) bileşenini ve teğetsel ivmenin (a_t) büyüklüğünü bulunuz.`,
      secenekler: ["a_r = 4,5 m/s²; a_t ≈ 3,4 m/s²", "a_r = 3 m/s²; a_t ≈ 3,4 m/s²", "a_r = 4,5 m/s²; a_t ≈ 9,2 m/s²", "a_r ≈ 3,4 m/s²; a_t = 4,5 m/s²", "a_r = 4,5 m/s²; a_t = 0"],
      dogru: 0,
      aciklama: "Çapsal (merkezcil) ivme o anki hızdan bulunur: a_r = v² / r. Teğetsel ivmeyi ağırlığın yörüngeye teğet bileşeni mg sin θ sağlar: a_t = g sin θ.",
      adimlar: [
        "**Çapsal:** a_r = 1,5² / 0,5 = 2,25 / 0,5 = 4,5 m/s² (ipe doğru, merkeze).",
        "**Teğetsel:** a_t = g sin 20° = 9,8 × 0,34 ≈ 3,4 m/s².",
      ],
    },
    {
      id: "u5-s21b", ornek: 21, parca: "c", kavram: "u5-dairesel",
      soru: `${ORNEK21}\n\nθ = 20°'de toplam ivmenin (a) büyüklüğünü ve doğrultusunu (ip ile yaptığı açı) bulunuz. (a_r = 4,5 m/s², a_t = 3,4 m/s²)`,
      secenekler: ["a ≈ 5,6 m/s²; ip ile ≈ 37°", "a ≈ 7,9 m/s²; ip ile ≈ 37°", "a ≈ 5,6 m/s²; ip ile ≈ 53°", "a ≈ 1,1 m/s²; ip ile ≈ 20°", "a = 9,8 m/s²; düşey"],
      dogru: 0,
      aciklama: "Çapsal ve teğetsel bileşenler birbirine diktir: büyüklük Pisagor'la, ip (çapsal doğrultu) ile açı tan φ = a_t / a_r ile bulunur.",
      adimlar: [
        "**Büyüklük:** a = √(4,5² + 3,4²) = √(20,25 + 11,56) ≈ √31,8 ≈ 5,6 m/s².",
        "**Doğrultu:** φ = tan⁻¹(3,4 / 4,5) ≈ 37°, ip doğrultusundan.",
      ],
    },
    {
      id: "u5-s22", ornek: 22, kavram: "u5-denge",
      soru: "Şekildeki sistemler dengededir. Ölçü aleti Newton'a göre skalalandırılmıştır. Okunacak değerler neler olabilir? Makaralarda ve düzlemlerde sürtünmenin olmadığını kabul ediniz. (g = 10 m/s², bütün kütleler 5 kg)\n\n[[G-S5-16]]",
      secenekler: ["(a) 50 N; (b) 100 N; (c) 25 N", "(a) 100 N; (b) 100 N; (c) 50 N", "(a) 50 N; (b) 50 N; (c) 25 N", "(a) 0; (b) 100 N; (c) 25 N", "(a) 50 N; (b) 100 N; (c) 43 N"],
      dogru: 0,
      aciklama: "Dinamometre bağlı olduğu ipteki gerilmeyi okur. Bir ipin iki ucunda kütle varken gerilme toplam ağırlık değil, tek bir kütlenin ağırlığıdır.",
      adimlar: [
        "**(a):** Her kütle için T − mg = 0 → T = 50 N. Dinamometre ipin içinde, 50 N okur (iki ucu da 50 N ile çekilir).",
        "**(b):** İpteki gerilme yine T = 50 N. Makara iki ip parçasıyla aşağı çekilir; makarayı tutan dinamometre 2T = 100 N okur.",
        "**(c):** Eğik düzlemde dengede: T − mg sin 30° = 0 → T = 50 × 0,5 = 25 N.",
      ],
    },
    {
      id: "u5-s23a", ornek: 23, parca: "a ve b", kavram: "u5-yasalar",
      soru: `${ORNEK23}\n\nKütlelerin sahip olduğu ivmeyi ve her bloğa uygulanan bileşke kuvveti hesaplayınız.`,
      secenekler: ["a = 2 m/s²; 4 N, 6 N, 8 N", "a = 2 m/s²; 18 N, 14 N, 8 N", "a = 6 m/s²; 12 N, 18 N, 24 N", "a = 2 m/s²; 6 N, 6 N, 6 N", "a = 9 m/s²; 18 N, 27 N, 36 N"],
      dogru: 0,
      aciklama: "Bloklar birlikte hareket ettiği için ivmeleri aynıdır; sistemin ivmesi F / toplam kütle. Her bloğun bileşke kuvveti kendi kütlesi çarpı ivmedir. Not: sunu (b)'de 14 N ve 8 N vermiş; bunlar bloklar arası temas kuvvetleri, bileşke kuvvetler 4, 6 ve 8 N'dur.",
      adimlar: [
        "**İvme:** a = F / (m₁ + m₂ + m₃) = 18 / 9 = 2 m/s².",
        "**Bileşke kuvvetler:** F₁,net = 2 × 2 = 4 N; F₂,net = 3 × 2 = 6 N; F₃,net = 4 × 2 = 8 N.",
        "**Kontrol:** 4 + 6 + 8 = 18 N, dış kuvvete eşit ✓.",
      ],
    },
    {
      id: "u5-s23b", ornek: 23, parca: "c", kavram: "u5-yasalar",
      soru: `${ORNEK23}\n\nBloklar arası kontak kuvvetlerini hesaplayınız.`,
      secenekler: ["P₁₂ = 14 N; P₂₃ = 8 N", "P₁₂ = 6 N; P₂₃ = 8 N", "P₁₂ = 18 N; P₂₃ = 18 N", "P₁₂ = 4 N; P₂₃ = 6 N", "P₁₂ = 16 N; P₂₃ = 10 N"],
      dogru: 0,
      aciklama: "m₁'in m₂'ye uyguladığı kuvvet m₂ ile m₃'ü birlikte ivmelendirir; m₂'nin m₃'e uyguladığı kuvvet yalnız m₃'ü ivmelendirir. Üçüncü yasaya göre P₁₂ = −P₂₁.",
      adimlar: [
        "**P₁₂:** (m₂ + m₃) a = (3 + 4) × 2 = 14 N.",
        "**P₂₃:** m₃ a = 4 × 2 = 8 N.",
        "**Kontrol (m₁):** F − P₂₁ = m₁a → 18 − 14 = 4 = 2 × 2 ✓.",
      ],
    },
  ]),

  ...turet(U, K, "u5-kavram", [
    {
      id: "u5-t01", tip: "tf", zorluk: 1,
      soru: "Bir astronotun kütlesi Ay'da Dünya'dakinden küçüktür.",
      dogru: false,
      aciklama: "Kütle cismin eylemsizlik ölçüsüdür, konuma bağlı değildir. Ay'da değişen ağırlıktır (W = mg ve Ay'da g daha küçük).",
    },
    {
      id: "u5-t02", tip: "mcq",
      soru: "Kütlesi 60 kg olan bir astronotun Ay'daki ağırlığı nedir? (g_Ay ≈ 1,6 m/s²)",
      secenekler: ["96 N", "600 N", "60 N", "37,5 N", "9,6 N"],
      dogru: 0,
      aciklama: "Ağırlık W = mg; g bulunduğun yere bağlıdır.",
      adimlar: [
        "**Formül:** W = m g_Ay.",
        "**Hesap:** 60 × 1,6 = 96 N. (Dünya'da 600 N olurdu.)",
      ],
    },
    {
      id: "u5-t03", tip: "mcq",
      soru: "Aynı F kuvveti m₁ kütlesine 6 m/s², m₂ kütlesine 2 m/s² ivme kazandırıyor. m₁ / m₂ oranı nedir?",
      secenekler: ["1/3", "3", "1/2", "2", "1/6"],
      dogru: 0,
      aciklama: "Aynı kuvvet için ivme kütleyle ters orantılıdır: m₁a₁ = m₂a₂ → m₁ / m₂ = a₂ / a₁.",
      adimlar: [
        "**Eşitle:** F = m₁ × 6 = m₂ × 2.",
        "**Oran:** m₁ / m₂ = 2 / 6 = 1/3. Daha çok ivmelenen cisim daha hafiftir.",
      ],
    },
    {
      id: "u5-t04", tip: "fill", zorluk: 1,
      soru: "Bir cismin hız değişimine karşı gösterdiği direnç ____ olarak adlandırılır; bu direncin ölçüsü kütledir.",
      bosluklar: [["eylemsizlik", "eylemsizlik (atalet)", "atalet"]],
      aciklama: "**Eylemsizlik** (atalet): cisim hızını korumak ister. Kütlesi büyük olanı ivmelendirmek zordur; uzayda 1 tonluk kayayı tutabilirsin ama tekmeleyip hızlandırmaya çalışırsan ayağını kırabilirsin.",
    },
  ]),

  ...turet(U, K, "u5-yasalar", [
    {
      id: "u5-t05", tip: "mcq", zorluk: 1,
      soru: "5 kg kütleli bir cisme sürtünmesiz yatay düzlemde 20 N yatay net kuvvet uygulanıyor. Cismin ivmesi nedir?",
      secenekler: ["4 m/s²", "100 m/s²", "0,25 m/s²", "25 m/s²", "15 m/s²"],
      dogru: 0,
      aciklama: "Newton'un ikinci yasası: ΣF = ma → a = ΣF / m.",
      adimlar: ["**Hesap:** a = 20 / 5 = 4 m/s²."],
    },
    {
      id: "u5-t06", tip: "tf",
      soru: "Etki ve tepki kuvvetleri eşit büyüklükte ve zıt yönlü oldukları için aynı cisme etki ederek birbirini dengeler.",
      dogru: false,
      aciklama: "Üçüncü yasadaki etki-tepki çifti **farklı cisimlere** etki eder (P₁₂ m₂'ye, P₂₁ m₁'e). Bu yüzden birbirini dengeleyemezler. Masadaki kitapta ağırlık ve normal kuvvet birbirini dengeler ama bunlar etki-tepki çifti değildir.",
    },
    {
      id: "u5-t07", tip: "mcq",
      soru: "Üzerine etki eden net kuvvet sıfır olan bir cisim için hangisi kesinlikle doğrudur?",
      secenekler: ["İvmesi sıfırdır", "Durmaktadır", "Üzerine hiç kuvvet etki etmiyordur", "Yavaşlamaktadır", "Dairesel hareket yapmaktadır"],
      dogru: 0,
      aciklama: "Birinci yasa: net kuvvet sıfırsa cisim durumunu korur, yani ya durur ya da sabit hızla gider; her iki durumda ivme sıfırdır. Cismin üzerinde birbirini dengeleyen kuvvetler olabilir.",
    },
    {
      id: "u5-t08", tip: "mcq",
      soru: "Bir at arabayı çekiyor. At arabaya F kuvveti uyguluyorsa araba ata ne kadar kuvvet uygular?",
      secenekler: ["F, ters yönde", "F'den küçük", "F'den büyük", "Araba hızlanıyorsa sıfır", "2F, ters yönde"],
      dogru: 0,
      aciklama: "Üçüncü yasa koşulsuzdur: araba hızlansa da yavaşlasa da P_araba→at = −P_at→araba. Arabanın hızlanmasını, attan aldığı kuvvetin yolun sürtünmesinden büyük olması açıklar.",
    },
  ]),

  ...turet(U, K, "u5-denge", [
    {
      id: "u5-t09", tip: "mcq",
      soru: "40 N ağırlığındaki bir lamba, yatayla 30° açı yapan iki eş kabloyla şekildeki gibi asılıdır. Her bir kablodaki gerilme nedir? (sin 30° = 0,5)\n\n[[G-S5-18]]",
      secenekler: ["40 N", "20 N", "80 N", "≈ 23 N", "≈ 46 N"],
      dogru: 0,
      aciklama: "Simetrik durumda iki gerilme eşittir; yatay bileşenler birbirini götürür, düşey bileşenlerin toplamı ağırlığı dengeler.",
      adimlar: [
        "**Düşey denge:** 2T sin 30° = 40.",
        "**Çöz:** 2T × 0,5 = 40 → T = 40 N.",
        "**Yorum:** Kablolar yataya yaklaştıkça (açı küçüldükçe) gerilme artar; 30°'de her kablo lambanın tüm ağırlığı kadar gerilir.",
      ],
    },
    {
      id: "u5-t10", tip: "tf",
      soru: "Sabit hızla düz bir yolda giden bir arabaya etki eden net kuvvet sıfırdır.",
      dogru: true,
      aciklama: "Sabit hız (yön ve büyüklük sabit) ivme sıfır demektir; ikinci yasaya göre net kuvvet de sıfırdır. Motorun itişi sürtünme ve hava direnciyle dengelenir.",
    },
  ]),

  ...turet(U, K, "u5-ikinci", [
    {
      id: "u5-t11", tip: "mcq",
      soru: "Sürtünmesiz yatay düzlemdeki 2 kg kütleli bir bloğa yatayla 53° açı yapan F = 10 N kuvveti yukarı doğru uygulanıyor. Bloğun ivmesi ve normal kuvvet nedir? (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)\n\n[[G-S5-21]]",
      secenekler: ["a = 3 m/s²; N = 12 N", "a = 5 m/s²; N = 20 N", "a = 4 m/s²; N = 14 N", "a = 3 m/s²; N = 28 N", "a = 3 m/s²; N = 20 N"],
      dogru: 0,
      aciklama: "Yatay bileşen ivmeyi verir; düşey bileşen yukarı çektiği için normal kuvveti azaltır.",
      adimlar: [
        "**Yatay:** F cos 53° = 10 × 0,6 = 6 N → a = 6 / 2 = 3 m/s².",
        "**Düşey:** N + F sin 53° − mg = 0 → N = 20 − 8 = 12 N.",
      ],
    },
    {
      id: "u5-t12", tip: "mcq",
      soru: "Bir blok 30° eğimli sürtünmesiz bir düzlemin tepesinden serbest bırakılıyor. Eğik yüzey boyunca uzunluk 10 m'dir. Bloğun ivmesi ve alt uca vardığındaki hızı nedir? (g = 10 m/s²)\n\n[[G-S5-19]]",
      secenekler: ["a = 5 m/s²; v = 10 m/s", "a = 10 m/s²; v ≈ 14 m/s", "a ≈ 8,7 m/s²; v ≈ 13 m/s", "a = 5 m/s²; v = 100 m/s", "a = 5 m/s²; v ≈ 7,1 m/s"],
      dogru: 0,
      aciklama: "Sürtünmesiz eğik düzlemde a = g sin θ; ilk hız sıfır olduğundan v² = 2ad.",
      adimlar: [
        "**İvme:** a = 10 × sin 30° = 5 m/s².",
        "**Hız:** v² = 2 × 5 × 10 = 100 → v = 10 m/s.",
        "**Kontrol:** Yükseklik 10 × sin 30° = 5 m; √(2gh) = √100 = 10 m/s ✓.",
      ],
    },
    {
      id: "u5-t13", tip: "mcq",
      soru: "70 kg kütleli bir kişi asansörde bir baskülün üzerinde duruyor. Asansör 2 m/s² ivmeyle yukarı doğru hızlanırken baskül kaç N gösterir? (g = 10 m/s²)",
      secenekler: ["840 N", "700 N", "560 N", "140 N", "1400 N"],
      dogru: 0,
      aciklama: "Baskül normal kuvveti gösterir. Kişi asansörle birlikte yukarı ivmelendiği için N − mg = ma.",
      adimlar: [
        "**İkinci yasa (yukarı pozitif):** N − 700 = 70 × 2.",
        "**Sonuç:** N = 840 N. Aşağı yönde 2 m/s² ivmelenseydi 560 N gösterirdi.",
      ],
    },
  ]),

  ...turet(U, K, "u5-surtunme", [
    {
      id: "u5-t14", tip: "mcq",
      soru: "Yatay zemindeki 4 kg kütleli bir kutuya 30 N yatay kuvvet uygulanıyor. Kinetik sürtünme katsayısı 0,5 ise kutunun ivmesi nedir? (g = 10 m/s²)",
      secenekler: ["2,5 m/s²", "7,5 m/s²", "5 m/s²", "0", "12,5 m/s²"],
      dogru: 0,
      aciklama: "Önce sürtünme kuvveti μmg, sonra net kuvvet.",
      adimlar: [
        "**Sürtünme:** f = 0,5 × 4 × 10 = 20 N.",
        "**Net kuvvet:** 30 − 20 = 10 N.",
        "**İvme:** a = 10 / 4 = 2,5 m/s².",
      ],
    },
    {
      id: "u5-t15", tip: "mcq",
      soru: "Yatay zemindeki 10 kg kütleli bir dolaba 30 N yatay kuvvet uygulanıyor. Statik sürtünme katsayısı 0,4 ise dolaba etki eden sürtünme kuvveti nedir? (g = 10 m/s²)",
      secenekler: ["30 N", "40 N", "10 N", "0", "70 N"],
      dogru: 0,
      aciklama: "Statik sürtünmenin üst sınırı μ_s N'dir ama değeri uygulanan kuvvete göre ayarlanır.",
      adimlar: [
        "**Üst sınır:** f_max = 0,4 × 100 = 40 N.",
        "**Karşılaştır:** 30 N < 40 N, dolap kımıldamaz.",
        "**Sürtünme:** Net kuvvet sıfır olmalı → f = 30 N.",
      ],
    },
    {
      id: "u5-t16", tip: "mcq",
      soru: "Yatay bir yüzeyde 10 m/s hızla kaymaya başlayan bir blok, kinetik sürtünme katsayısı 0,5 olan yüzeyde kaç metre sonra durur? (g = 10 m/s²)",
      secenekler: ["10 m", "20 m", "5 m", "2 m", "100 m"],
      dogru: 0,
      aciklama: "a = −μg (kütle sadeleşir), sonra zamansız hız denklemi.",
      adimlar: [
        "**İvme:** a = −0,5 × 10 = −5 m/s².",
        "**Yol:** 0 = 100 + 2(−5)x → x = 10 m.",
      ],
    },
    {
      id: "u5-t17", tip: "mcq",
      soru: "37° eğimli bir düzlemdeki 2 kg kütleli bloğun düzlemle kinetik sürtünme katsayısı 0,5'tir. Blok aşağı kayarken ivmesi nedir? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)\n\n[[G-S5-20]]",
      secenekler: ["2 m/s²", "6 m/s²", "10 m/s²", "4 m/s²", "1 m/s²"],
      dogru: 0,
      aciklama: "Aşağı çeken mg sin θ, karşı koyan μ mg cos θ. Net kuvvet farklarıdır.",
      adimlar: [
        "**Aşağı bileşen:** mg sin 37° = 20 × 0,6 = 12 N.",
        "**Sürtünme:** μ mg cos 37° = 0,5 × 20 × 0,8 = 8 N.",
        "**İvme:** (12 − 8) / 2 = 2 m/s².",
        "**Formül:** a = g(sin θ − μ cos θ) = 10(0,6 − 0,4) = 2 m/s² ✓.",
      ],
    },
    {
      id: "u5-t18", tip: "mcq", zorluk: 3,
      soru: "37° eğimli bir düzlemde 2 kg kütleli bir blok duruyor. Statik sürtünme katsayısı 0,8'dir. Bloğa etki eden sürtünme kuvveti nedir? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)",
      secenekler: ["12 N", "12,8 N", "16 N", "0", "20 N"],
      dogru: 0,
      aciklama: "Önce kayıp kaymadığını kontrol et: blok μ_s ≥ tan θ ise durur. Duruyorsa sürtünme μN değil, aşağı çeken bileşen kadardır.",
      adimlar: [
        "**Kayar mı:** tan 37° = 0,75 < 0,8, blok durur. (Ya da f_max = 0,8 × 16 = 12,8 N > 12 N.)",
        "**Sürtünme:** Denge: f = mg sin 37° = 20 × 0,6 = 12 N.",
        "**Tuzak:** 12,8 N yalnız üst sınırdır; bloğa etki eden sürtünme 12 N'dur.",
      ],
    },
    {
      id: "u5-t19", tip: "mcq", zorluk: 3,
      soru: "4 kg kütleli bir blok bir duvara F = 100 N yatay kuvvetle bastırılıyor. Blok ile duvar arasındaki statik sürtünme katsayısı 0,5'tir. Blok kayar mı, sürtünme kuvveti ne kadardır? (g = 10 m/s²)\n\n[[G-S5-24]]",
      secenekler: ["Kaymaz; f = 40 N", "Kaymaz; f = 50 N", "Kayar; f = 50 N", "Kayar; f = 40 N", "Kaymaz; f = 100 N"],
      dogru: 0,
      aciklama: "Normal kuvvet bastırma kuvvetine eşittir (N = F). Duvardaki sürtünmenin üst sınırı ağırlıktan büyükse blok durur ve sürtünme ağırlık kadardır.",
      adimlar: [
        "**Normal kuvvet:** N = F = 100 N.",
        "**Üst sınır:** f_max = 0,5 × 100 = 50 N.",
        "**Ağırlık:** mg = 40 N < 50 N, blok kaymaz.",
        "**Sürtünme:** Denge: f = 40 N (yukarı).",
      ],
    },
  ]),

  ...turet(U, K, "u5-bagli", [
    {
      id: "u5-t20", tip: "mcq",
      soru: "Sürtünmesiz bir makaradan geçen ipin bir ucunda 3 kg, öbür ucunda 2 kg kütle asılıdır. Sistemin ivmesi ve ipteki gerilme nedir? (g = 10 m/s²)\n\n[[G-S5-25]]",
      secenekler: ["a = 2 m/s²; T = 24 N", "a = 10 m/s²; T = 0", "a = 2 m/s²; T = 30 N", "a = 2 m/s²; T = 20 N", "a = 5 m/s²; T = 25 N"],
      dogru: 0,
      aciklama: "Atwood aletinde net kuvvet ağırlıkların farkıdır ve toplam kütleyi ivmelendirir. Gerilme iki ağırlığın arasında bir değer olmalı.",
      adimlar: [
        "**İvme:** a = (30 − 20) / (3 + 2) = 2 m/s².",
        "**Gerilme (2 kg, yukarı):** T − 20 = 2 × 2 → T = 24 N.",
        "**Kontrol (3 kg):** 30 − 24 = 6 = 3 × 2 ✓.",
      ],
    },
    {
      id: "u5-t21", tip: "mcq",
      soru: "Sürtünmesiz bir masadaki 3 kg blok, masanın kenarındaki makaradan geçen iple asılı 2 kg bloğa bağlıdır. İvme ve gerilme nedir? (g = 10 m/s²)\n\n[[G-S5-22]]",
      secenekler: ["a = 4 m/s²; T = 12 N", "a = 10 m/s²; T = 20 N", "a ≈ 6,7 m/s²; T = 20 N", "a = 4 m/s²; T = 20 N", "a = 4 m/s²; T = 8 N"],
      dogru: 0,
      aciklama: "Sistemi hareket ettiren tek kuvvet asılı bloğun ağırlığıdır; iki kütleyi birlikte ivmelendirir. Gerilme masadaki bloğu ivmelendiren kuvvettir.",
      adimlar: [
        "**İvme:** a = 20 / (3 + 2) = 4 m/s².",
        "**Gerilme:** T = 3 × 4 = 12 N.",
        "**Kontrol (2 kg):** 20 − 12 = 8 = 2 × 4 ✓. Gerilme asılı bloğun ağırlığından küçük çıkar, çünkü blok aşağı ivmelenir.",
      ],
    },
    {
      id: "u5-t22", tip: "mcq",
      soru: "Sürtünmesiz düzlemde yan yana duran 1 kg, 2 kg ve 3 kg kütleli bloklardan soldakine F = 24 N yatay kuvvet uygulanıyor. İvme ve bloklar arası temas kuvvetleri nedir?\n\n[[G-S5-26]]",
      secenekler: ["a = 4 m/s²; P₁₂ = 20 N; P₂₃ = 12 N", "a = 4 m/s²; P₁₂ = 8 N; P₂₃ = 12 N", "a = 4 m/s²; P₁₂ = 24 N; P₂₃ = 24 N", "a = 24 m/s²; P₁₂ = 20 N; P₂₃ = 12 N", "a = 4 m/s²; P₁₂ = 4 N; P₂₃ = 8 N"],
      dogru: 0,
      aciklama: "Önce bütün sistemin ivmesi; sonra her temas kuvveti, kendisinden sonraki blokların toplam kütlesini ivmelendirir.",
      adimlar: [
        "**İvme:** a = 24 / 6 = 4 m/s².",
        "**P₁₂:** (2 + 3) × 4 = 20 N.",
        "**P₂₃:** 3 × 4 = 12 N.",
      ],
    },
    {
      id: "u5-t23", tip: "mcq", zorluk: 3,
      soru: "30° eğimli sürtünmesiz düzlemdeki 4 kg blok, tepedeki makaradan geçen iple asılı 4 kg bloğa bağlıdır. Sistemin ivmesi ve ipteki gerilme nedir? (g = 10 m/s²)\n\n[[G-S5-23]]",
      secenekler: ["a = 2,5 m/s²; T = 30 N", "a = 0; T = 40 N", "a = 5 m/s²; T = 20 N", "a = 2,5 m/s²; T = 40 N", "a = 2,5 m/s²; T = 20 N"],
      dogru: 0,
      aciklama: "Kütleler eşit olsa da düzlemdeki bloğu aşağı çeken yalnız ağırlığın mg sin 30° bileşenidir. Bu yüzden asılı blok iner.",
      adimlar: [
        "**Yön:** Asılı: 40 N; düzlemdeki: 40 × 0,5 = 20 N. Asılı blok aşağı iner.",
        "**İvme:** a = (40 − 20) / (4 + 4) = 2,5 m/s².",
        "**Gerilme (asılı):** 40 − T = 4 × 2,5 → T = 30 N.",
      ],
    },
  ]),

  ...turet(U, K, "u5-dairesel", [
    {
      id: "u5-t24", tip: "mcq",
      soru: "Yarıçapı 50 m olan yatay, düz bir virajda tekerlek-yol sürtünme katsayısı 0,5'tir. Bir araba bu virajı kaymadan en fazla hangi hızla dönebilir? (g = 10 m/s²)",
      secenekler: ["≈ 15,8 m/s", "25 m/s", "250 m/s", "≈ 22,4 m/s", "≈ 11,2 m/s"],
      dogru: 0,
      aciklama: "Sürtünmenin sağlayabileceği en büyük merkezcil kuvvet μmg: v_max = √(μgr).",
      adimlar: [
        "**Formül:** v² = μgr = 0,5 × 10 × 50 = 250.",
        "**Sonuç:** v = √250 ≈ 15,8 m/s (≈ 57 km/sa).",
      ],
    },
    {
      id: "u5-t25", tip: "mcq",
      soru: "0,2 kg kütleli bir taş 1 m uzunluğundaki bir ipin ucunda sürtünmesiz yatay düzlemde 5 m/s süratle döndürülüyor. İpteki gerilme nedir?",
      secenekler: ["5 N", "1 N", "25 N", "2 N", "0,5 N"],
      dogru: 0,
      aciklama: "Yatay düzlemde merkezcil kuvveti tek başına ip sağlar: T = m v² / r.",
      adimlar: ["**Hesap:** T = 0,2 × 25 / 1 = 5 N."],
    },
    {
      id: "u5-t26", tip: "mcq", zorluk: 3,
      soru: "Yarıçapı 80 m olan ve yatayla 37° eğimli sürtünmesiz bir virajı bir araba kaymadan hangi hızla dönebilir? (tan 37° = 0,75; g = 10 m/s²)",
      secenekler: ["≈ 24,5 m/s", "≈ 28,3 m/s", "600 m/s", "≈ 17,3 m/s", "≈ 21,2 m/s"],
      dogru: 0,
      aciklama: "Eğimli virajda merkezcil kuvveti N sin θ sağlar, N cos θ ağırlığı dengeler: v = √(gr tan θ).",
      adimlar: [
        "**Formül:** v² = gr tan θ = 10 × 80 × 0,75 = 600.",
        "**Sonuç:** v = √600 ≈ 24,5 m/s (≈ 88 km/sa).",
      ],
    },
    {
      id: "u5-t27", tip: "tf",
      soru: "Düzgün dairesel hareket yapan bir cisme etki eden net kuvvet çemberin merkezine yönelir.",
      dogru: true,
      aciklama: "İkinci yasa: ΣF = m a. Düzgün dairesel harekette ivme merkezcildir (a_r = v²/r), bu yüzden net kuvvet de merkeze yönelir. \"Merkezcil kuvvet\" ayrı bir kuvvet değil; bu rolü ip gerilmesi, sürtünme ya da normal kuvvet üstlenir.",
    },
  ]),
];
