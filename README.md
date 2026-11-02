# Fizik Pratik

Fizik dersi sunularındaki çözümlü örneklere dayanan, açık kaynaklı ve ücretsiz bir soru çalışma sitesi.
Her sorunun çözümü adım adım anlatılır.

**Site:** [fizik.selcukdinc.dev](https://fizik.selcukdinc.dev)

## Neler var?

- **Karma test:** Seçtiğin ünitelerden sorular karışık sırayla, şıklar karışık yerlerde gelir.
  10, 20, 30, 50 ya da tüm sorularla test kur; sonunda puanını ve yanlışlarını gör.
- **Etiketli sorular:**
  - `Sunu`: ders sunularındaki çözümlü örnekler, sunudaki metinleriyle. Çok parçalı örnekler parça parça sorulur.
  - `Türetilmiş`: aynı kalıptan ve aynı konulardan kendi cümlelerimizle yazılmış sorular.
- **Adım adım çözüm:** Önce çözümün fikri, sonra adımlar. Adımlar tek tek açılır; öğrenci bir sonrakini açmadan önce kendisi bulmayı dener.
- **Şekilli sorular:** Eğik atış, eğik düzlem, makara gibi sorular şekilleriyle gelir (SVG; açık ve koyu temaya uyar).
- **Soru havuzu:** Ünite ünite, sunu sırasıyla ya da karışık.
- **Aralıklı tekrar:** Yanlış yaptığın sorular 1, 3, 7, 14 ve 30 gün arayla yeniden gelir.
- **İlerleme:** Ünite ve kavram bazında doğru oranın.
- **Konu anlatımları:** Yakında.

## Gizlilik

- Reklam yok, analitik ya da takip çerezi yok.
- Yalnızca ilk cevabını gönderdiğinde ilerlemeni tutmak için tek bir oturum çerezi yazılır.

## Katkıda bulun

- **Yanlış soru mu gördün?** [Yeni bir issue aç](https://github.com/selcukdinc/fizik-pratik/issues/new);
  ünite numarasını ve sorunun metnini yazman yeterli.
- **Beğendiysen** depoya yıldız ver, başkalarının bulmasına yardımcı olur.

## Geliştiriciler için

Gereksinim: Node.js 22.12 veya üstü.

```sh
npm install
npm run db:migrate:local   # yerel veritabanına şema ve sorular
npm run dev                # http://localhost:5173
npm test
```

Sorular `content/sorular/unite-N.ts` dosyalarındadır. Değiştirdikten sonra
`npm run sorular:sql -- migrations/NNNN_ad.sql` ile yeni bir migration üret.
Soru şekilleri `src/gorseller/sorular.ts` içinde SVG olarak çizilir; soruda tek başına
bir paragraf olarak `[[G-S5-01]]` yazılır.

Kayıt, doğrulama e-postası gerektirdiği için yalnızca `RESEND_API_KEY` tanımlıyken açılır.
Yerelde denemek için proje kökünde `.dev.vars` dosyasına `EPOSTA_KONSOL=1` yaz;
doğrulama kodları e-posta yerine `npm run dev` çıktısına düşer.

## Lisans

[MIT](LICENSE). Sorular ders sunularındaki örneklere dayanır; sunular depoda yer almaz.
