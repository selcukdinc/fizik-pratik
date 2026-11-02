// Sunularda geçen fizik terimleri: Türkçe, İngilizce ve kısa anlam.
// Terimler sayfası bu listeden çizilir. satirIci işaretli terimlerin
// İngilizcesi ders ve soru metinlerinde parantez içinde de gösterilir; soru
// metinleri sunudaki gibi kalsın diye şu an hiçbir terim işaretli değil.

export interface Terim {
  tr: string;
  en: string;
  // Büyük harfle yazılan mantık işlemleri (VE, VEYA) yalnızca büyük harfle eşleşir;
  // küçük harfli "ve" bağlacı terim değildir.
  buyuk?: boolean;
  aciklama?: string;
  satirIci?: boolean;
}

export const TERIMLER: Terim[] = [
  { tr: "SI birim sistemi", en: "International System of Units (SI)", aciklama: "Uluslararası birim sistemi; 7 temel birimi var (m, kg, s, A, K, mol, cd)" },
  { tr: "temel büyüklük", en: "fundamental quantity", aciklama: "Başka niceliklerden türetilmeyen büyüklük; mekanikte uzunluk, kütle ve zaman" },
  { tr: "boyut analizi", en: "dimensional analysis", aciklama: "Eşitliğin iki tarafının aynı boyutta ([L], [M], [T]) olup olmadığını denetleme" },
  { tr: "yoğunluk", en: "density", aciklama: "Birim hacimdeki kütle, ρ = m/V" },
  { tr: "anlamlı rakam", en: "significant figure", aciklama: "Bir ölçümde güvenilir olan rakamlar ve tahmine dayanan son rakam" },
  { tr: "skaler", en: "scalar", aciklama: "Yalnız büyüklüğü olan nicelik: kütle, zaman, sürat, enerji" },
  { tr: "vektör", en: "vector", aciklama: "Büyüklüğü ve yönü olan nicelik: yerdeğiştirme, hız, ivme, kuvvet" },
  { tr: "birim vektör", en: "unit vector", aciklama: "Büyüklüğü 1 olan, yalnız yön belirten boyutsuz vektör (î, ĵ, k̂)" },
  { tr: "bileşen", en: "component", aciklama: "Bir vektörün bir eksen üzerindeki izdüşümü (A_x = A cos θ)" },
  { tr: "kartezyen koordinat", en: "Cartesian coordinates", aciklama: "Noktanın birbirine dik eksenlerdeki (x, y) uzaklıkları" },
  { tr: "kutupsal koordinat", en: "polar coordinates", aciklama: "Noktanın orijine uzaklığı r ve +x ekseninden açısı θ" },
  { tr: "bileşke", en: "resultant", aciklama: "Birden çok vektörün toplamı" },
  { tr: "skaler çarpım", en: "scalar (dot) product", aciklama: "A · B = AB cos θ; sonucu skalerdir, iş hesabında kullanılır" },
  { tr: "vektörel çarpım", en: "vector (cross) product", aciklama: "A × B; büyüklüğü AB sin θ, yönü sağ el kuralıyla iki vektöre dik" },
  { tr: "sağ el kuralı", en: "right-hand rule", aciklama: "Vektörel çarpımın yönünü bulma yolu: parmaklar A'dan B'ye kıvrılır, başparmak yönü verir" },
  { tr: "konum", en: "position", aciklama: "Cismin seçilen orijine göre yeri" },
  { tr: "yerdeğiştirme", en: "displacement", aciklama: "Son konum eksi ilk konum; izlenen yola bakmaz" },
  { tr: "alınan yol", en: "distance traveled", aciklama: "Cismin izlediği yolun toplam uzunluğu; skalerdir" },
  { tr: "ortalama hız", en: "average velocity", aciklama: "Yerdeğiştirmenin geçen süreye oranı" },
  { tr: "ortalama sürat", en: "average speed", aciklama: "Toplam yolun geçen süreye oranı" },
  { tr: "ani hız", en: "instantaneous velocity", aciklama: "Konumun zamana göre türevi, v = dx/dt" },
  { tr: "ivme", en: "acceleration", aciklama: "Hızın zamana göre değişim hızı, a = dv/dt" },
  { tr: "ortalama ivme", en: "average acceleration", aciklama: "Hız değişiminin geçen süreye oranı, ā = Δv/Δt" },
  { tr: "sabit ivmeli hareket", en: "motion with constant acceleration", aciklama: "İvmenin değişmediği hareket; v = v₀ + at, x = v₀t + ½at²" },
  { tr: "serbest düşme", en: "free fall", aciklama: "Yalnız yerçekimi etkisinde hareket; ivme g, aşağı yönlü" },
  { tr: "yerçekimi ivmesi", en: "gravitational acceleration", aciklama: "Yeryüzünde serbest düşen cismin ivmesi, g ≈ 9,8 m/s² (sorularda çoğu kez 10)" },
  { tr: "eğik atış", en: "projectile motion", aciklama: "Yatayla açı yaparak atılan cismin hareketi; yatayda düzgün, düşeyde sabit ivmeli" },
  { tr: "yatay atış", en: "horizontal projection", aciklama: "Yatay hızla atılan cismin hareketi; düşey ilk hız sıfır" },
  { tr: "menzil", en: "range", aciklama: "Eğik atışta cismin atıldığı seviyeye döndüğü yatay uzaklık, R = v₀² sin 2θ / g" },
  { tr: "yörünge", en: "trajectory", aciklama: "Hareket eden cismin izlediği yol; eğik atışta paraboldür" },
  { tr: "düzgün dairesel hareket", en: "uniform circular motion", aciklama: "Çember üzerinde sabit süratle hareket" },
  { tr: "merkezcil ivme", en: "centripetal acceleration", aciklama: "Dairesel harekette merkeze yönelen ivme, a_r = v²/r" },
  { tr: "teğetsel ivme", en: "tangential acceleration", aciklama: "Hızın büyüklüğünü değiştiren, yörüngeye teğet ivme" },
  { tr: "periyot", en: "period", aciklama: "Bir tam turun süresi" },
  { tr: "bağıl hız", en: "relative velocity", aciklama: "Bir cismin başka bir gözlemciye göre hızı; v_AC = v_AB + v_BC" },
  { tr: "referans sistemi", en: "frame of reference", aciklama: "Hareketin ölçüldüğü koordinat sistemi ve gözlemci" },
  { tr: "kuvvet", en: "force", aciklama: "Cismin hareket durumunu değiştiren etki; birimi newton (N)" },
  { tr: "kütle", en: "mass", aciklama: "Cismin eylemsizlik ölçüsü; konuma bağlı değildir" },
  { tr: "ağırlık", en: "weight", aciklama: "Cisme etki eden yerçekimi kuvveti, W = mg; konuma bağlıdır" },
  { tr: "eylemsizlik", en: "inertia", aciklama: "Cismin hareket durumunu koruma eğilimi" },
  { tr: "net kuvvet", en: "net force", aciklama: "Cisme etki eden bütün kuvvetlerin vektör toplamı" },
  { tr: "serbest cisim diyagramı", en: "free-body diagram", aciklama: "Cismi ayrı çizip üzerine etki eden bütün kuvvetleri gösteren şekil" },
  { tr: "normal kuvvet", en: "normal force", aciklama: "Yüzeyin cisme dik olarak uyguladığı tepki kuvveti" },
  { tr: "gerilme", en: "tension", aciklama: "İpin ya da kablonun çektiği cisme uyguladığı kuvvet" },
  { tr: "statik sürtünme", en: "static friction", aciklama: "Durgun cismi kaymaktan alıkoyan sürtünme; en fazla μ_s N" },
  { tr: "kinetik sürtünme", en: "kinetic friction", aciklama: "Kayan cisme etki eden sürtünme, f = μ_k N" },
  { tr: "sürtünme katsayısı", en: "coefficient of friction", aciklama: "Sürtünme kuvvetinin normal kuvvete oranı, μ" },
  { tr: "denge", en: "equilibrium", aciklama: "Net kuvvetin sıfır olduğu durum; cisim durur ya da sabit hızla gider" },
  { tr: "etki-tepki", en: "action-reaction", aciklama: "Üçüncü yasa: iki cisim birbirine eşit büyüklükte, zıt yönlü kuvvet uygular" },
  { tr: "Atwood aleti", en: "Atwood machine", aciklama: "Makaradan geçen ipin uçlarına asılı iki kütleden oluşan düzenek" },
  { tr: "dinamometre", en: "spring scale (dynamometer)", aciklama: "Bağlı olduğu ipteki gerilmeyi ölçen alet" },
];

