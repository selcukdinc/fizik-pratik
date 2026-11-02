# Çalışma notları

- Kullanıcıya görünen her değişiklik (her PR) `src/yenilikler.ts` dosyasının en üstüne bir kayıt ekler: PR numarası, tarih, kısa başlık ve kullanıcının diliyle maddeler. `src/yenilikler.test.ts` sırayı ve biçimi denetler.
- Sorular `content/sorular/unite-N.ts` dosyalarındadır (N, sunudaki bölüm numarası). Sunu örnekleri (`sunu()`, etiket Sunu) sunudaki metniyle kalır; çok parçalı örnek parça parça ayrı soru olur (`parca`). Türetilmiş sorular (`turet()`) aynı kalıptan ya da konudan kendi cümlelerimizle yazılır.
- Her sunu örneğinde ve sayısal türetilmiş soruda `aciklama` çözümün fikridir, `adimlar` adım adım çözümdür; son adım sonucu söyler. Sunuda hesap hatası varsa doğru değeri kullan ve açıklamada "Not: sunu … yazmış" diye belirt.
- Şekilli sorularda şekil `src/gorseller/sorular.ts`'te SVG olarak çizilir ve soruda tek başına bir paragraf olarak `[[G-S<ünite>-<nn>]]` yazılır. Her şekil en az bir soruda kullanılmalı (`src/gorseller/gorseller.test.ts`).
- Sayısal sorularda g = 10 m/s²; sununun kendisi 9,8 kullandıysa soruda "(g = 9,8 m/s²)" yazılır.
- Başka şıklara harfle atıf yapan ("a ve c") ya da "Hepsi" şıkkı olan sorularda `sabit: true` yazılır; şıklar karıştırılmaz. Açıklama doğru şıkkı harfle anmaz.
- Türetilmiş sorularda doğru şık dikkat çekecek kadar uzun olmaz ve parantez ya hepsinde ya hiçbirinde bulunur (`src/lib/sik-denetimi.ts`).
- Her sorunun `kavram`ı `shared/kavramlar.ts`'te `u<ünite>-` önekiyle tanımlıdır.
- `settings.current_week` kaçıncı üniteye kadar soruların görüneceğini belirler.
- Denetimler: `npx tsc -b`, `npx vitest run`, `npm run build`.