export type Parca = string | { metin: string; en: string };

const kacir = (s: string) => s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
const HARF = "a-zçğıöşüâîû";

// Uzun terimler önce denenir ("ÖZEL VEYA", "VEYA"dan önce). Küçük harfli terimler
// cümle başında büyük harfle de eşleşir ve Türkçe ekleri kapsar (sentezlenir,
// kapısı). Büyük harfli terimler kesme işaretli ekleri kapsar (VE'leri).
// Hemen ardından "(" gelen kullanım zaten açıklanmış sayılır.
function desen(liste: Terim[]): RegExp | null {
  if (!liste.length) return null;
  return new RegExp(
    liste
      .map((t) => {
        if (t.buyuk) return `(${kacir(t.tr)}(?:'[${HARF}]+)?)`;
        const ilk = t.tr[0]!;
        return `([${ilk}${ilk.toLocaleUpperCase("tr")}]${kacir(t.tr.slice(1))}[${HARF}]*)`;
      })
      .map((g) => `(?<![\\p{L}\\d_])${g}(?![\\p{L}\\d_])(?!\\s*\\()`)
      .join("|"),
    "gu",
  );
}

const onbellek = new Map<Terim[], { sirali: Terim[]; re: RegExp | null }>();
const SATIR_ICI = TERIMLER.filter((t) => t.satirIci);

export function terimleriAyir(metin: string, liste: Terim[] = SATIR_ICI): Parca[] {
  let d = onbellek.get(liste);
  if (!d) {
    const sirali = [...liste].sort((a, b) => b.tr.length - a.tr.length);
    d = { sirali, re: desen(sirali) };
    onbellek.set(liste, d);
  }
  if (!d.re) return [metin];
  const out: Parca[] = [];
  let son = 0;
  for (const m of metin.matchAll(d.re)) {
    const i = m.slice(1).findIndex((g) => g !== undefined);
    const terim = d.sirali[i]!;
    if (m.index! > son) out.push(metin.slice(son, m.index));
    out.push({ metin: m[0], en: terim.en });
    son = m.index! + m[0].length;
  }
  if (son < metin.length) out.push(metin.slice(son));
  return out;
}
