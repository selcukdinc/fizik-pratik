-- Bu dosya scripts/sorular-sql.ts ile content/sorular'dan üretildi, elle düzenlemeyin.

INSERT INTO topics (id, title, week, sort) VALUES ('u2', 'Vektörler', 2, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('u3', 'Bir Boyutta Hareket', 3, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('u4', 'İki Boyutta Hareket', 4, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('u5', 'Newton Kanunları', 5, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;

INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s01', 'u2', 2, 'mcq', 'original', 'Bir noktanın Kartezyen koordinatları (x, y) = (−3,5; −2,5) m olarak verilmektedir. Bu noktanın kutupsal koordinatlarını (r, θ) bulun.', '{"choices":["r = 4,3 m; θ = 216°","r = 4,3 m; θ = 36°","r = 6,0 m; θ = 216°","r = 4,3 m; θ = 144°","r = 18,5 m; θ = 216°"]}', '{"index":0}', 'Kutupsal koordinatta r orijine uzaklık, θ ise +x ekseninden saat yönünün tersine ölçülen açıdır. tan θ iki açı verir; doğrusunu noktanın hangi çeyrekte olduğu seçer.

---

**Uzaklık:** r = √(x² + y²) = √((−3,5)² + (−2,5)²) = √(12,25 + 6,25) = √18,5 ≈ 4,3 m.

---

**Açının tanjantı:** tan θ = y / x = (−2,5) / (−3,5) = 0,714. Hesap makinesi tan⁻¹(0,714) ≈ 36° verir.

---

**Çeyreği kontrol et:** x ve y ikisi de negatif, yani nokta **üçüncü çeyrekte**. 36° birinci çeyrekte kalır; tanjantı aynı olan üçüncü çeyrek açısı 180° + 36° = 216°''dir.

---

**Sonuç:** (r, θ) = (4,3 m; 216°).', 2, 'Sunu, Bölüm 2, Örnek 1', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s02', 'u2', 2, 'mcq', 'original', 'xy düzleminde yer alan ve **A** = 2î + 2ĵ m ve **B** = 2î − 4ĵ m ile verilen **A** ve **B** vektörlerinin toplamını (büyüklük ve +x ekseniyle yaptığı açı) bulunuz.', '{"choices":["|R| = √20 m ≈ 4,5 m; θ = 333°","|R| = √20 m ≈ 4,5 m; θ = 27°","|R| = 6 m; θ = 333°","|R| = √20 m ≈ 4,5 m; θ = 153°","|R| = √52 m ≈ 7,2 m; θ = 304°"]}', '{"index":0}', 'Vektörler bileşen bileşen toplanır: aynı birim vektörün katsayıları kendi aralarında toplanır. Sonra büyüklük Pisagor''la, yön tanjantla bulunur.

---

**Bileşenleri yaz:** A_x = 2 m, A_y = 2 m; B_x = 2 m, B_y = −4 m.

---

**Topla:** R = A + B = (2 + 2)î + (2 − 4)ĵ = 4î − 2ĵ m. Yani R_x = 4 m, R_y = −2 m.

---

**Büyüklük:** |R| = √(R_x² + R_y²) = √(16 + 4) = √20 m ≈ 4,5 m.

---

**Yön:** tan θ = R_y / R_x = −2 / 4 = −0,5. tan⁻¹(−0,5) ≈ −27°. R_x pozitif, R_y negatif olduğu için vektör **dördüncü çeyrekte**; +x''ten saat yönünün tersine ölçersek θ = 360° − 27° = 333°.', 2, 'Sunu, Bölüm 2, Örnek 2', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s03a', 'u2', 2, 'mcq', 'original', 'Şekilde boyları ve açıları belirtilmiş olan **A**, **B**, **C**, **D** vektörlerinin bileşenlerini hesaplayın. Buna göre **A** vektörünün bileşenleri nedir? (cos 60° = 0,5; sin 60° = 0,87)

[[G-S2-01]]', '{"choices":["A_x = 5; A_y = 8,7","A_x = 8,7; A_y = 5","A_x = 5; A_y = −8,7","A_x = 10; A_y = 0","A_x = 8,7; A_y = −5"]}', '{"index":0}', 'Bileşen formülleri A_x = A cos θ ve A_y = A sin θ''daki θ, **+x ekseninden** ölçülen açıdır. Şekilde açı y ekseninden verildiyse önce +x''e göre açıya çevir.

---

**Açıyı +x eksenine göre yaz:** A, y ekseninden 30° sağda. +x ekseniyle yaptığı açı θ = 90° − 30° = 60°.

---

**x bileşeni:** A_x = A cos 60° = 10 × 0,5 = 5.

---

**y bileşeni:** A_y = A sin 60° = 10 × 0,87 = 8,7.

---

**Kontrol:** A birinci çeyrekte, iki bileşen de pozitif olmalı. √(5² + 8,7²) ≈ 10 ✓.', 1, 'Sunu, Bölüm 2, Örnek 3 (A)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s03b', 'u2', 2, 'mcq', 'original', 'Şekilde boyları ve açıları belirtilmiş olan **A**, **B**, **C**, **D** vektörlerinin bileşenlerini hesaplayın. Buna göre **B** vektörünün bileşenleri nedir? (cos 37° = 0,8; sin 37° = 0,6)

[[G-S2-01]]', '{"choices":["B_x = −4,8; B_y = 3,6","B_x = 4,8; B_y = 3,6","B_x = −3,6; B_y = 4,8","B_x = −4,8; B_y = −3,6","B_x = 3,6; B_y = −4,8"]}', '{"index":0}', 'B ikinci çeyrekte: x bileşeni negatif, y bileşeni pozitif çıkmalı. +x''ten ölçülen açıyla formül işareti kendiliğinden verir.

---

**Açıyı +x eksenine göre yaz:** B, y ekseninden 53° solda. +x ekseniyle açısı 90° + 53° = 143° = 180° − 37°.

---

**x bileşeni:** B_x = B cos(180° − 37°) = 6 × (−cos 37°) = −6 × 0,8 = −4,8.

---

**y bileşeni:** B_y = B sin(180° − 37°) = 6 × sin 37° = 6 × 0,6 = 3,6.

---

**Kontrol:** İkinci çeyrek: (−, +) ✓.', 2, 'Sunu, Bölüm 2, Örnek 3 (B)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s03c', 'u2', 2, 'mcq', 'original', 'Şekilde boyları ve açıları belirtilmiş olan **A**, **B**, **C**, **D** vektörlerinin bileşenlerini hesaplayın. Buna göre **C** ve **D** vektörlerinin bileşenleri nedir? (cos 25° = 0,91; sin 25° = 0,42)

[[G-S2-01]]', '{"choices":["C_x = −7,3; C_y = −3,4; D_x = 0; D_y = −3","C_x = −3,4; C_y = −7,3; D_x = 0; D_y = −3","C_x = 7,3; C_y = 3,4; D_x = 0; D_y = 3","C_x = −7,3; C_y = −3,4; D_x = −3; D_y = 0","C_x = −7,3; C_y = 3,4; D_x = 0; D_y = −3"]}', '{"index":0}', 'C üçüncü çeyrekte, iki bileşeni de negatif. Bir eksenin üzerinde duran vektörün öbür eksendeki bileşeni sıfırdır.

---

**C''nin açısı:** C, −x ekseninden 25° aşağıda. Bu durumda büyüklüğü −x yönüne göre bileşenlere ayırmak kolaydır.

---

**C_x:** C_x = −C cos 25° = −8 × 0,91 ≈ −7,3.

---

**C_y:** C_y = −C sin 25° = −8 × 0,42 ≈ −3,4.

---

**D:** D tamamen −y yönünde: D_x = 0 ve D_y = −3.', 2, 'Sunu, Bölüm 2, Örnek 3 (C ve D)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s04a', 'u2', 2, 'mcq', 'original', '**F** vektörünün bileşenleri F_x = 3, F_y = −4 olarak verilmiştir. Bu vektörün şiddetini ve yönünü (+x ekseniyle açısını) bulun.', '{"choices":["F = 5; θ = −53°","F = 5; θ = 127°","F = 7; θ = −53°","F = 5; θ = −37°","F = 1; θ = 53°"]}', '{"index":0}', 'Şiddet F = √(F_x² + F_y²). tan θ = F_y / F_x iki açı verir (aralarında 180° fark var); hangisi olduğuna bileşenlerin işaretine bakarak karar verilir.

---

**Şiddet:** F = √(3² + (−4)²) = √(9 + 16) = √25 = 5.

---

**Tanjant:** tan θ = F_y / F_x = −4 / 3 ≈ −1,33. Tanjantı −1,33 olan iki açı: +127° ve −53°.

---

**Çeyrek:** F_x pozitif, F_y negatif, yani vektör **dördüncü çeyrekte**. 127° ikinci çeyrekte kalır, o halde θ = −53° (yani 307°).', 2, 'Sunu, Bölüm 2, Örnek 4 (F)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s04b', 'u2', 2, 'mcq', 'original', '**G** vektörünün bileşenleri G_x = −5, G_y = −12 olarak verilmiştir. Bu vektörün şiddetini ve yönünü (+x ekseniyle açısını) bulun.', '{"choices":["G = 13; θ = −113°","G = 13; θ = 67°","G = 17; θ = −113°","G = 13; θ = 113°","G = 13; θ = −67°"]}', '{"index":0}', 'Tanjant pozitif çıksa bile vektör birinci çeyrekte olmayabilir: iki bileşen de negatifse açı üçüncü çeyrektedir.

---

**Şiddet:** G = √((−5)² + (−12)²) = √(25 + 144) = √169 = 13.

---

**Tanjant:** tan θ = G_y / G_x = (−12) / (−5) = 2,4. Tanjantı 2,4 olan iki açı: +67° ve −113° (ya da 247°).

---

**Çeyrek:** İki bileşen de negatif, vektör **üçüncü çeyrekte**. Bu yüzden θ = −113°.', 2, 'Sunu, Bölüm 2, Örnek 4 (G)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s05a', 'u2', 2, 'mcq', 'original', 'Şekilde **A** ve **B** vektörlerinin boyları ve açıları verilmiştir. Bileşenleri hesaplayın ve bu iki vektörü birim vektörler cinsinden ifade edin. (sin 53° = 0,8; cos 53° = 0,6)

[[G-S2-02]]', '{"choices":["A = 3î + 4ĵ; B = −6,4î − 4,8ĵ","A = 4î + 3ĵ; B = −6,4î − 4,8ĵ","A = 3î + 4ĵ; B = −4,8î − 6,4ĵ","A = 3î + 4ĵ; B = 6,4î + 4,8ĵ","A = 3î − 4ĵ; B = −6,4î + 4,8ĵ"]}', '{"index":0}', 'Her vektör A = A_x î + A_y ĵ biçiminde yazılır. B üçüncü çeyrekte olduğu için iki bileşeni de negatiftir.

---

**A''nın bileşenleri:** A_x = 5 cos 53° = 5 × 0,6 = 3; A_y = 5 sin 53° = 5 × 0,8 = 4.

---

**B''nin bileşenleri:** B, −x ekseninden 37° aşağıda: B_x = −8 cos 37° = −8 × 0,8 = −6,4; B_y = −8 sin 37° = −8 × 0,6 = −4,8.

---

**Birim vektörlerle:** A = 3î + 4ĵ, B = −6,4î − 4,8ĵ.', 2, 'Sunu, Bölüm 2, Örnek 5 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s05b', 'u2', 2, 'mcq', 'original', 'Şekildeki **A** = 3î + 4ĵ ve **B** = −6,4î − 4,8ĵ vektörleri için **R** = 3**A** − 2**B** olan **R** vektörünü hesaplayın.

[[G-S2-02]]', '{"choices":["R = 21,8î + 21,6ĵ","R = −3,8î + 2,4ĵ","R = 9î + 12ĵ","R = 21,8î + 2,4ĵ","R = −3,8î + 21,6ĵ"]}', '{"index":0}', 'Skalerle çarpım her bileşeni çarpar; çıkarma, eksi işaretli vektörü eklemektir: 3A − 2B = 3A + (−2B).

---

**3A:** 3(3î + 4ĵ) = 9î + 12ĵ.

---

**−2B:** −2(−6,4î − 4,8ĵ) = 12,8î + 9,6ĵ. Eksi işareti iki bileşeni de pozitif yapar.

---

**Topla:** R = (9 + 12,8)î + (12 + 9,6)ĵ = 21,8î + 21,6ĵ.', 2, 'Sunu, Bölüm 2, Örnek 5 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s05c', 'u2', 2, 'mcq', 'original', '**R** = 21,8î + 21,6ĵ vektörünün şiddetini ve yönünü (+x ekseniyle açısını) tayin edin.', '{"choices":["R ≈ 31; θ ≈ 45°","R ≈ 43; θ ≈ 45°","R ≈ 31; θ ≈ 225°","R ≈ 22; θ ≈ 45°","R ≈ 31; θ ≈ 90°"]}', '{"index":0}', 'Bileşenler neredeyse eşit ve ikisi de pozitif: vektör birinci çeyrekte, açıortaya çok yakın.

---

**Şiddet:** R = √(21,8² + 21,6²) = √(475,2 + 466,6) = √941,8 ≈ 30,7 ≈ 31.

---

**Yön:** tan θ = 21,6 / 21,8 ≈ 0,99 ≈ 1 → θ ≈ 45°.

---

**Çeyrek:** İki bileşen de pozitif, birinci çeyrek; 225° değil 45°.', 2, 'Sunu, Bölüm 2, Örnek 5 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s06a', 'u2', 2, 'mcq', 'original', 'Şekilde gösterilmiş olan **A**, **B** ve **C** vektörlerinin birbirleriyle skaler çarpımlarını tayin edin. Buna göre **A** · **B** kaçtır? (cos 37° = 0,8)

[[G-S2-03]]', '{"choices":["−12","12","−9","15","0"]}', '{"index":0}', 'A · B = AB cos θ formülündeki θ, iki vektörün **arasındaki** açıdır. Şekilden bulunur; vektörler aynı noktadan çıkacak biçimde düşünülür.

---

**Aradaki açı:** A, −y yönünde (aşağı). B, +y ekseninden 37° sağda. +y ile −y arası 180° olduğundan A ile B arasındaki açı 180° − 37° = 143°.

---

**Kosinüs:** cos 143° = cos(180° − 37°) = −cos 37° = −0,8.

---

**Çarpım:** A · B = 3 × 5 × (−0,8) = −12. Açı 90°''den büyük olduğu için sonuç negatif.', 2, 'Sunu, Bölüm 2, Örnek 6 (A · B)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s06b', 'u2', 2, 'mcq', 'original', 'Şekilde gösterilmiş olan **A**, **B** ve **C** vektörlerinin birbirleriyle skaler çarpımlarını tayin edin. Buna göre **A** · **C** kaçtır? (cos 60° = 0,5)

[[G-S2-03]]', '{"choices":["6","−6","10,4","12","0"]}', '{"index":0}', 'Önce iki vektörün arasındaki açıyı şekilden bul, sonra AB cos θ''yı uygula.

---

**Aradaki açı:** A, −y yönünde. C, −x ekseninden 30° aşağıda; −y ekseninden ölçersek 90° − 30° = 60° uzakta.

---

**Çarpım:** A · C = AC cos 60° = 3 × 4 × 0,5 = 6.', 2, 'Sunu, Bölüm 2, Örnek 6 (A · C)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s06c', 'u2', 2, 'mcq', 'original', 'Şekilde gösterilmiş olan **A**, **B** ve **C** vektörlerinin birbirleriyle skaler çarpımlarını tayin edin. Buna göre **B** · **C** kaçtır? (cos 23° = 0,92)

[[G-S2-03]]', '{"choices":["−18","18","−20","−9","8"]}', '{"index":0}', 'Açıyı +x eksenine göre iki vektör için ayrı ayrı yazıp farkını almak en güvenli yoldur.

---

**Açıları +x''e göre yaz:** B, y ekseninden 37° sağda → +x ile 53°. C, −x''ten 30° aşağıda → +x ile 210°.

---

**Aradaki açı:** 210° − 53° = 157° (= 90° + 67°).

---

**Kosinüs:** cos 157° = −cos 23° = −0,92.

---

**Çarpım:** B · C = 5 × 4 × (−0,92) = 20 × (−0,92) ≈ −18.', 3, 'Sunu, Bölüm 2, Örnek 6 (B · C)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s07a', 'u2', 2, 'mcq', 'original', '**p** = 3î − 8ĵ ve **q** = 8î + 7ĵ vektörleri veriliyor. **p** · **q** skaler çarpımını bulun.

(Sunuda q''nun ikinci bileşeni k̂ ile yazılmış; çözüm onu ĵ olarak aldığı için soru ĵ ile verildi.)', '{"choices":["−32","80","24","−56","32"]}', '{"index":0}', 'Bileşenler biliniyorsa skaler çarpım: p · q = p_x q_x + p_y q_y + p_z q_z. Sonuç bir sayıdır, vektör değil.

---

**Bileşenleri eşle:** p_x = 3, p_y = −8; q_x = 8, q_y = 7.

---

**Çarp ve topla:** p · q = 3 × 8 + (−8) × 7 = 24 − 56 = −32.', 1, 'Sunu, Bölüm 2, Örnek 7 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s07b', 'u2', 2, 'mcq', 'original', '**p** = 3î − 8ĵ ve **q** = 8î + 7ĵ vektörleri arasındaki açıyı tayin edin. (p · q = −32)', '{"choices":["θ ≈ 110°","θ ≈ 70°","θ ≈ 20°","θ ≈ 160°","θ = 90°"]}', '{"index":0}', 'p · q = pq cos θ''dan cos θ = p · q / (pq). Skaler çarpım negatifse açı 90°''den büyüktür.

---

**Şiddetler:** p = √(3² + (−8)²) = √73 ≈ 8,5; q = √(8² + 7²) = √113 ≈ 10,6 ≈ 11.

---

**Kosinüs:** cos θ = −32 / (8,5 × 11) ≈ −0,34.

---

**Açı:** θ = cos⁻¹(−0,34) ≈ 110°. Skaler çarpım eksi olduğundan geniş açı çıkması beklenir.', 2, 'Sunu, Bölüm 2, Örnek 7 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s08', 'u2', 2, 'mcq', 'original', '**A** = A_x î + 12ĵ ve **B** = 4î + 5ĵ veriliyor. Bu iki vektörün birbirine dik olması için bilinmeyen A_x bileşeni ne olmalıdır?', '{"choices":["−15","15","−48/5","3","0"]}', '{"index":0}', 'Diklik şartı: aradaki açı 90° ise cos 90° = 0 olduğundan A · B = 0.

---

**Diklik şartını yaz:** A · B = A_x B_x + A_y B_y = 0.

---

**Değerleri koy:** A_x × 4 + 12 × 5 = 0 → 4A_x + 60 = 0.

---

**Çöz:** A_x = −60 / 4 = −15.', 1, 'Sunu, Bölüm 2, Örnek 8', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s09a', 'u2', 2, 'mcq', 'original', '**A** = 3î + 2ĵ + k̂ ve **B** = −î + 4ĵ − 3k̂ veriliyor. Her vektörün büyüklüğünü bulun.', '{"choices":["A = √14; B = √26","A = 6; B = 0","A = √14; B = √8","A = 14; B = 26","A = √6; B = √26"]}', '{"index":0}', 'Üç boyutta büyüklük: A = √(A_x² + A_y² + A_z²). Eksi bileşenin karesi pozitiftir.

---

**A:** A = √(3² + 2² + 1²) = √(9 + 4 + 1) = √14 ≈ 3,74.

---

**B:** B = √((−1)² + 4² + (−3)²) = √(1 + 16 + 9) = √26 ≈ 5,1.', 1, 'Sunu, Bölüm 2, Örnek 9 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s09b', 'u2', 2, 'mcq', 'original', '**A** = 3î + 2ĵ + k̂ ve **B** = −î + 4ĵ − 3k̂ veriliyor. **A** + **B** = ?', '{"choices":["2î + 6ĵ − 2k̂","4î − 2ĵ + 4k̂","2î + 6ĵ + 4k̂","−3î + 8ĵ − 3k̂","3î + 6ĵ − 2k̂"]}', '{"index":0}', 'Toplamda aynı birim vektörün katsayıları toplanır: (A_x + B_x)î + (A_y + B_y)ĵ + (A_z + B_z)k̂.

---

**î:** 3 + (−1) = 2.

---

**ĵ:** 2 + 4 = 6.

---

**k̂:** 1 + (−3) = −2.

---

**Sonuç:** A + B = 2î + 6ĵ − 2k̂.', 1, 'Sunu, Bölüm 2, Örnek 9 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s09c', 'u2', 2, 'mcq', 'original', '**A** = 3î + 2ĵ + k̂ ve **B** = −î + 4ĵ − 3k̂ veriliyor. **A** · **B** = ?', '{"choices":["2","−3î + 8ĵ − 3k̂","14","−2","8"]}', '{"index":0}', 'Skaler çarpımın sonucu bir **sayıdır**: A · B = A_x B_x + A_y B_y + A_z B_z.

---

**Terimler:** A_x B_x = 3 × (−1) = −3; A_y B_y = 2 × 4 = 8; A_z B_z = 1 × (−3) = −3.

---

**Topla:** A · B = −3 + 8 − 3 = 2.', 1, 'Sunu, Bölüm 2, Örnek 9 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s09d', 'u2', 2, 'mcq', 'original', '**A** = 3î + 2ĵ + k̂ ve **B** = −î + 4ĵ − 3k̂ vektörleri arasındaki açıyı bulun. (A · B = 2, A = √14, B = √26)', '{"choices":["θ ≈ 84°","θ ≈ 6°","θ ≈ 96°","θ = 90°","θ ≈ 45°"]}', '{"index":0}', 'cos θ = A · B / (AB). Skaler çarpım küçük ve pozitif: açı 90°''ye yakın ama biraz küçük.

---

**Paydayı hesapla:** AB = √14 × √26 ≈ 3,74 × 5,1 ≈ 19,1.

---

**Kosinüs:** cos θ = 2 / 19,1 ≈ 0,104.

---

**Açı:** θ = cos⁻¹(0,104) ≈ 84°.', 2, 'Sunu, Bölüm 2, Örnek 9 (d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s10a', 'u2', 2, 'mcq', 'original', 'Şekilde xy-düzleminde yer alan **a**, **b** vektörlerinin boyları sırasıyla a = 15 ve b = 12 birimdir. **c** = **a** × **b** çarpımı olan **c** vektörünün şiddeti nedir? (sin 37° = 0,6)

[[G-S2-04]]', '{"choices":["108 birim","144 birim","180 birim","54 birim","0"]}', '{"index":0}', 'Vektörel çarpımın büyüklüğü |a × b| = ab sin θ; θ iki vektör arasındaki açıdır.

---

**Aradaki açı:** x ile y ekseni arası 90°. a, y ekseninden 23° içeride; b, x ekseninden 30° içeride. Aradaki açı 90° − (23° + 30°) = 37°.

---

**Büyüklük:** c = ab sin 37° = 15 × 12 × 0,6 = 108 birim.

---

Not: Sunuda sonuç "108 m/s" yazıyor; verilen boylar birimsiz olduğu için sonuç da birimdir.', 2, 'Sunu, Bölüm 2, Örnek 10 (şiddet)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s10b', 'u2', 2, 'mcq', 'original', 'Şekilde xy-düzleminde yer alan **a** (y ekseninden 23° x''e doğru) ve **b** (x ekseninden 30° y''ye doğru) vektörleri veriliyor. **c** = **a** × **b** vektörünün yönü nedir?

[[G-S2-04]]', '{"choices":["−z yönünde","+z yönünde","xy-düzleminde, a ile b''nin açıortayında","+x yönünde","Yönü yoktur, c bir skalerdir"]}', '{"index":0}', 'a × b, a ve b''nin oluşturduğu düzleme diktir; iki dik yönden hangisi olduğunu sağ el kuralı söyler.

---

**Doğrultu:** a ve b xy-düzleminde, o halde c bu düzleme dik: z doğrultusunda.

---

**Sağ el kuralı:** Sağ elin parmakları önce a''yı göstersin, sonra küçük açıdan b''ye doğru kıvrılsın. a, y eksenine yakın; b, x eksenine yakın: dönüş y''den x''e doğru, yani î × ĵ = k̂ dönüşünün tersi.

---

**Sonuç:** Başparmak −z yönünü gösterir. (Kontrol: ĵ × î = −k̂.)', 2, 'Sunu, Bölüm 2, Örnek 10 (yön)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-s11', 'u2', 2, 'mcq', 'original', '**D** = 3î − 5ĵ ve **E** = 7î − 3k̂ vektörleri veriliyor. **F** = **D** × **E** vektörel çarpımı olan **F** vektörünün bileşenlerini hesaplayın.', '{"choices":["F = 15î + 9ĵ + 35k̂","F = 15î + 9ĵ − 35k̂","F = −15î − 9ĵ + 35k̂","F = 21î + 15ĵ","F = 15î − 9ĵ + 35k̂"]}', '{"index":0}', 'Bileşen formülleri döner permütasyonla hatırlanır: F_x = D_y E_z − D_z E_y, F_y = D_z E_x − D_x E_z, F_z = D_x E_y − D_y E_x. Sonucu, F''nin D''ye dik olup olmadığına bakarak kontrol et.

---

**Bileşenleri yaz:** D_x = 3, D_y = −5, D_z = 0; E_x = 7, E_y = 0, E_z = −3.

---

**F_x:** D_y E_z − D_z E_y = (−5)(−3) − 0 × 0 = 15.

---

**F_y:** D_z E_x − D_x E_z = 0 × 7 − 3 × (−3) = 9.

---

**F_z:** D_x E_y − D_y E_x = 3 × 0 − (−5)(7) = +35.

---

**Kontrol:** F, D''ye dik olmalı: D · F = 3 × 15 + (−5) × 9 + 0 = 45 − 45 = 0 ✓. Sununun son satırında −35k̂ yazıyor; bu bir yazım hatası, doğrusu +35k̂.', 3, 'Sunu, Bölüm 2, Örnek 11', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t01', 'u2', 2, 'mcq', 'derived', 'Aşağıdakilerden hangisi skaler bir büyüklüktür?', '{"choices":["Kütle","Hız","Kuvvet","Yerdeğiştirme","Moment"]}', '{"index":0}', 'Skaler büyüklük yalnız bir sayı ve birimle tam belirtilir; vektörel büyüklüğün ayrıca yönü vardır.

---

Her seçenek için "hangi yönde?" diye sor. Hız, kuvvet, yerdeğiştirme ve moment için bu sorunun cevabı gerekir; bunlar vektördür.

---

"5 kg" dediğimizde başka bilgiye gerek yoktur. Kütle skalerdir (sunudaki öbür örnekler: hacim, uzunluk, enerji, periyot, sıcaklık).', 1, '2. bölüm, Skaler ve vektörel büyüklükler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t02', 'u2', 2, 'tf', 'derived', '"Bir geminin hızı 10 km/sa''tir" ifadesi, geminin hız vektörünü tam olarak belirtir.', '{}', '{"value":false}', 'Hız vektörel bir büyüklüktür: büyüklüğü (10 km/sa) yanında yönü de söylenmelidir, örneğin "kuzeydoğu yönünde 10 km/sa".', 1, '2. bölüm, Skaler ve vektörel büyüklükler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t03', 'u2', 2, 'mcq', 'derived', 'Kartezyen koordinatları (x, y) = (−4, 3) m olan noktanın kutupsal koordinatları nedir? (tan 37° = 0,75)', '{"choices":["r = 5 m; θ = 143°","r = 5 m; θ = −37°","r = 7 m; θ = 143°","r = 5 m; θ = 37°","r = 5 m; θ = 217°"]}', '{"index":0}', 'Sunudaki Örnek 1''in aynısı, bu kez nokta ikinci çeyrekte. tan θ''nın verdiği açıyı çeyreğe göre düzeltmeyi unutma.

---

**Uzaklık:** r = √((−4)² + 3²) = √25 = 5 m.

---

**Tanjant:** tan θ = 3 / (−4) = −0,75. Hesap makinesi −37° verir.

---

**Çeyrek:** x negatif, y pozitif: nokta **ikinci çeyrekte**. Tanjantı −0,75 olan ikinci çeyrek açısı 180° − 37° = 143°.

---

**Sonuç:** (5 m; 143°).', 2, '2. bölüm, Kartezyen ve kutupsal koordinatlar', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t04', 'u2', 2, 'mcq', 'derived', 'Kutupsal koordinatları (r, θ) = (10 m; 240°) olan noktanın Kartezyen koordinatları nedir? (cos 60° = 0,5; sin 60° = 0,87)', '{"choices":["(−5; −8,7) m","(5; 8,7) m","(−8,7; −5) m","(−5; 8,7) m","(5; −8,7) m"]}', '{"index":0}', 'x = r cos θ ve y = r sin θ. 240° üçüncü çeyrekte olduğundan iki koordinat da negatif çıkar.

---

**Açıyı parçala:** 240° = 180° + 60°. cos 240° = −cos 60° = −0,5; sin 240° = −sin 60° = −0,87.

---

**x:** x = 10 × (−0,5) = −5 m.

---

**y:** y = 10 × (−0,87) = −8,7 m.', 2, '2. bölüm, Kartezyen ve kutupsal koordinatlar', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t05', 'u2', 2, 'tf', 'derived', 'İki vektör birbirine bölünebilir; sonuç yine bir vektördür.', '{}', '{"value":false}', 'Vektörlerin yön özelliği bölme işlemine yansıtılamaz; bu yüzden vektörel bölme **tanımsızdır**. Toplama, çıkarma, skalerle çarpma, skaler ve vektörel çarpım tanımlıdır.', 1, '2. bölüm, Vektörlerin eşitliği, negatifi, skalerle çarpımı, toplama ve çıkarma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t06', 'u2', 2, 'mcq', 'derived', 'Büyüklüğü 4 birim olan **A** vektörü −2 sayısıyla çarpılıyor. **B** = −2**A** vektörü için ne söylenebilir?', '{"choices":["Büyüklüğü 8, yönü A''ya zıt","Büyüklüğü 8, yönü A ile aynı","Büyüklüğü −8, yönü A ile aynı","Büyüklüğü 2, yönü A''ya zıt","Büyüklüğü 8, A''ya dik"]}', '{"index":0}', 'Vektörü bir k sayısıyla çarpınca büyüklük |k| katına çıkar; k negatifse yön ters döner. Büyüklük hiçbir zaman negatif olmaz.

---

**Büyüklük:** |B| = |−2| × 4 = 8.

---

**Yön:** Çarpan negatif olduğu için B, A''ya zıt yönlüdür.', 1, '2. bölüm, Vektörlerin eşitliği, negatifi, skalerle çarpımı, toplama ve çıkarma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t07', 'u2', 2, 'mcq', 'derived', '**A** + (−**A**) işleminin sonucu nedir?', '{"choices":["Sıfır vektörü","2A","A ile aynı yönde, büyüklüğü 2A olan vektör","A''ya dik bir vektör","Tanımsızdır"]}', '{"index":0}', 'Bir vektörün negatifi aynı büyüklükte ve zıt yönlü vektördür; toplamları sıfır vektörünü verir: −A + A = 0.', 2, '2. bölüm, Vektörlerin eşitliği, negatifi, skalerle çarpımı, toplama ve çıkarma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t08', 'u2', 2, 'mcq', 'derived', '**A** = 4î + 3ĵ ve **B** = 6î + 8ĵ ise **R** = 2**A** − **B** vektörünün büyüklüğü ve +x ekseniyle açısı nedir?', '{"choices":["|R| ≈ 2,8; θ = 315°","|R| ≈ 2,8; θ = 45°","|R| = 4; θ = 315°","|R| ≈ 2,8; θ = 135°","|R| ≈ 15,6; θ = 50°"]}', '{"index":0}', 'Sunudaki Örnek 5(b) ve (c) kalıbı: önce skalerle çarp, sonra bileşen bileşen çıkar, en son büyüklük ve yön.

---

**2A:** 2(4î + 3ĵ) = 8î + 6ĵ.

---

**Çıkar:** R = (8 − 6)î + (6 − 8)ĵ = 2î − 2ĵ.

---

**Büyüklük:** |R| = √(2² + (−2)²) = √8 ≈ 2,8.

---

**Yön:** tan θ = −2 / 2 = −1 → −45°. R_x > 0, R_y < 0: dördüncü çeyrek, θ = 360° − 45° = 315°.', 2, '2. bölüm, Vektörlerin eşitliği, negatifi, skalerle çarpımı, toplama ve çıkarma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t09', 'u2', 2, 'mcq', 'derived', '**A** = 3î + 4ĵ ve **B** = −î + 2ĵ vektörlerinin toplamının büyüklüğü ve +x ekseniyle açısı nedir? (tan 71,6° = 3)', '{"choices":["|R| ≈ 6,3; θ ≈ 71,6°","|R| ≈ 6,3; θ ≈ 18,4°","|R| = 8; θ ≈ 71,6°","|R| ≈ 6,3; θ ≈ 251,6°","|R| ≈ 4,5; θ ≈ 63,4°"]}', '{"index":0}', 'Sunudaki Örnek 2''nin kalıbı: bileşenleri topla, büyüklüğü Pisagor''la, yönü tanjantla bul, çeyreği kontrol et.

---

**Topla:** R = (3 − 1)î + (4 + 2)ĵ = 2î + 6ĵ.

---

**Büyüklük:** |R| = √(4 + 36) = √40 ≈ 6,3.

---

**Yön:** tan θ = 6 / 2 = 3 → θ ≈ 71,6°. İki bileşen de pozitif, birinci çeyrek; 251,6° değil.', 2, '2. bölüm, Bileşenler ve birim vektörler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t10', 'u2', 2, 'mcq', 'derived', '**F** vektörünün bileşenleri F_x = −6, F_y = 8''dir. Şiddeti ve +x ekseniyle açısı nedir?', '{"choices":["F = 10; θ = 127°","F = 10; θ = −53°","F = 14; θ = 127°","F = 10; θ = 53°","F = 2; θ = 127°"]}', '{"index":0}', 'Sunudaki Örnek 4 ile aynı kalıp; bu kez vektör ikinci çeyrekte.

---

**Şiddet:** F = √(36 + 64) = √100 = 10.

---

**Tanjant:** tan θ = 8 / (−6) ≈ −1,33. Tanjantı −1,33 olan açılar: −53° ve 127°.

---

**Çeyrek:** F_x < 0, F_y > 0: ikinci çeyrek. θ = 127°.', 2, '2. bölüm, Bileşenler ve birim vektörler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t11', 'u2', 2, 'mcq', 'derived', 'Büyüklüğü 20 N olan bir kuvvet +x ekseniyle 150° açı yapmaktadır. Kuvvetin bileşenleri nedir? (cos 30° = 0,87; sin 30° = 0,5)', '{"choices":["F_x ≈ −17,4 N; F_y = 10 N","F_x ≈ 17,4 N; F_y = 10 N","F_x = −10 N; F_y ≈ 17,4 N","F_x ≈ −17,4 N; F_y = −10 N","F_x = 10 N; F_y ≈ −17,4 N"]}', '{"index":0}', '150° ikinci çeyrekte: x bileşeni negatif, y bileşeni pozitif. 150° = 180° − 30° yazmak hesabı kolaylaştırır.

---

**x:** F_x = 20 cos 150° = 20 × (−cos 30°) = 20 × (−0,87) ≈ −17,4 N.

---

**y:** F_y = 20 sin 150° = 20 × sin 30° = 20 × 0,5 = 10 N.', 2, '2. bölüm, Bileşenler ve birim vektörler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t12', 'u2', 2, 'mcq', 'derived', 'Şekildeki **P**, **Q** ve **S** vektörlerinin toplamı **R** = **P** + **Q** + **S** nedir? (sin 37° = 0,6; cos 37° = 0,8)

[[G-S2-05]]', '{"choices":["R = 3î (büyüklüğü 3, +x yönünde)","R = 3î + 6ĵ","R = 13î","R = −3î","R = 3î − 12ĵ"]}', '{"index":0}', 'Üç ya da daha çok vektör toplanırken paralelkenar kuralı kullanışsızdır; bileşenlere ayırıp her eksende ayrı toplamak en sağlam yoldur.

---

**P:** P_x = 10 cos 37° = 8; P_y = 10 sin 37° = 6.

---

**Q:** −x yönünde: Q_x = −5; Q_y = 0.

---

**S:** −y yönünde: S_x = 0; S_y = −6.

---

**x''te topla:** R_x = 8 − 5 + 0 = 3.

---

**y''de topla:** R_y = 6 + 0 − 6 = 0.

---

**Sonuç:** R = 3î, büyüklüğü 3 ve +x yönünde.', 2, '2. bölüm, Bileşenler ve birim vektörler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t13', 'u2', 2, 'fill', 'derived', 'Büyüklüğü 1 olan, yönü belli bir doğrultu boyunca seçilen ve boyutsuz olan vektöre ____ vektör denir (î, ĵ, k̂ gibi).', '{"blanks":1}', '{"blanks":[["birim"]]}', '**Birim vektör**: |î| = |ĵ| = |k̂| = 1. Yalnızca yön belirtir, başka fiziksel anlamı yoktur. Her vektör kendi yönündeki birim vektörle A = A Â biçiminde yazılabilir.', 1, '2. bölüm, Bileşenler ve birim vektörler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t14', 'u2', 2, 'tf', 'derived', 'Bir vektör x ekseni üzerinde duruyorsa y bileşeni sıfırdır.', '{}', '{"value":true}', 'Eksen üzerindeki vektörün öbür eksene izdüşümü yoktur. Sunudaki Örnek 3''te −y yönündeki **D** vektörü için D_x = 0 bulunur.', 1, '2. bölüm, Bileşenler ve birim vektörler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t15', 'u2', 2, 'mcq', 'derived', 'Büyüklükleri A = 6 ve B = 4 olan iki vektör arasındaki açı 120°''dir. **A** · **B** kaçtır? (cos 120° = −0,5)', '{"choices":["−12","12","24","−20,8","0"]}', '{"index":0}', 'A · B = AB cos θ. Açı 90°''den büyük olduğunda kosinüs negatif, skaler çarpım da negatiftir.

---

**Formül:** A · B = AB cos 120°.

---

**Değerler:** 6 × 4 × (−0,5) = −12.', 1, '2. bölüm, Skaler (nokta) çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t16', 'u2', 2, 'mcq', 'derived', '**A** = 4î − 2ĵ + k̂ ve **B** = 2î + 3ĵ − 2k̂ vektörleri arasındaki açı kaç derecedir?', '{"choices":["90°","0°","45°","180°","60°"]}', '{"index":0}', 'Önce skaler çarpımı hesapla. Sonuç sıfırsa cos θ = 0 olur: vektörler diktir (diklik şartı).

---

**Skaler çarpım:** A · B = 4 × 2 + (−2) × 3 + 1 × (−2) = 8 − 6 − 2 = 0.

---

**Yorum:** A · B = AB cos θ = 0 ve A, B sıfır değil; o halde cos θ = 0 → θ = 90°.', 2, '2. bölüm, Skaler (nokta) çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t17', 'u2', 2, 'mcq', 'derived', '**A** = 2î + bĵ ve **B** = 3î − 6ĵ vektörlerinin birbirine dik olması için b kaç olmalıdır?', '{"choices":["1","−1","4","−4","0"]}', '{"index":0}', 'Sunudaki Örnek 8 kalıbı: diklik şartı A · B = 0.

---

**Şart:** A · B = 2 × 3 + b × (−6) = 0.

---

**Çöz:** 6 − 6b = 0 → b = 1.', 1, '2. bölüm, Skaler (nokta) çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t18', 'u2', 2, 'mcq', 'derived', '**A** = 3î + 4ĵ ve **B** = 4î + 3ĵ vektörleri arasındaki açının kosinüsü kaçtır?', '{"choices":["0,96","0,28","1","0","0,48"]}', '{"index":0}', 'cos θ = A · B / (AB). İki vektör birbirine çok yakın yönlü olduğu için kosinüs 1''e yakın çıkar (θ ≈ 16°).

---

**Skaler çarpım:** A · B = 3 × 4 + 4 × 3 = 24.

---

**Büyüklükler:** A = √(9 + 16) = 5; B = 5.

---

**Kosinüs:** cos θ = 24 / 25 = 0,96.', 2, '2. bölüm, Skaler (nokta) çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t19', 'u2', 2, 'mcq', 'derived', 'Şekildeki **A** ve **B** vektörleri için **A** · **B** kaçtır? (cos 53° = 0,6)

[[G-S2-06]]', '{"choices":["12","−12","16","20","0"]}', '{"index":0}', 'Sunudaki Örnek 6 kalıbı: önce iki vektörün arasındaki açıyı şekilden bul.

---

**Açılar:** A, +y yönünde (90°). B, −x''ten 37° yukarıda: +x''e göre 180° − 37° = 143°.

---

**Aradaki açı:** 143° − 90° = 53°.

---

**Çarpım:** A · B = 4 × 5 × cos 53° = 20 × 0,6 = 12.', 2, '2. bölüm, Skaler (nokta) çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t20', 'u2', 2, 'tf', 'derived', 'İki vektörün skaler çarpımı negatifse aralarındaki açı 90° ile 180° arasındadır.', '{}', '{"value":true}', 'A · B = AB cos θ; büyüklükler pozitif olduğundan işaret cos θ''dan gelir. cos θ < 0 ise θ geniş açıdır (sunudaki Örnek 7''de −32 için θ ≈ 110°).', 2, '2. bölüm, Skaler (nokta) çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t21', 'u2', 2, 'mcq', 'derived', '**A** = 2î + 3ĵ ve **B** = −î + 4ĵ ise **A** × **B** nedir?', '{"choices":["11k̂","5k̂","−11k̂","−2î + 12ĵ","10"]}', '{"index":0}', 'İki vektör de xy-düzleminde olduğundan çarpım yalnız z bileşenine sahiptir: C_z = A_x B_y − A_y B_x.

---

**x ve y bileşenleri:** A_z = B_z = 0 olduğu için C_x = A_y B_z − A_z B_y = 0 ve C_y = 0.

---

**z bileşeni:** C_z = A_x B_y − A_y B_x = 2 × 4 − 3 × (−1) = 8 + 3 = 11.

---

**Sonuç:** A × B = 11k̂.', 2, '2. bölüm, Vektörel çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t22', 'u2', 2, 'mcq', 'derived', '**A** = î + 2ĵ − k̂ ve **B** = 3î − ĵ + 2k̂ ise **C** = **A** × **B** nedir?', '{"choices":["3î − 5ĵ − 7k̂","3î + 5ĵ − 7k̂","−3î + 5ĵ + 7k̂","5î − 5ĵ − 7k̂","3î − 2ĵ − 2k̂"]}', '{"index":0}', 'Sunudaki Örnek 11 kalıbı. Sonucu, C''nin hem A''ya hem B''ye dik olduğunu doğrulayarak kontrol et.

---

**C_x:** A_y B_z − A_z B_y = 2 × 2 − (−1)(−1) = 4 − 1 = 3.

---

**C_y:** A_z B_x − A_x B_z = (−1)(3) − 1 × 2 = −3 − 2 = −5.

---

**C_z:** A_x B_y − A_y B_x = 1 × (−1) − 2 × 3 = −1 − 6 = −7.

---

**Kontrol:** A · C = 3 − 10 + 7 = 0 ✓; B · C = 9 + 5 − 14 = 0 ✓. C = 3î − 5ĵ − 7k̂.', 3, '2. bölüm, Vektörel çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t23', 'u2', 2, 'mcq', 'derived', 'Büyüklükleri 8 ve 5 olan iki vektör arasındaki açı 30°''dir. Vektörel çarpımlarının büyüklüğü kaçtır? (sin 30° = 0,5)', '{"choices":["20","34,6","40","13","0"]}', '{"index":0}', '|A × B| = AB sin θ. (Skaler çarpım cos, vektörel çarpım sin kullanır; karıştırma.)

---

**Formül:** |A × B| = 8 × 5 × sin 30°.

---

**Hesap:** 40 × 0,5 = 20.', 1, '2. bölüm, Vektörel çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t24', 'u2', 2, 'mcq', 'derived', 'xy-düzleminde **a** vektörü +x yönünde ve a = 10''dur. **b** vektörü ise +x ile +y arasında, x ekseniyle 30° açı yapar ve b = 6''dır. **c** = **a** × **b** nedir?', '{"choices":["30, +z yönünde","30, −z yönünde","52, +z yönünde","60, +z yönünde","30, +y yönünde"]}', '{"index":0}', 'Sunudaki Örnek 10 kalıbı: büyüklük ab sin θ, yön sağ el kuralıyla.

---

**Büyüklük:** c = 10 × 6 × sin 30° = 60 × 0,5 = 30.

---

**Yön:** Dönüş a''dan (x''ten) b''ye (y''ye doğru): î × ĵ = k̂ dönüşüyle aynı. Başparmak +z''yi gösterir.', 2, '2. bölüm, Vektörel çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t25', 'u2', 2, 'tf', 'derived', 'Vektörel çarpımda sıra önemlidir: **B** × **A** = −(**A** × **B**).', '{}', '{"value":true}', 'Sıra değişince sağ el kuralında dönüş yönü tersine döner; büyüklük aynı kalır, yön ters olur. Skaler çarpımda ise A · B = B · A''dır.', 1, '2. bölüm, Vektörel çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u2-t26', 'u2', 2, 'mcq', 'derived', 'î × ĵ işleminin sonucu nedir?', '{"choices":["k̂","−k̂","0","1","î + ĵ"]}', '{"index":0}', 'Döner permütasyon: î × ĵ = k̂, ĵ × k̂ = î, k̂ × î = ĵ. Ters sırada eksi gelir; bir birim vektörün kendisiyle çarpımı sıfırdır (î × î = 0).', 1, '2. bölüm, Vektörel çarpım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s01', 'u3', 3, 'mcq', 'original', 'x ekseni boyunca hareket eden bir parçacığın konumu t_i = 1 s de x_i = 12 m ve t_s = 3 s de x_s = 4 m dir. Bu zaman aralığında parçacığın yerdeğiştirmesini ve ortalama hızını bulun.', '{"choices":["Δx = −8 m; v̄ = −4 m/s","Δx = 8 m; v̄ = 4 m/s","Δx = −8 m; v̄ = −2,7 m/s","Δx = 16 m; v̄ = 8 m/s","Δx = −8 m; v̄ = −8 m/s"]}', '{"index":0}', 'Yerdeğiştirme son konum eksi ilk konumdur (Δx = x_s − x_i); izlenen yola bakmaz, işareti yönü gösterir. Ortalama hız yerdeğiştirmenin geçen süreye oranıdır.

---

**Yerdeğiştirme:** Δx = x_s − x_i = 4 − 12 = −8 m. Eksi işaret parçacığın −x yönünde gittiğini söyler.

---

**Süre:** Δt = t_s − t_i = 3 − 1 = 2 s. (Süre 3 s değil; saat 1. saniyede başlıyor.)

---

**Ortalama hız:** v̄ = Δx / Δt = −8 / 2 = −4 m/s.', 1, 'Sunu, Bölüm 3, Örnek 1', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s02a', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = 2t³ − 5t + 20 m şeklinde değişiyor. Hareketlinin t = 2 s anındaki konumunu bulun.', '{"choices":["26 m","36 m","16 m","20 m","46 m"]}', '{"index":0}', 'Konum fonksiyonu verildiğinde bir andaki konum, t yerine o anın değerini koyarak bulunur.

---

**t = 2 yaz:** x(2) = 2 · 2³ − 5 · 2 + 20.

---

**Hesapla:** 2 · 8 = 16; 16 − 10 + 20 = 26 m.', 1, 'Sunu, Bölüm 3, Örnek 2 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s02b', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = 2t³ − 5t + 20 m şeklinde değişiyor. t = 3 s ve t = 5 s arası yerdeğiştirmesini ve ortalama hızını bulun.', '{"choices":["Δx = 186 m; v̄ = 93 m/s","Δx = 245 m; v̄ = 122,5 m/s","Δx = 186 m; v̄ = 37,2 m/s","Δx = 304 m; v̄ = 152 m/s","Δx = 59 m; v̄ = 29,5 m/s"]}', '{"index":0}', 'Önce iki andaki konumu bul, farkını al. Ortalama hız bu farkın süreye bölümüdür; t = 5''e bölmek yaygın bir hatadır, süre 5 − 3 = 2 s.

---

**t = 3 s''deki konum:** x(3) = 2 · 27 − 15 + 20 = 59 m.

---

**t = 5 s''deki konum:** x(5) = 2 · 125 − 25 + 20 = 245 m.

---

**Yerdeğiştirme:** Δx = x(5) − x(3) = 245 − 59 = 186 m.

---

**Ortalama hız:** v̄ = Δx / Δt = 186 / (5 − 3) = 93 m/s.', 2, 'Sunu, Bölüm 3, Örnek 2 (b ve c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s02c', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = 2t³ − 5t + 20 m şeklinde değişiyor. Hızın zamana göre fonksiyonunu ve t = 4 s anındaki anlık hızı bulun.', '{"choices":["v(t) = 6t² − 5; v(4) = 91 m/s","v(t) = 6t² − 5t; v(4) = 76 m/s","v(t) = 2t² − 5; v(4) = 27 m/s","v(t) = 6t² + 20; v(4) = 116 m/s","v(t) = 6t − 5; v(4) = 19 m/s"]}', '{"index":0}', 'Anlık hız konumun zamana göre türevidir: v = dx/dt. tⁿ''nin türevi n·tⁿ⁻¹, sabitin türevi sıfırdır.

---

**Terim terim türev al:** d(2t³)/dt = 6t², d(−5t)/dt = −5, d(20)/dt = 0.

---

**Hız fonksiyonu:** v(t) = 6t² − 5 m/s. Sabit 20 m (başlangıç konumu) hıza katkı vermez.

---

**t = 4 s:** v(4) = 6 · 16 − 5 = 96 − 5 = 91 m/s.', 2, 'Sunu, Bölüm 3, Örnek 2 (d ve e)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s02d', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = 2t³ − 5t + 20 m şeklinde değişiyor. İvmenin zamana göre fonksiyonunu bulun.', '{"choices":["a(t) = 12t m/s²","a(t) = 6t² m/s²","a(t) = 12 m/s²","a(t) = 12t − 5 m/s²","a(t) = 6t m/s²"]}', '{"index":0}', 'İvme hızın zamana göre türevidir: a = dv/dt (konumun ikinci türevi).

---

**Hız:** v(t) = 6t² − 5 (önceki parçadan).

---

**Türev:** d(6t²)/dt = 12t, d(−5)/dt = 0. Buradan a(t) = 12t m/s².

---

**Yorum:** İvme zamanla artıyor; bu hareket sabit ivmeli değildir, o yüzden sabit ivme formülleri burada kullanılamaz.', 1, 'Sunu, Bölüm 3, Örnek 2 (f)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s03a', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = t³ − 5t² + 4 m şeklinde değişiyor. Hız ve ivmenin zamana göre fonksiyonlarını bulun.', '{"choices":["v = 3t² − 10t; a = 6t − 10","v = 3t² − 5t; a = 6t − 5","v = t² − 10t; a = 2t − 10","v = 3t² − 10t + 4; a = 6t − 10","v = 3t² − 10; a = 6t"]}', '{"index":0}', 'v = dx/dt ve a = dv/dt. Türev alırken her terimi ayrı ayrı türevle; sabit terim (4) düşer.

---

**Hız:** d(t³)/dt = 3t², d(−5t²)/dt = −10t, d(4)/dt = 0. Buradan v(t) = 3t² − 10t m/s.

---

**İvme:** d(3t²)/dt = 6t, d(−10t)/dt = −10. Buradan a(t) = 6t − 10 m/s².', 1, 'Sunu, Bölüm 3, Örnek 3 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s03b', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = t³ − 5t² + 4 m şeklinde değişiyor. Cismin t = 1 s ve t = 5 s anındaki hızlarını bulun.', '{"choices":["v(1) = −7 m/s; v(5) = 25 m/s","v(1) = 7 m/s; v(5) = 25 m/s","v(1) = −7 m/s; v(5) = 75 m/s","v(1) = −4 m/s; v(5) = 20 m/s","v(1) = 0; v(5) = 4 m/s"]}', '{"index":0}', 'Hız fonksiyonu v(t) = 3t² − 10t''ye t değerlerini koy. Eksi hız, cismin o anda −x yönünde gittiğini gösterir.

---

**t = 1 s:** v(1) = 3 · 1 − 10 · 1 = −7 m/s (cisim −x yönünde gidiyor).

---

**t = 5 s:** v(5) = 3 · 25 − 10 · 5 = 75 − 50 = 25 m/s (+x yönünde).', 2, 'Sunu, Bölüm 3, Örnek 3 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s03c', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = t³ − 5t² + 4 m şeklinde değişiyor. Cismin t = 1 s ile t = 5 s zaman aralığındaki ortalama ivmesini hesaplayın.', '{"choices":["8 m/s²","4,5 m/s²","6 m/s²","32 m/s²","−8 m/s²"]}', '{"index":0}', 'Ortalama ivme hız değişiminin süreye oranıdır: ā = Δv / Δt. Ani ivmelerin ortalaması alınmaz, uçlardaki hızlar kullanılır.

---

**Hız değişimi:** Δv = v(5) − v(1) = 25 − (−7) = 32 m/s. Eksinin eksisi artı olur; burası en sık hata yapılan yer.

---

**Süre:** Δt = 5 − 1 = 4 s.

---

**Ortalama ivme:** ā = 32 / 4 = 8 m/s².', 2, 'Sunu, Bölüm 3, Örnek 3 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s03d', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = t³ − 5t² + 4 m şeklinde değişiyor. Cismin t = 1 s ve t = 5 s anındaki ivmelerini bulun.', '{"choices":["a(1) = −4 m/s²; a(5) = 20 m/s²","a(1) = 4 m/s²; a(5) = 20 m/s²","a(1) = −4 m/s²; a(5) = 30 m/s²","a(1) = −10 m/s²; a(5) = 20 m/s²","a(1) = 8 m/s²; a(5) = 8 m/s²"]}', '{"index":0}', 'Ani ivme, ivme fonksiyonu a(t) = 6t − 10''un o andaki değeridir. Sonucu ortalama ivmeyle (8 m/s²) karşılaştırmak iki kavramın farkını gösterir.

---

**t = 1 s:** a(1) = 6 · 1 − 10 = −4 m/s².

---

**t = 5 s:** a(5) = 6 · 5 − 10 = 20 m/s².

---

**Karşılaştır:** Ortalama ivme 8 m/s² idi; ani ivme bu aralıkta −4''ten 20''ye değişiyor. İvme doğrusal değiştiği için ortalama, uçların ortası olan 8''e eşit çıktı.', 2, 'Sunu, Bölüm 3, Örnek 3 (d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s03e', 'u3', 3, 'mcq', 'original', 'Bir cismin konumu zamanla x(t) = t³ − 5t² + 4 m şeklinde değişiyor. İvmenin sıfır olduğu anı bulun.', '{"choices":["t ≈ 1,7 s","t ≈ 3,3 s","t = 0","t = 10 s","t = 0,6 s"]}', '{"index":0}', 'İvme fonksiyonunu sıfıra eşitle ve t''yi çöz.

---

**Denklem:** a(t) = 6t − 10 = 0.

---

**Çöz:** t = 10 / 6 = 5/3 ≈ 1,7 s.

---

**Yorum:** Bu anda hız en küçük (en negatif) değerindedir: v(5/3) = 3 · 25/9 − 50/3 ≈ −8,3 m/s. Hızın türevi sıfır olduğu için hız-zaman eğrisinin dip noktasıdır.', 2, 'Sunu, Bölüm 3, Örnek 3 (e)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s04', 'u3', 3, 'mcq', 'original', 'Bir cisim yatay bir buz tabakası üzerinde itiliyor ve 5 s sonra 25 m uzakta duruyor. Cisme verilen ilk hızı ve ivmeyi hesaplayın.', '{"choices":["v₀ = 10 m/s; a = −2 m/s²","v₀ = 5 m/s; a = −1 m/s²","v₀ = 10 m/s; a = −4 m/s²","v₀ = 5 m/s; a = −2 m/s²","v₀ = 25 m/s; a = −5 m/s²"]}', '{"index":0}', 'Cisim düzgün yavaşlayıp durduğu için son hız sıfırdır. Sabit ivmede yerdeğiştirme ortalama hız ile süre çarpımıdır: Δx = ½(v₀ + v) t. Bu bağıntı ivmeyi bilmeden v₀''ı verir.

---

**Bilinenler:** t = 5 s, Δx = 25 m, v = 0 (duruyor). Bilinmeyenler: v₀ ve a.

---

**İlk hız:** Δx = ½(v₀ + v) t → 25 = ½(v₀ + 0) · 5 → v₀ = 10 m/s.

---

**İvme:** v = v₀ + at → 0 = 10 + a · 5 → a = −2 m/s². Eksi işaret ivmenin harekete ters, yani yavaşlatıcı olduğunu gösterir.

---

**Kontrol:** x = v₀t + ½at² = 10 · 5 + ½(−2)(25) = 50 − 25 = 25 m ✓.', 2, 'Sunu, Bölüm 3, Örnek 4', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s05a', 'u3', 3, 'mcq', 'original', 'Durmakta olan bir araba sabit 2 m/s² ivme ile hızlanıyor. 3 s sonra hızı ve aldığı yol ne kadar olur?', '{"choices":["v = 6 m/s; x = 9 m","v = 6 m/s; x = 18 m","v = 5 m/s; x = 9 m","v = 6 m/s; x = 6 m","v = 3 m/s; x = 4,5 m"]}', '{"index":0}', '"Durmakta olan" ifadesi v₀ = 0 demektir. Başlangıç noktasını x₀ = 0 alınca denklemler v = at ve x = ½at² olur.

---

**Denklemleri sadeleştir:** v₀ = 0, a = 2 → v = 2t ve x = ½ · 2 · t² = t².

---

**Hız:** v = 2 · 3 = 6 m/s.

---

**Yol:** x = 3² = 9 m.', 1, 'Sunu, Bölüm 3, Örnek 5 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s05b', 'u3', 3, 'mcq', 'original', 'Durmakta olan bir araba sabit 2 m/s² ivme ile hızlanıyor. 10 m/s hıza kaç saniyede ulaşır?', '{"choices":["5 s","20 s","10 s","√10 s","2,5 s"]}', '{"index":0}', 'Hız denklemi v = v₀ + at''de v₀ = 0 olduğundan t = v / a.

---

**Hız denklemi:** v = 2t.

---

**Çöz:** 10 = 2t → t = 5 s.', 1, 'Sunu, Bölüm 3, Örnek 5 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s05c', 'u3', 3, 'mcq', 'original', 'Durmakta olan bir araba sabit 2 m/s² ivme ile hızlanıyor. 64 m uzaklığa kaç saniyede ulaşır?', '{"choices":["8 s","32 s","16 s","4 s","64 s"]}', '{"index":0}', 'Konum denklemi x = ½at²; v₀ = 0 ve a = 2 olduğunda x = t² olur.

---

**Konum denklemi:** x = t².

---

**Çöz:** 64 = t² → t = 8 s (negatif kök fiziksel değil).', 2, 'Sunu, Bölüm 3, Örnek 5 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s06a', 'u3', 3, 'mcq', 'original', 'Uçak gemisine iniş: Bir jet, uçak gemisine 140 mil/saat (63 m/s) hızla iniyor ve 2 saniye içinde duruyor. Uçağın ivmesi nedir?', '{"choices":["−31,5 m/s²","−63 m/s²","−126 m/s²","31,5 m/s²","−15,75 m/s²"]}', '{"index":0}', 'Son hız sıfır, süre biliniyor: ivme hızdaki değişimin süreye bölümüdür, a = (v_s − v_i) / t.

---

**Bilinenler:** v_i = 63 m/s, v_s = 0, t = 2 s.

---

**İvme:** a = (0 − 63) / 2 = −31,5 m/s². Bu yerçekimi ivmesinin üç katından fazla; pilot öne doğru güçlü bir itme hisseder.', 2, 'Sunu, Bölüm 3, Örnek 6 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s06b', 'u3', 3, 'mcq', 'original', 'Uçak gemisine iniş: Bir jet, uçak gemisine 140 mil/saat (63 m/s) hızla iniyor ve 2 saniye içinde duruyor. Bu süre içinde uçağın yer değiştirmesi nedir?', '{"choices":["63 m","126 m","31,5 m","252 m","94,5 m"]}', '{"index":0}', 'Sabit ivmede ortalama hız ilk ve son hızın ortalamasıdır; yerdeğiştirme bu ortalama hız ile sürenin çarpımıdır: x_s − x_i = ½(v_i + v_s) t.

---

**Ortalama hız:** ½(63 + 0) = 31,5 m/s.

---

**Yerdeğiştirme:** 31,5 × 2 = 63 m.

---

**Kontrol:** x = v_i t + ½at² = 63 · 2 + ½(−31,5)(4) = 126 − 63 = 63 m ✓.', 2, 'Sunu, Bölüm 3, Örnek 6 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s07', 'u3', 3, 'mcq', 'original', 'Bir uçak havalanırken pistte sabit ivme ile 30 s gittikten sonra havalanmaktadır. Pistte aldığı yol x = 1,2 km olduğuna göre havalanma anındaki hızı hesaplayınız.', '{"choices":["80 m/s (288 km/sa)","40 m/s (144 km/sa)","2,67 m/s (9,6 km/sa)","160 m/s (576 km/sa)","80 m/s (22 km/sa)"]}', '{"index":0}', 'Uçak durgun başlar (v₀ = 0). Önce x = ½at²''den ivme, sonra v = at''den hız bulunur. Birim dönüşümünde 1 m/s = 3,6 km/sa.

---

**Birim:** x = 1,2 km = 1200 m.

---

**İvme:** x = ½at² → a = 2x / t² = 2 · 1200 / 30² = 2400 / 900 = 24/9 ≈ 2,67 m/s².

---

**Hız:** v = at = (24/9) · 30 = 80 m/s.

---

**km/sa''e çevir:** 80 × 3600 / 1000 = 288 km/sa.

---

**Kısa yol:** v₀ = 0 iken x = ½ v t olduğundan v = 2x / t = 2400 / 30 = 80 m/s; ivmeye hiç gerek kalmaz.', 2, 'Sunu, Bölüm 3, Örnek 7', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s08a', 'u3', 3, 'mcq', 'original', '72 km/sa hızla gitmekte olan bir otomobil frene basarak yavaşlatılıyor ve 5 s içinde hızı 36 km/sa düşürülüyor. Arabanın sabit ivmesi nedir?', '{"choices":["−2 m/s²","−7,2 m/s²","−10 m/s²","2 m/s²","−4 m/s²"]}', '{"index":0}', 'Hızlar km/sa verildi; s ile birlikte kullanmadan önce m/s''ye çevir (÷ 3,6). Sonra a = (v − v₀) / t.

---

**Birimler:** v₀ = 72 / 3,6 = 20 m/s; v = 36 / 3,6 = 10 m/s.

---

**İvme:** v = v₀ + at → 10 = 20 + a · 5 → a = −2 m/s².', 2, 'Sunu, Bölüm 3, Örnek 8 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s08b', 'u3', 3, 'mcq', 'original', '72 km/sa hızla gitmekte olan bir otomobil frene basarak yavaşlatılıyor ve 5 s içinde hızı 36 km/sa düşürülüyor. Bu süre içinde ne kadar yol alır?', '{"choices":["75 m","100 m","50 m","25 m","270 m"]}', '{"index":0}', 'İvme bulunduktan sonra x = v₀t + ½at² kullanılır.

---

**Değerler:** v₀ = 20 m/s, a = −2 m/s², t = 5 s.

---

**Yol:** x = 20 · 5 + ½(−2) · 5² = 100 − 25 = 75 m.

---

**Kontrol:** Ortalama hız (20 + 10)/2 = 15 m/s; 15 × 5 = 75 m ✓.', 2, 'Sunu, Bölüm 3, Örnek 8 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s08c', 'u3', 3, 'mcq', 'original', '72 km/sa hızla gitmekte olan bir otomobil frene basarak yavaşlatılıyor ve 5 s içinde hızı 36 km/sa düşürülüyor. Başlangıçtan itibaren arabanın tamamen durması için geçen süre ne kadardır?', '{"choices":["10 s","5 s","15 s","20 s","7,5 s"]}', '{"index":0}', 'Aynı ivmeyle frenlemeye devam ederse son hız sıfır olana kadar geçen süreyi v = v₀ + at verir.

---

**Denklem:** 0 = 20 + (−2) t.

---

**Çöz:** t = 10 s. Hızın yarısını 5 s''de kaybetti, kalan yarısını da 5 s''de kaybeder.', 2, 'Sunu, Bölüm 3, Örnek 8 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s09a', 'u3', 3, 'mcq', 'original', '4 m/s hızla koşmakta olan bir yarışçı aniden hızlanmaya başlıyor ve 11 m yol sonunda 7 m/s hıza ulaşıyor. Yarışçının sabit ivmesi ne kadardır?', '{"choices":["1,5 m/s²","3 m/s²","0,27 m/s²","2,2 m/s²","0,75 m/s²"]}', '{"index":0}', 'Süre verilmemiş: zamansız hız denklemi v² = v₀² + 2aΔx doğrudan ivmeyi verir.

---

**Zamansız denklem:** v² = v₀² + 2aΔx.

---

**Yerine koy:** 49 = 16 + 2a · 11 → 33 = 22a.

---

**Çöz:** a = 33 / 22 = 1,5 m/s².', 2, 'Sunu, Bölüm 3, Örnek 9 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s09b', 'u3', 3, 'mcq', 'original', '4 m/s hızla koşmakta olan bir yarışçı aniden hızlanmaya başlıyor ve 11 m yol sonunda 7 m/s hıza ulaşıyor. Yarışçının hızlanması ne kadar sürmüştür?', '{"choices":["2 s","1 s","3 s","4,7 s","1,6 s"]}', '{"index":0}', 'İvme bulunduktan sonra v = v₀ + at; ya da ivmeye gerek duymadan Δx = ½(v₀ + v) t.

---

**Hız denklemi:** 7 = 4 + 1,5 t → t = 3 / 1,5 = 2 s.

---

**Kontrol:** Ortalama hız (4 + 7)/2 = 5,5 m/s; 11 m / 5,5 m/s = 2 s ✓.', 2, 'Sunu, Bölüm 3, Örnek 9 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s10a', 'u3', 3, 'mcq', 'original', 'Bir taş bir binanın tepesinden düşey ve yukarı yönde 20 m/s lik ilk hızla fırlatılmıştır. Bina 50 m yüksekliğindedir. (g = 10 m/s²) Taşın maksimum yüksekliğe ulaşması için geçen zamanı ve maksimum yüksekliği (atıldığı noktaya göre) bulunuz.', '{"choices":["t = 2 s; y_max = 20 m","t = 2 s; y_max = 40 m","t = 4 s; y_max = 20 m","t = 2 s; y_max = 70 m","t = 0,5 s; y_max = 10 m"]}', '{"index":0}', 'Orijini atış noktasında, +y''yi yukarı al; ivme −g. Tepe noktasında hız sıfırdır: v = v₀ − gt = 0.

---

**Tepe anı:** 0 = 20 − 10 t₁ → t₁ = 2 s.

---

**Yükseklik:** y_max = v₀t₁ − ½g t₁² = 20 · 2 − 5 · 4 = 40 − 20 = 20 m (atıldığı noktadan). Yerden 50 + 20 = 70 m.

---

**Kısa yol:** y_max = v₀² / 2g = 400 / 20 = 20 m.', 2, 'Sunu, Bölüm 3, Örnek 10 (a ve b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s10b', 'u3', 3, 'mcq', 'original', 'Bir taş bir binanın tepesinden düşey ve yukarı yönde 20 m/s lik ilk hızla fırlatılmıştır. Bina 50 m yüksekliğindedir. (g = 10 m/s²) Taşın atıldığı seviyeye geri gelmesi için geçen zamanı ve taşın bu andaki hızını bulunuz.', '{"choices":["t = 4 s; v = −20 m/s","t = 2 s; v = 0","t = 4 s; v = 20 m/s","t = 4 s; v = −40 m/s","t = 5 s; v = −30 m/s"]}', '{"index":0}', 'Düşey atış simetriktir: çıkış süresi iniş süresine eşittir ve aynı seviyeye aynı büyüklükte ama ters yönde hızla döner.

---

**Süre:** t_u = 2t₁ = 2 · 2 = 4 s. (Ya da y = 20t − 5t² = 0 → t = 4 s.)

---

**Hız:** v = v₀ − g t₂ = 20 − 10 · 4 = −20 m/s.

---

**Yorum:** Büyüklük atış hızıyla aynı (20 m/s), eksi işaret aşağı doğru gittiğini gösterir.', 2, 'Sunu, Bölüm 3, Örnek 10 (c ve d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s10c', 'u3', 3, 'mcq', 'original', 'Bir taş bir binanın tepesinden düşey ve yukarı yönde 20 m/s lik ilk hızla fırlatılmıştır. Bina 50 m yüksekliğindedir. (g = 10 m/s²) t = 5 saniyede taşın hızını ve konumunu (atıldığı noktaya göre) bulunuz.', '{"choices":["v = −30 m/s; y = −25 m","v = −30 m/s; y = 25 m","v = 30 m/s; y = −25 m","v = −50 m/s; y = −125 m","v = −30 m/s; y = −45 m"]}', '{"index":0}', 'Aynı denklemler (v = v₀ − gt, y = v₀t − ½gt²) taş hangi yönde giderse gitsin geçerlidir; hareketi parçalara ayırmaya gerek yok. Not: sunu bu konumu 25 m yazmış; işlem 100 − 125 = −25 m verir.

---

**Hız:** v = 20 − 10 · 5 = −30 m/s.

---

**Konum:** y = 20 · 5 − 5 · 5² = 100 − 125 = −25 m.

---

**Yorum:** Eksi konum taşın atıldığı noktanın 25 m altında, yani yerden 50 − 25 = 25 m yükseklikte olduğunu söyler. Sunudaki "25 m" bu yerden yüksekliğe denk gelir; atış noktasına göre konum −25 m''dir.', 2, 'Sunu, Bölüm 3, Örnek 10 (e)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s11a', 'u3', 3, 'mcq', 'original', 'Yerden 35 m yükseklikteki bir binanın çatısından bir taş yukarı yönde 30 m/s hızla fırlatılıyor. (g = 10 m/s²) Yer hizasını orijin ve yukarı yönü pozitif alarak maksimum yüksekliği (yerden) ve çıkış zamanını hesaplayın.', '{"choices":["t = 3 s; y_max = 80 m","t = 3 s; y_max = 45 m","t = 6 s; y_max = 80 m","t = 3 s; y_max = 125 m","t = 30 s; y_max = 80 m"]}', '{"index":0}', 'Orijin yerde olduğundan y₀ = 35 m. Hareket denklemleri: v = 30 − 10t ve y = 35 + 30t − 5t². Tepede v = 0.

---

**Denklemler:** v = v₀ + at = 30 − 10t; y = y₀ + v₀t + ½at² = 35 + 30t − 5t².

---

**Çıkış zamanı:** 0 = 30 − 10t → t = 3 s.

---

**Maksimum yükseklik:** y = 35 + 30 · 3 − 5 · 9 = 35 + 90 − 45 = 80 m (yerden).

---

**Atıldığı yerden:** 80 − 35 = 45 m.', 2, 'Sunu, Bölüm 3, Örnek 11 (a ve b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s11b', 'u3', 3, 'mcq', 'original', 'Yerden 35 m yükseklikteki bir binanın çatısından bir taş yukarı yönde 30 m/s hızla fırlatılıyor. (g = 10 m/s²) Yere düşünceye kadar kaç saniye geçer ve taş yere hangi hızla çarpar?', '{"choices":["t = 7 s; v = −40 m/s","t = 6 s; v = −30 m/s","t = 7 s; v = 40 m/s","t = 4 s; v = −40 m/s","t = 7 s; v = −70 m/s"]}', '{"index":0}', 'Yere düşmek y = 0 demektir. İkinci dereceden denklem iki kök verir; negatif zaman fiziksel değildir.

---

**Denklem:** 0 = 35 + 30t − 5t². 5''e böl: t² − 6t − 7 = 0.

---

**Çarpanlara ayır:** (t − 7)(t + 1) = 0 → t = 7 s ya da t = −1 s. Negatif kök atılır: t = 7 s.

---

**Çarpma hızı:** v = 30 − 10 · 7 = −40 m/s. Eksi işaret aşağı yönü gösterir.

---

**Kontrol:** Zamansız denklem: v² = 30² + 2(−10)(0 − 35) = 900 + 700 = 1600 → |v| = 40 m/s ✓.', 2, 'Sunu, Bölüm 3, Örnek 11 (c ve d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s12a', 'u3', 3, 'mcq', 'original', 'Bir top 15 m/s hızla yerden yukarı doğru fırlatılıyor. (g = 10 m/s²) Atıldığı yeri orijin, yukarıyı pozitif alarak t = 1 s sonraki konumu ve hızı bulun.', '{"choices":["y = 10 m; v = 5 m/s","y = 15 m; v = 5 m/s","y = 10 m; v = −5 m/s","y = 20 m; v = 25 m/s","y = 5 m; v = 10 m/s"]}', '{"index":0}', 'Hareket denklemleri v = 15 − 10t ve y = 15t − 5t². Bir andaki hız ve konum doğrudan yerine koyarak bulunur.

---

**Denklemler:** v = v₀ − gt = 15 − 10t; y = v₀t − ½gt² = 15t − 5t².

---

**t = 1 s:** v = 15 − 10 = 5 m/s (hâlâ yukarı çıkıyor).

---

**t = 1 s:** y = 15 − 5 = 10 m.', 1, 'Sunu, Bölüm 3, Örnek 12 (a ve b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s12b', 'u3', 3, 'mcq', 'original', 'Bir top 15 m/s hızla yerden yukarı doğru fırlatılıyor. (g = 10 m/s²) Maksimum yüksekliğe kaç saniyede çıkar ve maksimum yükseklik ne kadardır?', '{"choices":["t = 1,5 s; y ≈ 11,3 m","t = 1,5 s; y = 22,5 m","t = 3 s; y ≈ 11,3 m","t = 1 s; y = 10 m","t = 1,5 s; y = 15 m"]}', '{"index":0}', 'Tepede hız sıfırdır; bu koşul zamanı, zaman da konum denklemiyle yüksekliği verir.

---

**Zaman:** 0 = 15 − 10t → t = 1,5 s.

---

**Yükseklik:** y = 15 · 1,5 − 5 · 1,5² = 22,5 − 11,25 = 11,25 ≈ 11,3 m.

---

**Kontrol:** v₀² / 2g = 225 / 20 = 11,25 m ✓.', 2, 'Sunu, Bölüm 3, Örnek 12 (c ve d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s12c', 'u3', 3, 'mcq', 'original', 'Bir top 15 m/s hızla yerden yukarı doğru fırlatılıyor. (g = 10 m/s²) Top yerden 10 m yükseklikten hangi zamanlarda geçer?', '{"choices":["t = 1 s ve t = 2 s","Yalnız t = 1 s","t = 0,5 s ve t = 2,5 s","Yalnız t = 2 s","t = 1 s ve t = 3 s"]}', '{"index":0}', 'Konum denklemini 10 m''ye eşitle. Top bu yükseklikten bir kez çıkarken, bir kez inerken geçer; iki kök de geçerlidir.

---

**Denklem:** 10 = 15t − 5t² → 5t² − 15t + 10 = 0 → t² − 3t + 2 = 0.

---

**Çarpanlar:** (t − 1)(t − 2) = 0 → t = 1 s ve t = 2 s.

---

**Yorum:** t = 1 s''de yukarı çıkarken (v = +5), t = 2 s''de aşağı inerken (v = −5) geçer. İki an tepe anı 1,5 s''ye göre simetriktir.', 2, 'Sunu, Bölüm 3, Örnek 12 (e)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s12d', 'u3', 3, 'mcq', 'original', 'Bir top 15 m/s hızla yerden yukarı doğru fırlatılıyor. (g = 10 m/s²) Atıldığından itibaren kaç saniye sonra yere düşer?', '{"choices":["3 s","1,5 s","2 s","4,5 s","6 s"]}', '{"index":0}', 'Yere dönmek y = 0 demektir. Çıkış süresi iniş süresine eşit olduğu için tepe zamanının iki katı da aynı sonucu verir.

---

**Denklem:** 0 = 15t − 5t² = t(15 − 5t).

---

**Kökler:** t = 0 (başlangıç anı) ve t = 3 s (düşüş anı).

---

**Kontrol:** 2 × 1,5 s = 3 s ✓.', 1, 'Sunu, Bölüm 3, Örnek 12 (f)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s13', 'u3', 3, 'mcq', 'original', 'Yerden 45 m yükseklikteki bir binanın çatısından 1 s aralıklarla su damlıyor. Bir damla yere çarptığı anda ikinci damlanın yüksekliği ne kadardır? (g = 10 m/s²)', '{"choices":["25 m","20 m","35 m","40 m","5 m"]}', '{"index":0}', 'Her damlaya kendi kronometresini ver: ikinci damla birinciden 1 s sonra yola çıktığı için t₂ = t₁ − 1. Orijini çatıda, aşağıyı pozitif almak denklemleri sadeleştirir: y = ½gt².

---

**Birinci damlanın düşüş süresi:** 45 = ½ · 10 · t₁² → t₁² = 9 → t₁ = 3 s.

---

**İkinci damlanın süresi:** t₂ = t₁ − 1 = 2 s.

---

**İkinci damlanın düştüğü yol:** y₂ = ½ · 10 · 2² = 20 m (çatıdan aşağı).

---

**Yerden yükseklik:** 45 − 20 = 25 m.', 3, 'Sunu, Bölüm 3, Örnek 13', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s14a', 'u3', 3, 'mcq', 'original', 'Yerden bir top 12 m/s hızla yukarı doğru atıldığı anda, 32 m yükseklikteki bir binanın çatısından ikinci bir top 4 m/s hızla aşağı yönde fırlatılıyor. (g = 10 m/s²)

[[G-S3-01]]

İki top ne zaman ve hangi yükseklikte çarpışırlar?', '{"choices":["t = 2 s; y = 4 m","t = 2 s; y = 12 m","t = 4 s; y = 4 m","t = 1,6 s; y = 6,4 m","t = 2 s; y = 0"]}', '{"index":0}', 'İki topu aynı koordinat sisteminde yaz: orijin yerde, +y yukarı. Çarpışma anında iki topun y konumu aynıdır.

---

**1. top:** y₁₀ = 0, v₁₀ = +12 m/s → y₁ = 12t − 5t².

---

**2. top:** y₂₀ = 32 m, v₂₀ = −4 m/s (aşağı) → y₂ = 32 − 4t − 5t².

---

**Eşitle:** 12t − 5t² = 32 − 4t − 5t². −5t² terimleri sadeleşir: 16t = 32 → t = 2 s.

---

**Yükseklik:** y₁ = 12 · 2 − 5 · 4 = 24 − 20 = 4 m. Kontrol: y₂ = 32 − 8 − 20 = 4 m ✓.', 3, 'Sunu, Bölüm 3, Örnek 13, s. 32 (b ve c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-s14b', 'u3', 3, 'mcq', 'original', 'Yerden bir top 12 m/s hızla yukarı doğru atıldığı anda, 32 m yükseklikteki bir binanın çatısından ikinci bir top 4 m/s hızla aşağı yönde fırlatılıyor. (g = 10 m/s²)

[[G-S3-01]]

Çarpıştıkları anda her birinin hızı ne kadardır?', '{"choices":["v₁ = −8 m/s; v₂ = −24 m/s","v₁ = 8 m/s; v₂ = −24 m/s","v₁ = −8 m/s; v₂ = −16 m/s","v₁ = 12 m/s; v₂ = −4 m/s","v₁ = 32 m/s; v₂ = −24 m/s"]}', '{"index":0}', 'Çarpışma anı t = 2 s''yi iki topun hız denklemine koy: v₁ = 12 − 10t, v₂ = −4 − 10t.

---

**Çarpışma anı:** t = 2 s (önceki parça).

---

**1. top:** v₁ = 12 − 10 · 2 = −8 m/s.

---

**2. top:** v₂ = −4 − 10 · 2 = −24 m/s.

---

**Yorum:** v₁ negatif: 1. top 1,2 s''de tepeye çıkmış, geri dönmüş ve aşağı inerken çarpışmıştır.', 3, 'Sunu, Bölüm 3, Örnek 13, s. 32 (d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t01', 'u3', 3, 'mcq', 'derived', 'Bir koşucu 10 s''de doğuya 30 m gidiyor, sonra 5 s''de batıya 10 m geri dönüyor. Bu 15 s için ortalama hızın büyüklüğü ve ortalama sürat nedir?', '{"choices":["v̄ ≈ 1,33 m/s; sürat ≈ 2,67 m/s","v̄ ≈ 2,67 m/s; sürat ≈ 1,33 m/s","v̄ = 2 m/s; sürat = 2 m/s","v̄ ≈ 1,33 m/s; sürat ≈ 1,33 m/s","v̄ = 4 m/s; sürat ≈ 2,67 m/s"]}', '{"index":0}', 'Ortalama hız yerdeğiştirmeyi (son − ilk konum), ortalama sürat ise toplam yolu kullanır. Geri dönüş olduğunda ikisi farklı çıkar.

---

**Yerdeğiştirme:** doğu +: Δx = +30 − 10 = +20 m.

---

**Toplam yol:** 30 + 10 = 40 m.

---

**Süre:** 10 + 5 = 15 s.

---

**Sonuç:** v̄ = 20 / 15 ≈ 1,33 m/s (doğuya); ortalama sürat = 40 / 15 ≈ 2,67 m/s.', 2, '3. bölüm, Konum, yerdeğiştirme, ortalama hız ve sürat', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t02', 'u3', 3, 'tf', 'derived', 'Bir cisim hareket ettiği sürece yerdeğiştirmesi her zaman sıfırdan farklıdır.', '{}', '{"value":false}', 'Yerdeğiştirme yalnız ilk ve son konuma bakar. Başladığı yere dönen bir cismin (ör. pistte bir tur atan koşucu) yolu sıfırdan büyük ama yerdeğiştirmesi sıfırdır; ortalama hızı da sıfır olur.', 1, '3. bölüm, Konum, yerdeğiştirme, ortalama hız ve sürat', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t03', 'u3', 3, 'mcq', 'derived', 'x ekseninde hareket eden bir cisim t = 2 s''de x = −6 m, t = 6 s''de x = 10 m konumundadır. Bu aralıktaki ortalama hızı nedir?', '{"choices":["4 m/s","1 m/s","−4 m/s","2,5 m/s","16 m/s"]}', '{"index":0}', 'v̄ = (x_s − x_i) / (t_s − t_i). İlk konum negatif olduğu için eksiyi dikkatle çıkar.

---

**Yerdeğiştirme:** Δx = 10 − (−6) = 16 m.

---

**Süre:** Δt = 6 − 2 = 4 s.

---

**Ortalama hız:** v̄ = 16 / 4 = 4 m/s.', 2, '3. bölüm, Konum, yerdeğiştirme, ortalama hız ve sürat', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t04', 'u3', 3, 'fill', 'derived', 'Toplam yolun geçen süreye oranına ortalama ____ denir; bu büyüklük skalerdir ve hiçbir zaman negatif olmaz.', '{"blanks":1}', '{"blanks":[["sürat","surat"]]}', '**Ortalama sürat** = toplam yol / süre. Ortalama hız ise yerdeğiştirme / süredir ve işaretli (vektörel) bir büyüklüktür.', 1, '3. bölüm, Konum, yerdeğiştirme, ortalama hız ve sürat', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t05', 'u3', 3, 'mcq', 'derived', 'Bir cismin konumu x(t) = 4t² − 3t + 2 m ile veriliyor. t = 2 s anındaki hızı nedir?', '{"choices":["13 m/s","12 m/s","16 m/s","8 m/s","5 m/s"]}', '{"index":0}', 'Ani hız konumun türevidir: v = dx/dt.

---

**Türev:** v(t) = 8t − 3.

---

**t = 2:** v(2) = 16 − 3 = 13 m/s.

---

**Tuzak:** x(2) = 16 − 6 + 2 = 12 m konumdur, hız değil.', 2, '3. bölüm, Ani hız ve ivme (türevle)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t06', 'u3', 3, 'mcq', 'derived', 'Konumu x(t) = t³ − 6t² + 9t m olan bir cisim hangi anlarda anlık olarak durur?', '{"choices":["t = 1 s ve t = 3 s","t = 0 ve t = 3 s","Yalnız t = 2 s","t = 1 s ve t = 2 s","t = 3 s ve t = 9 s"]}', '{"index":0}', 'Cismin durduğu an hızın sıfır olduğu andır. Konumun sıfır olduğu an değil; v = dx/dt = 0 çözülür.

---

**Hız:** v(t) = 3t² − 12t + 9.

---

**Sıfıra eşitle:** 3t² − 12t + 9 = 0 → t² − 4t + 3 = 0.

---

**Çarpanlar:** (t − 1)(t − 3) = 0 → t = 1 s ve t = 3 s.

---

**Yorum:** Cisim t = 1 s''de yön değiştirip geri gelir, t = 3 s''de yeniden yön değiştirir.', 2, '3. bölüm, Ani hız ve ivme (türevle)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t07', 'u3', 3, 'mcq', 'derived', 'Konumu x(t) = 5t³ m olan bir cismin t = 2 s anındaki ivmesi nedir?', '{"choices":["60 m/s²","40 m/s²","30 m/s²","120 m/s²","15 m/s²"]}', '{"index":0}', 'İvme konumun ikinci türevidir: önce v = dx/dt, sonra a = dv/dt.

---

**Hız:** v = 15t².

---

**İvme:** a = 30t.

---

**t = 2 s:** a = 60 m/s².', 2, '3. bölüm, Ani hız ve ivme (türevle)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t08', 'u3', 3, 'tf', 'derived', 'Bir cismin hızı bir anda sıfırsa o andaki ivmesi de sıfır olmak zorundadır.', '{}', '{"value":false}', 'Hız ve ivme ayrı büyüklüklerdir. Yukarı atılan taş tepede bir an durur (v = 0) ama ivmesi hâlâ g''dir, aşağı yönlüdür. İvme sıfır olsaydı taş tepede asılı kalırdı.', 2, '3. bölüm, Ani hız ve ivme (türevle)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t09', 'u3', 3, 'mcq', 'derived', 'Konum-zaman (x-t) grafiğinde bir noktadaki teğetin eğimi neyi verir?', '{"choices":["O andaki ani hızı","O andaki ivmeyi","O ana kadar alınan yolu","O andaki konumu","Ortalama ivmeyi"]}', '{"index":0}', 'x-t grafiğinde eğim Δx / Δt''dir. İki nokta arasındaki kirişin eğimi ortalama hızı, bir noktadaki teğetin eğimi ani hızı verir.', 2, '3. bölüm, Konum-zaman ve hız-zaman grafikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t10', 'u3', 3, 'mcq', 'derived', 'Hız-zaman (v-t) grafiğinde eğri ile zaman ekseni arasında kalan alan neyi verir?', '{"choices":["Yerdeğiştirmeyi","İvmeyi","Ortalama hızı","Hız değişimini","Ani hızı"]}', '{"index":0}', 'v-t grafiğinde alan v × t, yani yerdeğiştirmedir. Eksenin altında kalan alan negatif yerdeğiştirme sayılır. Eğim ise ivmeyi verir.', 2, '3. bölüm, Konum-zaman ve hız-zaman grafikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t11', 'u3', 3, 'mcq', 'derived', 'Bir araba durgun hâlden 4 s içinde düzgün hızlanarak 20 m/s''ye çıkıyor, sonra 6 s boyunca bu hızla gidiyor. v-t grafiğinden 10 s''de aldığı yol nedir?', '{"choices":["160 m","200 m","120 m","40 m","180 m"]}', '{"index":0}', 'v-t grafiğinin altındaki alanı parça parça hesapla: önce bir üçgen (hızlanma), sonra bir dikdörtgen (sabit hız).

---

**Üçgen (0–4 s):** ½ · 4 · 20 = 40 m.

---

**Dikdörtgen (4–10 s):** 6 · 20 = 120 m.

---

**Toplam:** 40 + 120 = 160 m.

---

**Tuzak:** 20 m/s × 10 s = 200 m, ilk 4 s''de arabanın 20 m/s''den yavaş gittiğini unutur.', 3, '3. bölüm, Konum-zaman ve hız-zaman grafikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t12', 'u3', 3, 'tf', 'derived', 'Hız-zaman grafiği yatay bir doğru olan bir cismin ivmesi sıfırdır.', '{}', '{"value":true}', 'v-t grafiğinin eğimi ivmedir. Yatay doğrunun eğimi sıfır olduğu için ivme sıfırdır; cisim sabit hızla gider (hız sıfır değilse).', 2, '3. bölüm, Konum-zaman ve hız-zaman grafikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t13', 'u3', 3, 'mcq', 'derived', 'Hız-zaman grafiği 0–5 s arasında 10 m/s''den 0''a doğrusal inen bir cismin ivmesi ve bu sürede aldığı yol nedir?', '{"choices":["a = −2 m/s²; 25 m","a = 2 m/s²; 25 m","a = −2 m/s²; 50 m","a = −0,5 m/s²; 25 m","a = −10 m/s²; 5 m"]}', '{"index":0}', 'Eğim ivmeyi, altında kalan alan yerdeğiştirmeyi verir.

---

**Eğim:** a = (0 − 10) / 5 = −2 m/s².

---

**Alan (üçgen):** ½ · 5 · 10 = 25 m.', 2, '3. bölüm, Konum-zaman ve hız-zaman grafikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t14', 'u3', 3, 'mcq', 'derived', '15 m/s hızla giden bir bisikletli −3 m/s² ivmeyle fren yapıyor. Durana kadar kaç metre yol alır?', '{"choices":["37,5 m","75 m","5 m","45 m","22,5 m"]}', '{"index":0}', 'Süre sorulmuyor ve verilmiyor; zamansız hız denklemi v² = v₀² + 2aΔx en kısa yoldur.

---

**Denklem:** 0 = 15² + 2(−3)Δx.

---

**Çöz:** 6Δx = 225 → Δx = 37,5 m.

---

**Kontrol:** Durma süresi 15 / 3 = 5 s; ortalama hız 7,5 m/s; 7,5 × 5 = 37,5 m ✓.', 2, '3. bölüm, Sabit ivmeli hareket denklemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t15', 'u3', 3, 'mcq', 'derived', '108 km/sa hızla giden bir otomobil sabit ivmeyle yavaşlayarak 6 s''de duruyor. İvmesi ve durana kadar aldığı yol nedir?', '{"choices":["a = −5 m/s²; 90 m","a = −18 m/s²; 324 m","a = −5 m/s²; 180 m","a = −30 m/s²; 90 m","a = −2,5 m/s²; 90 m"]}', '{"index":0}', 'Önce birimi çevir: 108 km/sa ÷ 3,6 = 30 m/s. Sonra a = Δv / t ve Δx = ½(v₀ + v) t.

---

**Birim:** v₀ = 108 / 3,6 = 30 m/s.

---

**İvme:** a = (0 − 30) / 6 = −5 m/s².

---

**Yol:** Δx = ½(30 + 0) · 6 = 90 m.', 2, '3. bölüm, Sabit ivmeli hareket denklemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t16', 'u3', 3, 'mcq', 'derived', '6 m/s hızla giden bir cisim 2 m/s² sabit ivmeyle hızlanıyor. 40 m sonra hızı ne olur ve bu ne kadar sürer?', '{"choices":["v = 14 m/s; t = 4 s","v = 14 m/s; t = 7 s","v = 10 m/s; t = 2 s","v = 86 m/s; t = 40 s","v = 16 m/s; t = 5 s"]}', '{"index":0}', 'Önce zamansız denklemle son hızı, sonra v = v₀ + at ile süreyi bul.

---

**Son hız:** v² = 6² + 2 · 2 · 40 = 36 + 160 = 196 → v = 14 m/s.

---

**Süre:** 14 = 6 + 2t → t = 4 s.

---

**Kontrol:** x = 6 · 4 + ½ · 2 · 16 = 24 + 16 = 40 m ✓.', 2, '3. bölüm, Sabit ivmeli hareket denklemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t17', 'u3', 3, 'fill', 'derived', 'Durgun hâlden 4 m/s² sabit ivmeyle harekete başlayan bir araç 5 s sonunda kaç metre yol almış olur? (Yalnız sayıyı yazın.)', '{"blanks":1}', '{"blanks":[["50","50 m"]]}', 'v₀ = 0 olduğundan x = ½at².

---

**Denklem:** x = ½ · 4 · 5².

---

**Hesap:** 2 · 25 = 50 m. (Bu anda hızı 4 · 5 = 20 m/s''dir.)', 2, '3. bölüm, Sabit ivmeli hareket denklemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t18', 'u3', 3, 'tf', 'derived', 'Sabit ivmeli harekette bir zaman aralığındaki ortalama hız, ilk ve son hızların aritmetik ortalamasına eşittir.', '{}', '{"value":true}', 'İvme sabitken v-t grafiği bir doğrudur; altındaki yamuğun alanı ½(v₀ + v) t olduğundan v̄ = ½(v₀ + v). İvme değişiyorsa bu bağıntı genelde geçerli değildir.', 2, '3. bölüm, Sabit ivmeli hareket denklemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t19', 'u3', 3, 'mcq', 'derived', '80 m yükseklikten serbest bırakılan bir taş kaç saniyede yere düşer ve yere hangi hızla çarpar? (g = 10 m/s², hava direnci yok)', '{"choices":["t = 4 s; v = 40 m/s","t = 8 s; v = 80 m/s","t = 4 s; v = 80 m/s","t = 16 s; v = 40 m/s","t = 2 s; v = 20 m/s"]}', '{"index":0}', 'Serbest bırakılan cismin v₀ = 0''dır. Aşağıyı pozitif alırsak h = ½gt² ve v = gt.

---

**Süre:** 80 = 5t² → t² = 16 → t = 4 s.

---

**Hız:** v = 10 · 4 = 40 m/s (aşağı).

---

**Kontrol:** v² = 2gh = 2 · 10 · 80 = 1600 → v = 40 m/s ✓.', 2, '3. bölüm, Serbest düşme ve düşey atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t20', 'u3', 3, 'mcq', 'derived', 'Yerden 30 m/s hızla düşey yukarı atılan bir topun çıkabileceği en büyük yükseklik ve havada kalma süresi nedir? (g = 10 m/s²)', '{"choices":["h = 45 m; 6 s","h = 90 m; 6 s","h = 45 m; 3 s","h = 30 m; 6 s","h = 45 m; 9 s"]}', '{"index":0}', 'Tepede v = 0: çıkış süresi v₀/g, yükseklik v₀²/2g. Havada kalma süresi çıkış süresinin iki katıdır.

---

**Çıkış süresi:** t = 30 / 10 = 3 s.

---

**Yükseklik:** h = 30² / (2 · 10) = 900 / 20 = 45 m.

---

**Havada kalma:** 2 × 3 = 6 s.', 2, '3. bölüm, Serbest düşme ve düşey atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t21', 'u3', 3, 'mcq', 'derived', 'Yerden 60 m yükseklikteki bir çatıdan bir taş 20 m/s hızla düşey yukarı atılıyor. Taş kaç saniye sonra yere düşer ve yere hangi hızla çarpar? (g = 10 m/s²)', '{"choices":["t = 6 s; v = −40 m/s","t = 4 s; v = −20 m/s","t = 6 s; v = −60 m/s","t = 2 s; v = 0","t = 8 s; v = −40 m/s"]}', '{"index":0}', 'Orijini yerde, +y''yi yukarı al: y = 60 + 20t − 5t². Yere düşmek y = 0 demektir.

---

**Denklem:** 0 = 60 + 20t − 5t² → t² − 4t − 12 = 0.

---

**Çarpanlar:** (t − 6)(t + 2) = 0 → t = 6 s (negatif kök atılır).

---

**Hız:** v = 20 − 10 · 6 = −40 m/s.

---

**Kontrol:** v² = 20² + 2 · 10 · 60 = 400 + 1200 = 1600 → |v| = 40 m/s ✓.', 3, '3. bölüm, Serbest düşme ve düşey atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t22', 'u3', 3, 'mcq', 'derived', 'Yerden 80 m yükseklikteki bir çatıdan 1 s aralıklarla su damlıyor. Bir damla yere çarptığı anda bir sonraki damla yerden kaç metre yüksektedir? (g = 10 m/s²)', '{"choices":["35 m","45 m","5 m","20 m","75 m"]}', '{"index":0}', 'Her damlanın kendi kronometresi olsun: ikinci damla 1 s geç başladığı için t₂ = t₁ − 1. Orijin çatıda, aşağı pozitif.

---

**İlk damla:** 80 = 5t₁² → t₁ = 4 s.

---

**İkinci damla:** t₂ = 3 s → düştüğü yol 5 · 9 = 45 m.

---

**Yerden yükseklik:** 80 − 45 = 35 m.', 3, '3. bölüm, Serbest düşme ve düşey atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t23', 'u3', 3, 'mcq', 'derived', 'Yerden bir top 20 m/s hızla yukarı atıldığı anda, 40 m yükseklikteki bir çatıdan ikinci bir top serbest bırakılıyor. İki top ne zaman ve yerden hangi yükseklikte karşılaşır? (g = 10 m/s²)

[[G-S3-02]]', '{"choices":["t = 2 s; y = 20 m","t = 2 s; y = 0","t = 1 s; y = 15 m","t = 4 s; y = 20 m","t = 2 s; y = 40 m"]}', '{"index":0}', 'Aynı koordinat sistemi (orijin yerde, +y yukarı) iki topa da uygulanır. Karşılaşmada y₁ = y₂; −5t² terimleri iki yanda da olduğu için sadeleşir.

---

**1. top:** y₁ = 20t − 5t².

---

**2. top:** y₂ = 40 − 5t² (v₀ = 0).

---

**Eşitle:** 20t = 40 → t = 2 s.

---

**Yükseklik:** y₁ = 40 − 20 = 20 m.

---

**Hızlar:** v₁ = 20 − 20 = 0 (1. top tam tepede), v₂ = −20 m/s.', 3, '3. bölüm, Serbest düşme ve düşey atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t24', 'u3', 3, 'tf', 'derived', 'Hava direnci ihmal edildiğinde aynı yükseklikten aynı anda bırakılan ağır ve hafif iki cisim yere aynı anda düşer.', '{}', '{"value":true}', 'Serbest düşmede ivme g''dir ve kütleye bağlı değildir. Düşme süresi t = √(2h/g) yalnız yüksekliğe bağlıdır.', 1, '3. bölüm, Serbest düşme ve düşey atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u3-t25', 'u3', 3, 'tf', 'derived', 'Düşey yukarı atılan bir cismin tepe noktasındaki ivmesi sıfırdır.', '{}', '{"value":false}', 'Tepe noktasında sıfır olan hızdır. İvme hareket boyunca g = 10 m/s², aşağı yönlüdür; tepede de değişmez.', 2, '3. bölüm, Serbest düşme ve düşey atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s01a', 'u4', 4, 'mcq', 'original', 'Düzlemde bir hareketlinin koordinatları x = t³ − 2t² + 5 ve y = 3t² − 4t + 4 olarak veriliyor (SI birimleri). Hız ve ivmeyi zamanın fonksiyonları olarak ifade edin.', '{"choices":["v = (3t² − 4t)î + (6t − 4)ĵ; a = (6t − 4)î + 6ĵ","v = (3t² − 4t)î + (6t − 4)ĵ; a = (6t − 4)î + 6tĵ","v = (3t² − 2t)î + (3t − 4)ĵ; a = (6t − 2)î + 3ĵ","v = (t² − 4t)î + (6t − 4)ĵ; a = (2t − 4)î + 6ĵ","v = (3t² − 4t + 5)î + (6t − 4)ĵ; a = (6t − 4)î + 6ĵ"]}', '{"index":0}', 'İki boyutta her bileşen kendi başına türevlenir: v_x = dx/dt, v_y = dy/dt; a_x = dv_x/dt, a_y = dv_y/dt.

---

**x bileşeni:** v_x = d(t³ − 2t² + 5)/dt = 3t² − 4t; a_x = 6t − 4.

---

**y bileşeni:** v_y = d(3t² − 4t + 4)/dt = 6t − 4; a_y = 6 (sabit).

---

**Vektör olarak:** v = (3t² − 4t)î + (6t − 4)ĵ m/s ve a = (6t − 4)î + 6ĵ m/s².', 2, 'Sunu, Bölüm 4, Örnek 1 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s01b', 'u4', 4, 'mcq', 'original', 'Düzlemde bir hareketlinin koordinatları x = t³ − 2t² + 5 ve y = 3t² − 4t + 4 olarak veriliyor (SI birimleri). t = 1 s anında konum, hız ve ivme vektörlerini bulun.', '{"choices":["r = 4î + 3ĵ; v = −î + 2ĵ; a = 2î + 6ĵ","r = 4î + 3ĵ; v = î + 2ĵ; a = 2î + 6ĵ","r = 3î + 4ĵ; v = −î + 2ĵ; a = 6î + 2ĵ","r = 4î + 3ĵ; v = −î − 2ĵ; a = −2î + 6ĵ","r = 5î + 4ĵ; v = −î + 2ĵ; a = 2î + 6ĵ"]}', '{"index":0}', 'Bir andaki vektörleri bulmak için zaman fonksiyonlarına t = 1 koyulur; her bileşen ayrı hesaplanır.

---

**Konum:** x(1) = 1 − 2 + 5 = 4; y(1) = 3 − 4 + 4 = 3 → r = 4î + 3ĵ m.

---

**Hız:** v_x(1) = 3 − 4 = −1; v_y(1) = 6 − 4 = 2 → v = −î + 2ĵ m/s.

---

**İvme:** a_x(1) = 6 − 4 = 2; a_y = 6 → a = 2î + 6ĵ m/s².', 2, 'Sunu, Bölüm 4, Örnek 1 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s01c', 'u4', 4, 'mcq', 'original', 'Düzlemde bir hareketlinin koordinatları x = t³ − 2t² + 5 ve y = 3t² − 4t + 4 olarak veriliyor (SI birimleri). t = 1 s anında hız ve ivmenin büyüklüğünü ve hız ile ivme arasındaki açıyı bulun.', '{"choices":["|v| = √5 m/s; |a| = √40 m/s²; θ = 45°","|v| = √5 m/s; |a| = √40 m/s²; θ = 90°","|v| = 3 m/s; |a| = 8 m/s²; θ = 45°","|v| = √5 m/s; |a| = √40 m/s²; θ = 135°","|v| = √3 m/s; |a| = √32 m/s²; θ = 60°"]}', '{"index":0}', 'Büyüklükler Pisagor''la bulunur. İki vektör arasındaki açıyı skaler çarpım verir: cos θ = (v · a) / (|v| |a|).

---

**Büyüklükler:** |v| = √((−1)² + 2²) = √5 m/s; |a| = √(2² + 6²) = √40 m/s².

---

**Skaler çarpım:** v · a = (−1)(2) + (2)(6) = −2 + 12 = 10.

---

**Kosinüs:** cos θ = 10 / (√5 · √40) = 10 / √200 = 10 / (10√2) = √2 / 2.

---

**Açı:** θ = cos⁻¹(√2 / 2) = 45°.', 3, 'Sunu, Bölüm 4, Örnek 1 (c ve d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s02a', 'u4', 4, 'mcq', 'original', 'Düzlemde Hareket: Bir parçacık 20 m/s''lik x bileşenli ve −15 m/s''lik y bileşenli ilk hızla t = 0''da başlangıç noktasından harekete geçmektedir. Parçacık sadece a_x = 4 m/s² ile verilen ivmenin x bileşeniyle xy düzleminde hareket etmektedir. Zamanın fonksiyonu olarak herhangi bir andaki hız vektörünü bulunuz.', '{"choices":["v = (20 + 4t)î − 15ĵ m/s","v = (20 + 4t)î + (−15 + 4t)ĵ m/s","v = 20î + (−15 + 4t)ĵ m/s","v = (20 + 2t²)î − 15ĵ m/s","v = (20 − 4t)î − 15ĵ m/s"]}', '{"index":0}', 'Sabit ivmede her bileşen için v = v₀ + at ayrı yazılır. İvmenin y bileşeni sıfır olduğundan v_y değişmez.

---

**Verilenler:** v₀ₓ = 20 m/s, v₀ᵧ = −15 m/s, a_x = 4 m/s², a_y = 0.

---

**x bileşeni:** v_x = 20 + 4t.

---

**y bileşeni:** v_y = −15 + 0 · t = −15 m/s (sabit).

---

**Vektör:** v = (20 + 4t)î − 15ĵ m/s.', 2, 'Sunu, Bölüm 4, Örnek 2 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s02b', 'u4', 4, 'mcq', 'original', 'Düzlemde Hareket: Bir parçacık 20 m/s''lik x bileşenli ve −15 m/s''lik y bileşenli ilk hızla t = 0''da başlangıç noktasından harekete geçmektedir. Parçacık sadece a_x = 4 m/s² ile verilen ivmenin x bileşeniyle xy düzleminde hareket etmektedir. t = 5 s''de parçacığın hızının büyüklüğünü ve yönünü hesaplayınız.', '{"choices":["|v| ≈ 43 m/s; θ ≈ −21°","|v| ≈ 43 m/s; θ ≈ 21°","|v| = 25 m/s; θ ≈ −37°","|v| ≈ 55 m/s; θ ≈ −21°","|v| ≈ 43 m/s; θ ≈ −69°"]}', '{"index":0}', 'Önce t = 5 s''deki bileşenleri bul, sonra büyüklük için Pisagor, yön için tan θ = v_y / v_x.

---

**Bileşenler:** v_x = 20 + 4 · 5 = 40 m/s; v_y = −15 m/s → v = 40î − 15ĵ.

---

**Büyüklük:** |v| = √(40² + 15²) = √(1600 + 225) = √1825 ≈ 43 m/s.

---

**Yön:** θ = tan⁻¹(−15 / 40) ≈ −21°. v_x pozitif, v_y negatif: dördüncü çeyrek, yani +x''in 21° altı.', 2, 'Sunu, Bölüm 4, Örnek 2 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s03', 'u4', 4, 'mcq', 'original', 'Maksimum atış uzaklığı (menzil): Yatay bir düzlemdeki cisim hangi açıda atılırsa en uzağa düşer, yani menzili (erimi) maksimum olur?', '{"choices":["45°","30°","60°","90°","37°"]}', '{"index":0}', 'Yatay düzlemde menzil R = v₀² sin 2θ / g. Aynı v₀ için R''nin en büyük olması sin 2θ''nın en büyük (1) olmasını ister.

---

**Yörünge denklemi:** y = (tan θ) x − g x² / (2v₀² cos² θ). Yere dönüşte y = 0.

---

**Çöz:** x = 0 (atış noktası) ya da x = 2v₀² cos² θ tan θ / g = 2v₀² sin θ cos θ / g.

---

**Menzil:** 2 sin θ cos θ = sin 2θ olduğundan R = v₀² sin 2θ / g.

---

**Maksimum:** sin 2θ = 1 → 2θ = 90° → θ = 45°.', 1, 'Sunu, Bölüm 4, Örnek 3', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s04a', 'u4', 4, 'mcq', 'original', 'Bir futbolcunun vurduğu top 30 m/s ilk hızla ve yatayla 37° açı altında yükseliyor. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²) t = 1 s anında topun konum ve hız bileşenleri ne olur?', '{"choices":["x = 24 m, y = 13 m; v_x = 24 m/s, v_y = 8 m/s","x = 24 m, y = 18 m; v_x = 24 m/s, v_y = 18 m/s","x = 18 m, y = 19 m; v_x = 18 m/s, v_y = 14 m/s","x = 24 m, y = 13 m; v_x = 14 m/s, v_y = 8 m/s","x = 24 m, y = 23 m; v_x = 24 m/s, v_y = 28 m/s"]}', '{"index":0}', 'Eğik atışta yatay hareket sabit hızlı (a_x = 0), düşey hareket sabit ivmelidir (a_y = −g). Önce ilk hızın bileşenleri bulunur.

---

**İlk hız bileşenleri:** v₀ₓ = 30 cos 37° = 24 m/s; v₀ᵧ = 30 sin 37° = 18 m/s.

---

**Denklemler:** x = 24t; y = 18t − 5t²; v_x = 24; v_y = 18 − 10t.

---

**t = 1 s:** x = 24 m; y = 18 − 5 = 13 m.

---

**t = 1 s:** v_x = 24 m/s (değişmez); v_y = 18 − 10 = 8 m/s.', 2, 'Sunu, Bölüm 4, Örnek 4 (a ve b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s04b', 'u4', 4, 'mcq', 'original', 'Bir futbolcunun vurduğu top 30 m/s ilk hızla ve yatayla 37° açı altında yükseliyor. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²) Top maksimum yüksekliğe kaç saniyede çıkar ve maksimum yükseklik ne kadardır?', '{"choices":["t = 1,8 s; y_max = 16,2 m","t = 3,6 s; y_max = 16,2 m","t = 1,8 s; y_max = 32,4 m","t = 2,4 s; y_max = 28,8 m","t = 1,8 s; y_max = 45 m"]}', '{"index":0}', 'Tepe noktasında hız tamamen yataydır: v_y = 0. Bu anı y denklemine koymak yüksekliği verir.

---

**Tepe anı:** v_y = 18 − 10t = 0 → t = 1,8 s.

---

**Yükseklik:** y_max = 18 · 1,8 − 5 · 1,8² = 32,4 − 16,2 = 16,2 m.

---

**Kontrol:** v₀ᵧ² / 2g = 324 / 20 = 16,2 m ✓.', 2, 'Sunu, Bölüm 4, Örnek 4 (c ve d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s04c', 'u4', 4, 'mcq', 'original', 'Bir futbolcunun vurduğu top 30 m/s ilk hızla ve yatayla 37° açı altında yükseliyor. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²) Top ne kadar uzağa düşer?', '{"choices":["≈ 86 m","≈ 43 m","90 m","≈ 108 m","≈ 65 m"]}', '{"index":0}', 'Yatay düzlemde uçuş süresi tepe süresinin iki katıdır; menzil yatay hız ile uçuş süresinin çarpımıdır.

---

**Uçuş süresi:** 2 × 1,8 = 3,6 s.

---

**Menzil:** R = 24 × 3,6 = 86,4 ≈ 86 m.

---

**Formülle kontrol:** R = v₀² sin 2θ / g = 900 × sin 74° / 10 = 900 × 0,96 / 10 = 86,4 m ✓.', 2, 'Sunu, Bölüm 4, Örnek 4 (e)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s05', 'u4', 4, 'mcq', 'original', 'Bir top 9 m ötedeki bir duvara yatayla 53° açı altında atılıyor. Top duvara yerden 7 m yükseklikte çarpıyor. Topun ilk hızı ne idi? (cos 53° = 0,6; tan 53° = 4/3; g = 10 m/s²)

[[G-S4-01]]', '{"choices":["15 m/s","10 m/s","20 m/s","12 m/s","225 m/s"]}', '{"index":0}', 'Zaman verilmediği için yörünge denklemini kullanmak en hızlı yoldur: y = (tan θ) x − g x² / (2v₀² cos² θ). Not: sunu "tan 37° = 4/3" yazmış; kullanılan değer tan 53° = 4/3''tür.

---

**Bilinenler:** x = 9 m, y = 7 m, tan 53° = 4/3, cos 53° = 0,6.

---

**Yerine koy:** 7 = (4/3) · 9 − 10 · 81 / (2v₀² · 0,36).

---

**Sadeleştir:** 7 = 12 − 810 / (0,72 v₀²) → 810 / (0,72 v₀²) = 5.

---

**Çöz:** v₀² = 810 / 3,6 = 225 → v₀ = 15 m/s.

---

**Zamanla kontrol:** v₀ₓ = 9 m/s, duvara t = 1 s''de varır; y = 12 · 1 − 5 · 1 = 7 m ✓.', 3, 'Sunu, Bölüm 4, Örnek 5', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s06a', 'u4', 4, 'mcq', 'original', 'Liman ağzından 560 m açıkta bir gemi vardır. Liman ağzında deniz düzeyinde bulunan bir savunma topu 82 m/s ilk hızıyla gülleler atıyor. Gemiyi vurmak için gülleler yatayla hangi θ açısıyla atılmalıdır? (g = 9,8 m/s²)', '{"choices":["θ ≈ 27° ya da θ ≈ 63°","Yalnız θ ≈ 27°","θ ≈ 45°","θ ≈ 54° ya da θ ≈ 36°","Yalnız θ ≈ 63°"]}', '{"index":0}', 'Menzil R = v₀² sin 2θ / g''den sin 2θ bulunur. sin 2θ = k denkleminin 0°–90° arasında iki çözümü vardır: θ ve 90° − θ (tümler açılar aynı menzili verir). Not: sunu g''yi 10 yazmış, sayılar g = 9,8 ile çıkıyor.

---

**Menzil formülü:** 560 = 82² sin 2θ / 9,8.

---

**sin 2θ:** sin 2θ = 560 · 9,8 / 6724 ≈ 0,816.

---

**İlk açı:** 2θ = sin⁻¹(0,816) ≈ 54,7° → θ ≈ 27°.

---

**İkinci açı:** sin(180° − 54,7°) de 0,816''dır: 2θ ≈ 125,3° → θ ≈ 63°. İki açı tümler (27° + 63° = 90°).', 3, 'Sunu, Bölüm 4, Örnek 6 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s06b', 'u4', 4, 'mcq', 'original', 'Liman ağzında deniz düzeyinde bulunan bir savunma topu 82 m/s ilk hızıyla gülleler atıyor. Güllelerin maksimum menzili nedir? (g = 9,8 m/s²)', '{"choices":["≈ 686 m","≈ 343 m","≈ 672 m","≈ 560 m","≈ 1372 m"]}', '{"index":0}', 'Maksimum menzil θ = 45°''de, sin 90° = 1 iken elde edilir: R_max = v₀² / g.

---

**Açı:** θ = 45° → sin 2θ = 1.

---

**Menzil:** R_max = 82² / 9,8 = 6724 / 9,8 ≈ 686 m. (g = 10 alınsaydı 672 m çıkardı.)', 2, 'Sunu, Bölüm 4, Örnek 6 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s07', 'u4', 4, 'mcq', 'original', 'Bir uçak zor durumdaki bir kısım kaşife acil kumanya paketi atıyor. Uçak yerden 100 m yükseklikte 40 m/s hızla yatay olarak yol alıyor ise paket bırakıldığı noktaya göre nerede yere çarpar? (g = 10 m/s²)', '{"choices":["≈ 179 m ileride","≈ 89 m ileride","400 m ileride","100 m ileride","≈ 253 m ileride"]}', '{"index":0}', 'Paket bırakıldığı anda uçağın yatay hızını taşır, düşey ilk hızı sıfırdır. Düşme süresini yalnız yükseklik belirler; yatay mesafe bu süre ile yatay hızın çarpımıdır. Not: sunu t''yi 4,5 s''ye yuvarlayıp 181 m bulmuş; √20 ≈ 4,47 ile 179 m çıkar.

---

**İlk hız:** v₀ₓ = 40 m/s, v₀ᵧ = 0.

---

**Düşme süresi:** 0 = 100 − ½ · 10 · t² → t² = 20 → t = √20 ≈ 4,47 s.

---

**Yatay uzaklık:** x = 40 × 4,47 ≈ 179 m.', 2, 'Sunu, Bölüm 4, Örnek 7', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s08a', 'u4', 4, 'mcq', 'original', 'Bir motosikletli yerden 20 m yükseklikteki bir uçurumdan v₀ yatay hızıyla atlayıp 9 m genişliğindeki bir nehrin öte tarafına geçebilmek istiyor. (g = 10 m/s²)

[[G-S4-02]]

Motosikletin uçuş süresi ne kadardır ve ilk hızı ne olmalıdır ki nehri geçebilsin?', '{"choices":["t = 2 s; v₀ = 4,5 m/s","t = 4 s; v₀ = 2,25 m/s","t = 2 s; v₀ = 9 m/s","t = 1 s; v₀ = 9 m/s","t = 2 s; v₀ = 20 m/s"]}', '{"index":0}', 'Yatay atış eğik atışın θ = 0 hâlidir. Uçuş süresini düşey hareket (20 m düşüş) belirler; yatay hız bu sürede 9 m gitmeye yetmelidir.

---

**Denklemler:** Orijin uçurumun dibinde: x = v₀t, y = 20 − 5t².

---

**Süre:** 0 = 20 − 5t² → t = 2 s.

---

**İlk hız:** 9 = v₀ · 2 → v₀ = 4,5 m/s (en az).', 2, 'Sunu, Bölüm 4, Örnek 8 (a ve b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s08b', 'u4', 4, 'mcq', 'original', 'Bir motosikletli yerden 20 m yükseklikteki bir uçurumdan v₀ yatay hızıyla atlayıp 9 m genişliğindeki bir nehrin öte tarafına geçebilmek istiyor. (g = 10 m/s²)

[[G-S4-02]]

Motosiklet v₀ = 4,5 m/s ile atlarsa yere çarpmadan hemen önceki hızı ne olur?', '{"choices":["≈ 21 m/s","≈ 24,5 m/s","20 m/s","4,5 m/s","≈ 15,5 m/s"]}', '{"index":0}', 'Çarpma anındaki hız iki bileşenin vektörel toplamıdır; yatay bileşen değişmez, düşey bileşen −gt olur. Bileşenler toplanmaz, Pisagor uygulanır.

---

**Yatay bileşen:** v_x = 4,5 m/s.

---

**Düşey bileşen:** v_y = −10 · 2 = −20 m/s (aşağı).

---

**Büyüklük:** v = √(4,5² + 20²) = √(20,25 + 400) ≈ √420 ≈ 21 m/s.', 2, 'Sunu, Bölüm 4, Örnek 8 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s09a', 'u4', 4, 'mcq', 'original', 'Bir top 33 m yükseklikte bir binanın çatısından, yatayla 53° açı altında 5 m/s hızıyla atılıyor. Yerde, binanın kapısında beklemekte olan bir çocuk topla aynı anda ve aynı yönde, sabit a ivmesiyle koşmaya başlıyor. (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)

[[G-S4-03]]

Topun yere düşünceye kadar uçuş süresi ne olur?', '{"choices":["3 s","0,8 s","2,6 s","3,8 s","2,2 s"]}', '{"index":0}', 'Orijini çocuğun bulunduğu yerde (binanın dibinde) al. Topun düşey denklemi y = 33 + 4t − 5t²; yere düşmek y = 0 demektir.

---

**İlk hız bileşenleri:** v₀ₓ = 5 × 0,6 = 3 m/s; v₀ᵧ = 5 × 0,8 = 4 m/s.

---

**Denklem:** y = 33 + 4t − 5t² = 0 → 5t² − 4t − 33 = 0.

---

**Kökler:** t = [4 ± √(16 + 660)] / 10 = (4 ± 26) / 10 → t = 3 s ya da t = −2,2 s.

---

**Sonuç:** Negatif kök atılır, t = 3 s.', 3, 'Sunu, Bölüm 4, Örnek 9 (a ve b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s09b', 'u4', 4, 'mcq', 'original', 'Bir top 33 m yükseklikte bir binanın çatısından, yatayla 53° açı altında 5 m/s hızıyla atılıyor. Yerde, binanın kapısında beklemekte olan bir çocuk topla aynı anda ve aynı yönde, sabit a ivmesiyle koşmaya başlıyor. (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)

[[G-S4-03]]

Top binadan ne kadar uzağa düşer ve çocuğun ivmesi ne olmalıdır ki top yere düşmeden onu tutabilsin?', '{"choices":["x = 9 m; a = 2 m/s²","x = 15 m; a = 3,3 m/s²","x = 9 m; a = 6 m/s²","x = 9 m; a = 1 m/s²","x = 12 m; a = 2,7 m/s²"]}', '{"index":0}', 'Top ile çocuk aynı anda aynı x konumunda olmalı. Çocuğun hareketi durgun hâlden sabit ivmeli: x₂ = ½at².

---

**Topun yatay yolu:** x₁ = 3 · t = 3 · 3 = 9 m.

---

**Çocuğun denklemi:** x₂ = ½at².

---

**Eşitle (t = 3 s):** 9 = ½ · a · 9 → a = 2 m/s².', 3, 'Sunu, Bölüm 4, Örnek 9 (c ve d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s10', 'u4', 4, 'mcq', 'original', 'Bir taş, yüksekliği 45 m olan bir binanın tepesinden yatayla 30° açı yapacak şekilde 20 m/s''lik ilk hızla fırlatılıyor. Taş ne kadar sürede yere düşer ve yere hangi hızla çarpar? (g = 9,8 m/s²)

[[G-S4-04]]', '{"choices":["t ≈ 4,22 s; v ≈ 35,9 m/s","t ≈ 3,03 s; v ≈ 35,9 m/s","t ≈ 4,22 s; v ≈ 31,4 m/s","t ≈ 4,22 s; v ≈ 48,7 m/s","t ≈ 2,04 s; v = 20 m/s"]}', '{"index":0}', 'Orijini atış noktasına koy; yer y = −45 m''dedir. Düşey denklemden süre, sonra iki bileşenden çarpma hızı bulunur.

---

**Bileşenler:** v₀ₓ = 20 cos 30° ≈ 17,3 m/s; v₀ᵧ = 20 sin 30° = 10 m/s.

---

**Düşey denklem:** −45 = 10t − 4,9t² → 4,9t² − 10t − 45 = 0.

---

**Kök:** t = [10 + √(100 + 882)] / 9,8 = (10 + 31,3) / 9,8 ≈ 4,22 s.

---

**Düşey hız:** v_y = 10 − 9,8 × 4,22 ≈ −31,4 m/s.

---

**Çarpma hızı:** v = √(17,3² + 31,4²) ≈ √(299 + 986) ≈ 35,9 m/s.

---

**Enerjiyle kontrol:** v² = v₀² + 2gh = 400 + 882 = 1282 → v ≈ 35,8 m/s ✓ (yuvarlama farkı).', 3, 'Sunu, Bölüm 4, Örnek 10', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s11a', 'u4', 4, 'mcq', 'original', 'Bir binanın dış asansörü yerden 8 m yükseklikteyken sabit bir u hızıyla inmeye başlıyor. Aynı anda, binadan 6 m yatay uzaklıkta beklemekte olan bir çocuk, elindeki topu 20 m/s hızla ve 53° açıyla, asansöre doğru fırlatıyor. (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)

[[G-S4-05]]

Top duvara kaç saniye sonra ve hangi yükseklikte çarpar?', '{"choices":["t = 0,5 s; y = 6,75 m","t = 0,5 s; y = 8 m","t = 0,3 s; y = 4,35 m","t = 0,5 s; y = 1,25 m","t = 0,75 s; y = 9,2 m"]}', '{"index":0}', 'Topun yatay hızı sabittir; 6 m''yi ne kadar sürede aldığı çarpma anını verir. O anı düşey denkleme koy.

---

**Bileşenler:** v₀ₓ = 20 × 0,6 = 12 m/s; v₀ᵧ = 20 × 0,8 = 16 m/s.

---

**Denklemler (orijin top):** x₁ = 12t; y₁ = 16t − 5t².

---

**Çarpma anı:** 6 = 12t → t = 0,5 s.

---

**Yükseklik:** y₁ = 16 × 0,5 − 5 × 0,25 = 8 − 1,25 = 6,75 m.', 2, 'Sunu, Bölüm 4, Örnek 11 (b ve c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s11b', 'u4', 4, 'mcq', 'original', 'Bir binanın dış asansörü yerden 8 m yükseklikteyken sabit bir u hızıyla inmeye başlıyor. Aynı anda, binadan 6 m yatay uzaklıkta beklemekte olan bir çocuk, elindeki topu 20 m/s hızla ve 53° açıyla, asansöre doğru fırlatıyor. (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)

[[G-S4-05]]

Asansörün u hızı ne olmalıdır ki top asansöre çarpsın?', '{"choices":["2,5 m/s","1,25 m/s","6,75 m/s","16 m/s","3,5 m/s"]}', '{"index":0}', 'Asansör sabit hızla iner: y₂ = 8 − ut. Top asansöre çarpacaksa çarpma anında ikisinin yüksekliği aynı olmalı.

---

**Asansör:** y₂ = 8 − u t.

---

**Çarpma anı:** t = 0,5 s, topun yüksekliği 6,75 m (önceki parça).

---

**Eşitle:** 6,75 = 8 − u × 0,5 → 0,5u = 1,25 → u = 2,5 m/s.', 2, 'Sunu, Bölüm 4, Örnek 11 (d)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s12a', 'u4', 4, 'mcq', 'original', 'Durgun sudaki hızı 20 km/saat olan bir motor, genişliği 2 km olan bir nehri geçmeyi deniyor. Nehirde akıntı hızı 5 km/saat''tir.

[[G-S4-06]]

Kaptan tekneyi kıyıya dik olarak sürmek istediğinde, motorun yere göre hızı ve yönü ne olur?', '{"choices":["≈ 21 km/sa; dik doğrultudan akıntı yönüne ≈ 14°","25 km/sa; akıntı yönüne 14°","15 km/sa; dik doğrultudan akıntıya karşı ≈ 14°","≈ 19 km/sa; akıntı yönüne ≈ 15°","20 km/sa; tam karşıya"]}', '{"index":0}', 'Hız toplama: v_MO = v_MN + v_NO (motorun yere göre hızı = motorun nehre göre hızı + nehrin yere göre hızı). Tekne kıyıya dik tutulursa iki vektör birbirine diktir.

---

**Vektörler:** v_MN = 20 km/sa (karşıya), v_NO = 5 km/sa (akıntı yönünde), aralarında 90°.

---

**Büyüklük:** v_MO = √(20² + 5²) = √425 ≈ 21 km/sa.

---

**Yön:** tan θ = 5 / 20 = 0,25 → θ ≈ 14°. Tekne karşıya dik doğrultudan akıntı yönüne 14° sapar.', 2, 'Sunu, Bölüm 4, Örnek 12 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s12b', 'u4', 4, 'mcq', 'original', 'Durgun sudaki hızı 20 km/saat olan bir motor, genişliği 2 km olan bir nehri geçmeyi deniyor. Nehirde akıntı hızı 5 km/saat''tir.

[[G-S4-06]]

Kaptan bu kez nehri dikine geçmek istiyor. Teknenin burnunu hangi yönde tutmalıdır ki yerden gözlenen hızı kıyıya dik olsun? Bu durumda yere göre hızı ne olur?', '{"choices":["Akıntıya karşı ≈ 15°; ≈ 19 km/sa","Akıntı yönüne ≈ 15°; ≈ 19 km/sa","Akıntıya karşı ≈ 14°; ≈ 21 km/sa","Akıntıya karşı 45°; 15 km/sa","Tam karşıya; 20 km/sa"]}', '{"index":0}', 'Bu kez toplam v_MO kıyıya dik olmalı. v_MN hipotenüs olur; akıntıyı dengelemek için burun akıntıya karşı çevrilir.

---

**Üçgen:** v_MN = 20 (hipotenüs), v_NO = 5, v_MO kıyıya dik.

---

**Açı:** sin θ = v_NO / v_MN = 5 / 20 = 0,25 → θ ≈ 15° (akıntıya karşı).

---

**Hız:** v_MO = √(20² − 5²) = √375 ≈ 19 km/sa.', 3, 'Sunu, Bölüm 4, Örnek 12 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s12c', 'u4', 4, 'mcq', 'original', 'Durgun sudaki hızı 20 km/saat olan bir motor, genişliği 2 km olan bir nehri geçmeyi deniyor. Nehirde akıntı hızı 5 km/saat''tir.

[[G-S4-06]]

Her iki durumda karşıya geçiş sürelerini hesaplayın.', '{"choices":["t_a = 6 dk; t_b ≈ 6,2 dk","t_a ≈ 5,7 dk; t_b = 6 dk","t_a = 6 dk; t_b = 6 dk","t_a ≈ 6,2 dk; t_b = 6 dk","t_a = 8 dk; t_b ≈ 6,2 dk"]}', '{"index":0}', 'Karşıya geçiş süresini yalnız kıyıya dik hız bileşeni belirler. Not: sunu t_b''yi 0,11 sa = 6,5 dk''ya yuvarlamış; 2 / 19,4 ≈ 0,103 sa ≈ 6,2 dk.

---

**(a) durumu:** Kıyıya dik bileşen v_MN = 20 km/sa. t_a = 2 / 20 = 0,10 sa = 6 dk. (Sunudaki gibi çapraz yol L / cos 14° bölü 21 km/sa da aynı sonucu verir.)

---

**(b) durumu:** Kıyıya dik hız v_MO = √375 ≈ 19,4 km/sa. t_b = 2 / 19,4 ≈ 0,103 sa ≈ 6,2 dk.

---

**Yorum:** En kısa sürede geçmek için burun kıyıya dik tutulur; en kısa yoldan geçmek için akıntıya karşı çevrilir ve biraz daha uzun sürer.', 3, 'Sunu, Bölüm 4, Örnek 12 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-s13', 'u4', 4, 'mcq', 'original', 'Bir bot, doğuya doğru (yere göre) sabit 5 km/saat hızla akan bir nehir üzerinde nehire göre 10 km/saat hızla kuzeye doğru hareket etmektedir. Botun hızını kenardaki bank üzerinde bulunan gözlemciye göre hesaplayınız.

[[G-S4-07]]', '{"choices":["≈ 11,2 km/sa; kuzeyden doğuya ≈ 26,6°","15 km/sa; kuzeyden doğuya ≈ 26,6°","≈ 11,2 km/sa; kuzeyden doğuya ≈ 63,4°","5 km/sa; kuzeye","≈ 8,7 km/sa; kuzeyden batıya ≈ 30°"]}', '{"index":0}', 'v_bE = v_br + v_rE: botun yere göre hızı, botun nehre göre hızı ile nehrin yere göre hızının vektör toplamıdır. İki vektör dik olduğu için Pisagor kullanılır.

---

**Vektörler:** v_br = 10 km/sa kuzey, v_rE = 5 km/sa doğu.

---

**Büyüklük:** v_bE = √(10² + 5²) = √125 ≈ 11,2 km/sa.

---

**Yön:** θ = tan⁻¹(5 / 10) ≈ 26,6°, kuzeyden doğuya doğru.', 2, 'Sunu, Bölüm 4, Örnek 13', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t01', 'u4', 4, 'mcq', 'derived', 'Bir parçacığın konum vektörü r = 2t² î + 3t ĵ m ile veriliyor. t = 2 s''de hızının büyüklüğü nedir?', '{"choices":["≈ 8,5 m/s","11 m/s","≈ 8,9 m/s","≈ 10 m/s","≈ 7 m/s"]}', '{"index":0}', 'Hız vektörü konumun türevidir; her bileşen ayrı türevlenir. Büyüklük Pisagor''la bulunur.

---

**Türev:** v = 4t î + 3 ĵ.

---

**t = 2 s:** v = 8î + 3ĵ m/s.

---

**Büyüklük:** |v| = √(64 + 9) = √73 ≈ 8,5 m/s.

---

**Tuzak:** 8 + 3 = 11, bileşenleri doğrudan toplamak; vektör büyüklüğü öyle bulunmaz.', 2, '4. bölüm, Düzlemde konum, hız ve ivme vektörleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t02', 'u4', 4, 'mcq', 'derived', 'Bir cisim v₀ = 5î m/s hızla harekete başlıyor ve sabit a = 2ĵ m/s² ivmesiyle hareket ediyor. t = 3 s''de hızının büyüklüğü nedir?', '{"choices":["≈ 7,8 m/s","11 m/s","6 m/s","5 m/s","≈ 9,4 m/s"]}', '{"index":0}', 'Sabit ivmede v = v₀ + at vektörel olarak geçerlidir. İvme yalnız y yönünde olduğundan v_x değişmez.

---

**Hız:** v = 5î + 2 · 3 ĵ = 5î + 6ĵ m/s.

---

**Büyüklük:** √(25 + 36) = √61 ≈ 7,8 m/s.', 2, '4. bölüm, Düzlemde konum, hız ve ivme vektörleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t03', 'u4', 4, 'tf', 'derived', 'İki boyutlu sabit ivmeli harekette x ve y yönündeki hareketler birbirinden bağımsız olarak incelenebilir; ortak olan yalnızca zamandır.', '{}', '{"value":true}', 'Bileşenlere ayırınca x ve y için ayrı birer bir boyutlu hareket denklemi yazılır. Eğik atışta da yatay hareket düzgün, düşey hareket sabit ivmelidir; ikisini bağlayan t''dir.', 2, '4. bölüm, Düzlemde konum, hız ve ivme vektörleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t04', 'u4', 4, 'mcq', 'derived', 'Yatay zeminden yatayla 30° açıyla 20 m/s hızla atılan bir topun maksimum yüksekliği ve menzili nedir? (g = 10 m/s², √3 ≈ 1,73)', '{"choices":["h = 5 m; R ≈ 34,6 m","h = 10 m; R ≈ 34,6 m","h = 5 m; R = 40 m","h = 15 m; R = 20 m","h = 5 m; R ≈ 17,3 m"]}', '{"index":0}', 'h = v₀ᵧ² / 2g ve R = v₀² sin 2θ / g. Önce ilk hız bileşenlerini bulmak hata riskini azaltır.

---

**Bileşenler:** v₀ₓ = 20 cos 30° ≈ 17,3 m/s; v₀ᵧ = 20 sin 30° = 10 m/s.

---

**Yükseklik:** h = 10² / 20 = 5 m.

---

**Uçuş süresi:** 2 × (10 / 10) = 2 s.

---

**Menzil:** R = 17,3 × 2 ≈ 34,6 m. (Formül: 400 × sin 60° / 10 ≈ 34,6 m.)', 2, '4. bölüm, Eğik atış: maksimum yükseklik ve menzil', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t05', 'u4', 4, 'mcq', 'derived', 'Yatay zeminden yatayla 53° açıyla 40 m/s hızla atılan bir cismin uçuş süresi, maksimum yüksekliği ve menzili nedir? (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)', '{"choices":["t = 6,4 s; h = 51,2 m; R = 153,6 m","t = 3,2 s; h = 51,2 m; R = 76,8 m","t = 6,4 s; h = 28,8 m; R = 153,6 m","t = 4,8 s; h = 28,8 m; R = 115,2 m","t = 6,4 s; h = 102,4 m; R = 153,6 m"]}', '{"index":0}', 'Tepe süresi v₀ᵧ / g, uçuş süresi onun iki katı. Yükseklik v₀ᵧ² / 2g, menzil v₀ₓ × uçuş süresi.

---

**Bileşenler:** v₀ₓ = 40 × 0,6 = 24 m/s; v₀ᵧ = 40 × 0,8 = 32 m/s.

---

**Tepe süresi:** 32 / 10 = 3,2 s → uçuş süresi 6,4 s.

---

**Yükseklik:** 32² / 20 = 1024 / 20 = 51,2 m.

---

**Menzil:** 24 × 6,4 = 153,6 m.', 2, '4. bölüm, Eğik atış: maksimum yükseklik ve menzil', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t06', 'u4', 4, 'tf', 'derived', 'Yatay düzlemde aynı ilk hızla 30° ve 60° açılarla atılan iki cisim aynı uzaklığa düşer.', '{}', '{"value":true}', 'R = v₀² sin 2θ / g. sin 60° = sin 120° olduğu için tümler açılar (θ ve 90° − θ) aynı menzili verir. Büyük açıyla atılan daha yükseğe çıkar ve havada daha uzun kalır.', 2, '4. bölüm, Eğik atış: maksimum yükseklik ve menzil', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t07', 'u4', 4, 'mcq', 'derived', 'Eğik atılan bir cisim yörüngesinin tepe noktasındayken hızı ve ivmesi için hangisi doğrudur?', '{"choices":["Hız yatay ve sıfırdan farklı; ivme g, aşağı","Hız sıfır; ivme g, aşağı yönlü","Hız yatay ve sıfırdan farklı; ivme sıfır","Hız sıfır; ivme de sıfır","Hız düşey ve aşağı; ivme g, aşağı"]}', '{"index":0}', 'Tepe noktasında yalnız düşey hız bileşeni sıfırlanır; yatay bileşen v₀ cos θ hareket boyunca değişmez. İvme her noktada g''dir, aşağı yönlüdür.', 2, '4. bölüm, Eğik atış: maksimum yükseklik ve menzil', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t08', 'u4', 4, 'mcq', 'derived', 'Bir top 24 m ötedeki bir duvara yatayla 37° açıyla, 20 m/s hızla atılıyor. Top duvara yerden hangi h yüksekliğinde çarpar? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)

[[G-S4-08]]', '{"choices":["6,75 m","18 m","11,25 m","4,5 m","9 m"]}', '{"index":0}', 'Yatay hız sabit: duvara varış süresi 24 / v₀ₓ. Bu süreyi düşey konum denklemine koy.

---

**Bileşenler:** v₀ₓ = 20 × 0,8 = 16 m/s; v₀ᵧ = 20 × 0,6 = 12 m/s.

---

**Varış süresi:** t = 24 / 16 = 1,5 s.

---

**Yükseklik:** h = 12 × 1,5 − 5 × 1,5² = 18 − 11,25 = 6,75 m.

---

**Yorum:** Tepe 1,2 s''de olduğu için top duvara inerken çarpar.', 3, '4. bölüm, Eğik atış: maksimum yükseklik ve menzil', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t09', 'u4', 4, 'mcq', 'derived', '45 m yükseklikteki bir uçurumdan yatay olarak 10 m/s hızla atılan bir taş, uçurumun dibinden ne kadar uzağa düşer ve yere hangi hızla çarpar? (g = 10 m/s²)', '{"choices":["x = 30 m; v ≈ 31,6 m/s","x = 30 m; v = 40 m/s","x = 45 m; v ≈ 31,6 m/s","x = 30 m; v = 30 m/s","x = 90 m; v ≈ 31,6 m/s"]}', '{"index":0}', 'Düşey ilk hız sıfır; düşme süresini yükseklik belirler. Çarpma hızı yatay ve düşey bileşenlerin Pisagor toplamıdır.

---

**Süre:** 45 = 5t² → t = 3 s.

---

**Yatay uzaklık:** x = 10 × 3 = 30 m.

---

**Düşey hız:** v_y = 10 × 3 = 30 m/s (aşağı).

---

**Çarpma hızı:** v = √(10² + 30²) = √1000 ≈ 31,6 m/s.', 2, '4. bölüm, Yatay atış ve yüksekten atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t10', 'u4', 4, 'mcq', 'derived', 'Yerden 500 m yükseklikte 50 m/s hızla yatay uçan bir uçak bir paket bırakıyor. Paket yere düştüğünde uçak paketin neresindedir? (Hava direnci yok, g = 10 m/s²)', '{"choices":["Tam paketin üstünde","Paketin 500 m gerisinde","Paketin 500 m önünde","Paketin 50 m önünde","Paketin 250 m önünde"]}', '{"index":0}', 'Paket bırakıldığında uçağın yatay hızını taşır ve hava direnci olmadığı için yatayda uçakla aynı hızla gider. Bu yüzden düşerken hep uçağın altındadır.

---

**Düşme süresi:** 500 = 5t² → t = 10 s.

---

**Paketin yatay yolu:** 50 × 10 = 500 m.

---

**Uçağın yatay yolu:** 50 × 10 = 500 m. İkisi aynı: uçak paketin tam üstündedir.', 2, '4. bölüm, Yatay atış ve yüksekten atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t11', 'u4', 4, 'mcq', 'derived', 'Bir motosikletli 5 m yüksekliğindeki bir uçurumdan yatay olarak atlayıp 8 m genişliğindeki dereyi geçmek istiyor. Uçuş süresi ve gereken en küçük yatay hız nedir? (g = 10 m/s²)

[[G-S4-09]]', '{"choices":["t = 1 s; v₀ = 8 m/s","t = 2 s; v₀ = 4 m/s","t = 1 s; v₀ = 5 m/s","t = 0,5 s; v₀ = 16 m/s","t = 1 s; v₀ = 10 m/s"]}', '{"index":0}', 'Uçuş süresini yalnız düşüş yüksekliği belirler (yatay hızdan bağımsız). Yatay hız bu sürede 8 m almaya yetmeli.

---

**Süre:** 5 = 5t² → t = 1 s.

---

**Hız:** 8 = v₀ × 1 → v₀ = 8 m/s (en az).', 2, '4. bölüm, Yatay atış ve yüksekten atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t12', 'u4', 4, 'tf', 'derived', 'Aynı yükseklikten biri serbest bırakılan, öbürü yatay olarak atılan iki top yere aynı anda düşer.', '{}', '{"value":true}', 'İkisinin de düşey ilk hızı sıfırdır ve düşey ivmeleri g''dir. Yatay hız düşey hareketi etkilemez; düşme süresi t = √(2h/g) ikisi için aynıdır.', 2, '4. bölüm, Yatay atış ve yüksekten atış', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t13', 'u4', 4, 'mcq', 'derived', 'Yarıçapı 50 m olan dairesel bir pistte 20 m/s sabit süratle giden bir arabanın merkezcil ivmesi nedir?', '{"choices":["8 m/s²","0,4 m/s²","2,5 m/s²","1000 m/s²","4 m/s²"]}', '{"index":0}', 'Düzgün dairesel harekette sürat sabit olsa da hızın yönü sürekli değişir; bunu sağlayan merkezcil ivme a_r = v² / r''dir, merkeze yönelir.

---

**Formül:** a_r = v² / r.

---

**Hesap:** 20² / 50 = 400 / 50 = 8 m/s².', 2, '4. bölüm, Düzgün dairesel hareket ve merkezcil ivme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t14', 'u4', 4, 'mcq', 'derived', 'Bir cisim yarıçapı 2 m olan bir çemberde bir turu 4 s''de atıyor. Süratı ve merkezcil ivmesi yaklaşık nedir? (π ≈ 3,14)', '{"choices":["v ≈ 3,14 m/s; a ≈ 4,93 m/s²","v ≈ 3,14 m/s; a ≈ 1,57 m/s²","v ≈ 1,57 m/s; a ≈ 1,23 m/s²","v ≈ 6,28 m/s; a ≈ 19,7 m/s²","v = 0,5 m/s; a = 0,125 m/s²"]}', '{"index":0}', 'Bir turda alınan yol çemberin çevresi 2πr, süre periyot T. Sürat v = 2πr / T, merkezcil ivme v² / r.

---

**Sürat:** v = 2π · 2 / 4 = π ≈ 3,14 m/s.

---

**Merkezcil ivme:** a = π² / 2 ≈ 9,86 / 2 ≈ 4,93 m/s².', 2, '4. bölüm, Düzgün dairesel hareket ve merkezcil ivme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t15', 'u4', 4, 'tf', 'derived', 'Düzgün dairesel hareket yapan bir cismin sürati sabit olduğu için ivmesi sıfırdır.', '{}', '{"value":false}', 'İvme hız vektörünün değişimidir. Süratin büyüklüğü sabit kalsa da yön sürekli değiştiği için bir ivme vardır: merkeze doğru a_r = v² / r.', 2, '4. bölüm, Düzgün dairesel hareket ve merkezcil ivme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t16', 'u4', 4, 'mcq', 'derived', 'Dairesel bir yörüngede hızlanan bir cismin bir anda merkezcil ivmesi 3 m/s², teğetsel ivmesi 4 m/s²''dir. Toplam ivmenin büyüklüğü nedir?', '{"choices":["5 m/s²","7 m/s²","1 m/s²","12 m/s²","3,5 m/s²"]}', '{"index":0}', 'Teğetsel ivme hıza paralel, merkezcil ivme hıza diktir. Birbirine dik iki bileşen Pisagor''la toplanır.

---

**Bileşenler dik:** a = √(a_r² + a_t²).

---

**Hesap:** √(9 + 16) = 5 m/s².', 2, '4. bölüm, Düzgün dairesel hareket ve merkezcil ivme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t17', 'u4', 4, 'fill', 'derived', 'Düzgün dairesel harekette ivme her an çemberin ____ doğru yönelir.', '{"blanks":1}', '{"blanks":[["merkezine","merkeze","merkez"]]}', '**Merkezcil** (radyal) ivme hız vektörüne diktir ve çemberin merkezine yönelir; büyüklüğü v² / r''dir.', 1, '4. bölüm, Düzgün dairesel hareket ve merkezcil ivme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t18', 'u4', 4, 'mcq', 'derived', '20 m/s hızla giden bir trenin içinde bir yolcu trenin gidiş yönünde trene göre 2 m/s hızla yürüyor. Yolcunun yere göre hızı nedir?', '{"choices":["22 m/s","18 m/s","20 m/s","2 m/s","40 m/s"]}', '{"index":0}', 'Bağıl hız toplama: v_yolcu,yer = v_yolcu,tren + v_tren,yer. Aynı doğrultuda ve yönde oldukları için doğrudan toplanır.

---

**Topla:** 2 + 20 = 22 m/s (trenin yönünde).

---

**Ters yönde yürüseydi:** 20 − 2 = 18 m/s olurdu.', 1, '4. bölüm, Bağıl hız', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t19', 'u4', 4, 'mcq', 'derived', 'Nehre göre 4 m/s hızla burnu kuzeye (karşı kıyıya) tutulan bir sandal, doğuya 3 m/s hızla akan bir nehirde ilerliyor. Sandalın yere göre hızı nedir? (tan 37° = 0,75)', '{"choices":["5 m/s; kuzeyden doğuya 37°","7 m/s; kuzeyden doğuya 37°","5 m/s; kuzeyden doğuya 53°","1 m/s; kuzeye","5 m/s; kuzeyden batıya 37°"]}', '{"index":0}', 'v_sandal,yer = v_sandal,nehir + v_nehir,yer. İki vektör dik olduğundan büyüklük Pisagor''la, yön tanjantla bulunur.

---

**Büyüklük:** √(4² + 3²) = 5 m/s.

---

**Yön:** tan θ = 3 / 4 = 0,75 → θ = 37°, kuzeyden doğuya (akıntı sandalı doğuya sürükler).', 2, '4. bölüm, Bağıl hız', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u4-t20', 'u4', 4, 'mcq', 'derived', 'Genişliği 100 m olan bir nehirde akıntı hızı 3 m/s''dir. Nehre göre 4 m/s hızı olan sandalın burnu karşı kıyıya dik tutuluyor. Sandal karşıya kaç saniyede geçer ve akıntı yönünde ne kadar sürüklenir?', '{"choices":["25 s; 75 m","20 s; 60 m","25 s; 100 m","33 s; 100 m","≈ 38 s; 113 m"]}', '{"index":0}', 'Karşıya geçiş süresini yalnız kıyıya dik hız (4 m/s) belirler. Akıntı bu sürede sandalı akıntı yönünde sürükler.

---

**Süre:** t = 100 / 4 = 25 s.

---

**Sürüklenme:** x = 3 × 25 = 75 m.

---

**Tuzak:** Yere göre hız 5 m/s ile 100 / 5 = 20 s hesaplamak; sandal 100 m değil, çapraz bir yol alır.', 3, '4. bölüm, Bağıl hız', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s01', 'u5', 5, 'mcq', 'original', '0,30 kg kütleli bir hokey diski yatay, sürtünmesiz bir buz zemini üzerinde kaymaktadır. Diske şekilde görüldüğü gibi iki kuvvet etki eder. F₁ kuvvetinin büyüklüğü 5 N, F₂ kuvvetinin büyüklüğü ise 8 N''dur. Diskin ivmesinin büyüklüğünü ve yönünü bulunuz. (cos 20° = 0,94; sin 20° = 0,34; cos 60° = 0,5; sin 60° = 0,87)

[[G-S5-01]]', '{"choices":["|a| ≈ 34 m/s²; θ ≈ 30°","|a| ≈ 43 m/s²; θ ≈ 30°","|a| ≈ 34 m/s²; θ ≈ 60°","|a| ≈ 10 m/s²; θ ≈ 30°","|a| ≈ 34 m/s²; θ ≈ −20°"]}', '{"index":0}', 'Newton''un ikinci yasası her eksende ayrı yazılır: ΣF_x = m a_x, ΣF_y = m a_y. Kuvvetlerin büyüklükleri toplanmaz; bileşenleri toplanır.

---

**x bileşenleri:** ΣF_x = 5 cos(−20°) + 8 cos 60° = 5 × 0,94 + 8 × 0,5 = 4,7 + 4 = 8,7 N.

---

**y bileşenleri:** ΣF_y = 5 sin(−20°) + 8 sin 60° = −1,7 + 7,0 = 5,2 N. (F₁ x ekseninin altında, y bileşeni eksi.)

---

**İvme bileşenleri:** a_x = 8,7 / 0,3 = 29 m/s²; a_y = 5,2 / 0,3 ≈ 17 m/s² → a = 29î + 17ĵ m/s².

---

**Büyüklük:** |a| = √(29² + 17²) = √(841 + 289) ≈ 34 m/s².

---

**Yön:** θ = tan⁻¹(17 / 29) ≈ 30° (+x ekseninden yukarı).', 2, 'Sunu, Bölüm 5, Örnek 1', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s02', 'u5', 5, 'mcq', 'original', 'Bir trafik lambası şekilde görüldüğü gibi kablolarla bir desteğe asılmıştır. Üst taraftaki kablolar yatayla 37° ve 53°''lik açılar yapmaktadır ve lambanın ağırlığı 50 N dur. Her üç kablodaki gerilmeyi bulunuz. (cos 53° = 0,6; sin 53° = 0,8; cos 37° = 0,8; sin 37° = 0,6)

[[G-S5-02]]', '{"choices":["T₁ = 30 N; T₂ = 40 N; T₃ = 50 N","T₁ = 40 N; T₂ = 30 N; T₃ = 50 N","T₁ = 25 N; T₂ = 25 N; T₃ = 50 N","T₁ = 30 N; T₂ = 40 N; T₃ = 70 N","T₁ = 37,5 N; T₂ = 50 N; T₃ = 50 N"]}', '{"index":0}', 'Lamba ve düğüm noktası dengededir: ΣF_x = 0 ve ΣF_y = 0. Önce lambadan T₃ = W, sonra düğümde iki denklem iki bilinmeyenle çözülür. Not: sunu soruda ağırlığı 5 N yazmış ama çözümde 50 N kullanmış; sonuçlar 50 N''a aittir.

---

**Lamba:** T₃ − W = 0 → T₃ = 50 N.

---

**Düğümde x:** −T₁ cos 37° + T₂ cos 53° = 0 → 0,8 T₁ = 0,6 T₂ → T₂ = (4/3) T₁.

---

**Düğümde y:** T₁ sin 37° + T₂ sin 53° − 50 = 0 → 0,6 T₁ + 0,8 · (4/3) T₁ = 50.

---

**Çöz:** 0,6 T₁ + 1,067 T₁ = 50 → (5/3) T₁ = 50 → T₁ = 30 N; T₂ = 40 N.

---

**Kontrol:** Daha dik kablo (53°) yükün daha büyük kısmını taşır: T₂ > T₁ ✓.', 2, 'Sunu, Bölüm 5, Örnek 2', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s03a', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz eğik düzlem: Şekilde görülen sürtünmesiz, θ eğim açılı bir eğik düzlem üzerine m kütleli bir sandık konulmuştur.

[[G-S5-03]]

Sandık serbest bırakılınca sahip olacağı ivmeyi ve normal kuvveti bulunuz.', '{"choices":["a = g sin θ; n = mg cos θ","a = g cos θ; n = mg sin θ","a = g; n = mg","a = g sin θ; n = mg","a = g tan θ; n = mg cos θ"]}', '{"index":0}', 'x eksenini eğik düzlem boyunca, y eksenini düzleme dik al. Ağırlık bu eksenlerde mg sin θ (düzlem boyunca) ve mg cos θ (düzleme dik) bileşenlerine ayrılır.

---

**Bileşenler:** Düzlem boyunca mg sin θ, düzleme dik mg cos θ.

---

**y ekseni (hareket yok):** ΣF_y = n − mg cos θ = 0 → n = mg cos θ.

---

**x ekseni:** ΣF_x = mg sin θ = m a_x → a_x = g sin θ.

---

**Yorum:** İvme kütleden bağımsızdır; θ = 90°''de g''ye (serbest düşme), θ = 0''da sıfıra gider.', 1, 'Sunu, Bölüm 5, Örnek 3 (A)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s03b', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz eğik düzlem: Şekilde görülen sürtünmesiz, θ eğim açılı bir eğik düzlem üzerine m kütleli bir sandık konulmuştur.

[[G-S5-03]]

Sandığın eğik düzlemin tepesinden serbest bırakıldığını varsayalım. Tepeden itibaren alt uca kadar olan uzaklık d olsun. Bloğun alt uca varması için geçen zaman nedir ve tam alt uçta sandığın hızı ne olacaktır?', '{"choices":["t = √(2d / (g sin θ)); v = √(2gd sin θ)","t = √(2d / g); v = √(2gd)","t = √(d / (g sin θ)); v = √(gd sin θ)","t = √(2d / (g cos θ)); v = √(2gd cos θ)","t = 2d / (g sin θ); v = 2gd sin θ"]}', '{"index":0}', 'İvme sabit (g sin θ) ve ilk hız sıfır olduğundan bir boyutlu sabit ivmeli hareket denklemleri düzlem boyunca uygulanır.

---

**Konum:** d = ½ a t² ve a = g sin θ → t = √(2d / (g sin θ)).

---

**Hız:** v² = 0 + 2ad → v = √(2gd sin θ).

---

**Kontrol:** d sin θ eğik düzlemin yüksekliği h''dir; v = √(2gh), yani aynı yükseklikten serbest düşen cismin hızıyla aynı.', 2, 'Sunu, Bölüm 5, Örnek 3 (B)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s04a', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz yatay bir düzlem üzerinde durmakta olan m = 3 kg kütleli bir cisme, yatayla 37° açı yapan F = 12 N luk bir kuvvet uygulanıyor. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)

[[G-S5-04]]

Cismin ivmesi ne kadardır?', '{"choices":["3,2 m/s²","4 m/s²","2,4 m/s²","1,6 m/s²","7,6 m/s²"]}', '{"index":0}', 'Cisim yalnız yatayda hareket edebilir; ivmeyi kuvvetin yatay bileşeni F cos 37° verir.

---

**Yatay bileşen:** F cos 37° = 12 × 0,8 = 9,6 N.

---

**İkinci yasa:** 9,6 = 3a → a = 3,2 m/s².

---

**Tuzak:** 12 / 3 = 4 m/s², kuvvetin tamamının yatay olduğunu varsayar.', 2, 'Sunu, Bölüm 5, Örnek 4 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s04b', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz yatay bir düzlem üzerinde durmakta olan m = 3 kg kütleli bir cisme, yatayla 37° açı yapan F = 12 N luk bir kuvvet uygulanıyor. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)

[[G-S5-04]]

Masanın normal tepki kuvveti ne kadar olur?', '{"choices":["22,8 N","30 N","37,2 N","20,4 N","7,2 N"]}', '{"index":0}', 'Düşeyde hareket yok: ΣF_y = 0. F''nin düşey bileşeni cismi yukarı çektiği için normal kuvvet mg''den küçük çıkar.

---

**Düşey bileşen:** F sin 37° = 12 × 0,6 = 7,2 N (yukarı).

---

**Denge:** N + F sin 37° − mg = 0 → N + 7,2 − 30 = 0.

---

**Sonuç:** N = 22,8 N. Normal kuvvet her zaman mg''ye eşit değildir.', 2, 'Sunu, Bölüm 5, Örnek 4 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s05', 'u5', 5, 'mcq', 'original', 'Kütlesi m olan bir blok 4 m/s hızla sürtünmeli yatay bir düzleme paralel fırlatılıyor. Blok ne kadar gittikten sonra durur? (μ = 0,25; g = 10 m/s²)', '{"choices":["3,2 m","1,6 m","6,4 m","0,8 m","16 m"]}', '{"index":0}', 'Yatayda tek kuvvet sürtünmedir: −μmg = ma → a = −μg. Kütle sadeleşir, bu yüzden m verilmeden çözülür. Sonra zamansız hız denklemi.

---

**Normal kuvvet:** ΣF_y = 0 → N = mg.

---

**İvme:** −μmg = ma → a = −μg = −0,25 × 10 = −2,5 m/s².

---

**Yol:** 0 = 4² + 2(−2,5)x → x = 16 / 5 = 3,2 m.', 2, 'Sunu, Bölüm 5, Örnek 5', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s06a', 'u5', 5, 'mcq', 'original', 'm = 3 kg kütleli bir cisim yatay bir düzlem üzerindedir. Cisimle düzlem arasındaki statik ve kinetik sürtünme katsayıları eşit olup μ = 0,5 değerindedir. (g = 10 m/s²) Bu cisme yatay F₁ = 12 N kuvveti uygulanıyor. Sürtünme kuvveti ne kadardır?', '{"choices":["12 N","15 N","6 N","3 N","0"]}', '{"index":0}', 'Statik sürtünme kuvveti sabit değildir: en fazla μN''ye kadar çıkar ve uygulanan kuvveti tam karşılar. Önce maksimum değeri hesapla, uygulanan kuvvetle karşılaştır.

---

**Maksimum statik sürtünme:** f_max = μN = μmg = 0,5 × 3 × 10 = 15 N.

---

**Karşılaştır:** F₁ = 12 N < 15 N, cisim harekete geçmez.

---

**Sürtünme:** Cisim durduğu için net kuvvet sıfır: f = F₁ = 12 N. (15 N değil; 15 N yalnız sınır değer.)', 2, 'Sunu, Bölüm 5, Örnek 6 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s06b', 'u5', 5, 'mcq', 'original', 'm = 3 kg kütleli bir cisim yatay bir düzlem üzerindedir. Cisimle düzlem arasındaki statik ve kinetik sürtünme katsayıları eşit olup μ = 0,5 değerindedir. (g = 10 m/s²) Bu kez yatay F₂ = 18 N luk bir kuvvet uygulanıyor. Cismin ivmesi ne kadar olur?', '{"choices":["1 m/s²","6 m/s²","2 m/s²","0","11 m/s²"]}', '{"index":0}', 'F₂ maksimum statik sürtünmeyi aştığı için cisim kayar; kayma sırasında sürtünme kinetik sürtünmedir, μ_k N.

---

**Hareket var mı:** 18 N > f_max = 15 N, cisim hareket eder.

---

**Sürtünme:** f = μ_k N = 15 N (μ_s = μ_k).

---

**İkinci yasa:** 18 − 15 = 3a → a = 1 m/s².', 2, 'Sunu, Bölüm 5, Örnek 6 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s07', 'u5', 5, 'mcq', 'original', 'm = 3 kg kütleli bir cisim yatay bir düzlem üzerindedir. Cisimle düzlem arasındaki statik ve kinetik sürtünme katsayıları eşit olup μ = 0,3 değerindedir. Bu cisme yatayın altında 37° açı yapan F = 20 N kuvveti uygulanıyor. Normal tepki kuvvetini ve cismin ivmesini hesaplayın. (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)

[[G-S5-05]]', '{"choices":["N = 42 N; a ≈ 1,1 m/s²","N = 30 N; a ≈ 2,3 m/s²","N = 18 N; a ≈ 3,5 m/s²","N = 42 N; a ≈ 5,3 m/s²","N = 42 N; a = 0"]}', '{"index":0}', 'Aşağı doğru iten kuvvetin düşey bileşeni cismi zemine bastırır, normal kuvvet ve dolayısıyla sürtünme artar. Önce cismin kayıp kaymadığını kontrol et.

---

**Düşey:** N − F sin 37° − mg = 0 → N = 30 + 20 × 0,6 = 42 N.

---

**Maksimum sürtünme:** f = μN = 0,3 × 42 = 12,6 N.

---

**Hareket var mı:** F cos 37° = 20 × 0,8 = 16 N > 12,6 N, cisim hareket eder.

---

**İvme:** 16 − 12,6 = 3a → a = 3,4 / 3 ≈ 1,1 m/s².', 3, 'Sunu, Bölüm 5, Örnek 7', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s08', 'u5', 5, 'mcq', 'original', '37° eğimli bir düzlem üzerine m = 5 kg kütlesi konulmuştur. Eğik düzlemle cisim arasındaki statik ve kinetik sürtünme katsayıları eşit olup μ = 0,2 değerindedir. Sürtünme kuvveti ne kadardır? Buna göre cisim hareket eder mi? Ederse ivmesi ne kadar olur? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)

[[G-S5-06]]', '{"choices":["f = 8 N; hareket eder, a = 4,4 m/s²","f = 6 N; hareket eder, a = 4,8 m/s²","f = 30 N; hareket etmez","f = 8 N; hareket eder, a = 6 m/s²","f = 10 N; hareket eder, a = 4 m/s²"]}', '{"index":0}', 'Eğik düzlemde normal kuvvet mg cos θ''dır. Cismi aşağı çeken mg sin θ ile maksimum sürtünmeyi karşılaştır; aşıyorsa net kuvvet farkıdır.

---

**Normal kuvvet:** N = mg cos 37° = 50 × 0,8 = 40 N.

---

**Maksimum sürtünme:** f_max = 0,2 × 40 = 8 N (yukarı yönde, harekete ters).

---

**Aşağı çeken bileşen:** mg sin 37° = 50 × 0,6 = 30 N > 8 N, cisim kayar.

---

**İvme:** 30 − 8 = 5a → a = 4,4 m/s² (aşağı).', 2, 'Sunu, Bölüm 5, Örnek 8', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s09', 'u5', 5, 'mcq', 'original', 'm₁ kütleli bir blok şekilde görüldüğü gibi yatay pürüzlü bir masa üzerinde ağırlıksız bir iple sürtünmesiz bir makaradan geçirildikten sonra m₂ kütlesine bağlanmıştır. F büyüklüğünde bir kuvvet şekilde görüldüğü gibi m₁ kütlesine uygulanmıştır. m₁ ile yüzey arasındaki sürtünme katsayısı μ''dür. m₂ yukarı çıktığına göre ivme nedir?

[[G-S5-07]]', '{"choices":["a = [F(cos θ + μ sin θ) − g(m₂ + μm₁)] / (m₁ + m₂)","a = [F(cos θ − μ sin θ) − g(m₁ + μm₂)] / (m₁ + m₂)","a = [F(cos θ − μ sin θ) − g(m₂ + μm₁)] / (m₁ + m₂)","a = [F cos θ − g(m₂ + μm₁)] / (m₁ + m₂)","a = [F(cos θ + μ sin θ) − g(m₂ − μm₁)] / (m₁ − m₂)"]}', '{"index":0}', 'Her kütle için ikinci yasayı ayrı yaz. F''nin düşey bileşeni F sin θ m₁''i yukarı çektiği için normal kuvveti, dolayısıyla sürtünmeyi azaltır. Not: sununun son satırındaki formül [F(cos θ − μ sin θ) − g(m₁ + μm₂)] işaret ve kütle hatası içeriyor; adımlar doğrusunu türetir.

---

**m₁ düşey:** N + F sin θ − m₁g = 0 → N = m₁g − F sin θ; f = μ(m₁g − F sin θ).

---

**m₁ yatay:** F cos θ − f − T = m₁a.

---

**m₂ (yukarı çıkıyor):** T − m₂g = m₂a → T = m₂(g + a).

---

**Yerine koy:** F cos θ − μm₁g + μF sin θ − m₂g − m₂a = m₁a.

---

**Topla:** a = [F(cos θ + μ sin θ) − g(m₂ + μm₁)] / (m₁ + m₂); gerilme T = m₂(g + a).

---

**Kontrol:** μ = 0 ve θ = 0 iken a = (F − m₂g)/(m₁ + m₂): ip ve masa sürtünmesiz iken beklenen sonuç ✓.', 3, 'Sunu, Bölüm 5, Örnek 9', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s10', 'u5', 5, 'mcq', 'original', 'Donmuş bir havuzda bir hokey diskine vurulsun ve ona 20 m/s''lik bir hız kazandırılmış olsun. Disk, buz yüzeyi üzerinde durmadan önce 115 m kayarsa disk ile buz yüzeyi arasındaki kinetik sürtünme katsayısını bulunuz. (g = 9,8 m/s²)', '{"choices":["μ_k ≈ 0,177","μ_k ≈ 0,117","μ_k ≈ 0,35","μ_k ≈ 0,087","μ_k ≈ 1,74"]}', '{"index":0}', 'Tek yatay kuvvet kinetik sürtünme: a = −μ_k g. Zamansız hız denklemiyle μ_k bulunur. Not: sunu sonucu 0,117 yazmış; 400 / 2254 ≈ 0,177''dir.

---

**İvme:** −μ_k mg = ma → a = −μ_k g.

---

**Zamansız denklem:** 0 = v_i² + 2ax → 0 = 400 − 2μ_k g · 115.

---

**Çöz:** μ_k = 400 / (2 × 9,8 × 115) = 400 / 2254 ≈ 0,177.', 2, 'Sunu, Bölüm 5, Örnek 10', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s11', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz yatay bir düzlem üzerindeki m₁ = 1 kg ve m₂ = 2 kg kütleleri bir iple birbirlerine bağlanmışlardır. m₁ kütlesine yatay F = 5 N kuvveti uygulanıyor. Kütleleri ayrı ayrı ele alarak ivmeyi ve ipteki gerilmeyi bulun.

[[G-S5-08]]', '{"choices":["a ≈ 1,7 m/s²; T ≈ 3,3 N","a = 5 m/s²; T = 5 N","a ≈ 1,7 m/s²; T ≈ 1,7 N","a = 2,5 m/s²; T = 5 N","a ≈ 1,7 m/s²; T = 5 N"]}', '{"index":0}', 'İple bağlı cisimlerin ivmesi aynıdır. Sistemi bütün olarak ele almak ivmeyi verir (gerilme iç kuvvettir, sadeleşir); gerilmeyi bulmak için bir kütleyi ayrı incelemek gerekir.

---

**m₁:** F − T = m₁a → 5 − T = a.

---

**m₂:** T = m₂a → T = 2a.

---

**Topla:** 5 = 3a → a = 5/3 ≈ 1,7 m/s².

---

**Gerilme:** T = 2 × 5/3 = 10/3 ≈ 3,3 N.', 2, 'Sunu, Bölüm 5, Örnek 11', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s12', 'u5', 5, 'mcq', 'original', 'm = 1 kg lık kütle, sürtünme katsayısı μ = 0,3 ve eğim açısı 37° olan eğik bir düzlem üzerine konulmuştur. F = 20 N kuvveti cisme yatay doğrultuda etkiyor. Cisim hangi yönde gider ve ivmesi nedir? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)

[[G-S5-09]]', '{"choices":["Yukarı; a = 4 m/s²","Aşağı; a = 4 m/s²","Yukarı; a = 10 m/s²","Yukarı; a ≈ 7,6 m/s²","Hareket etmez"]}', '{"index":0}', 'Sürtünmenin yönü hareket yönüne bağlı olduğu için önce yönü bul: F cos θ (yukarı) ile mg sin θ (aşağı) karşılaştırılır. F''nin düzleme dik bileşeni normal kuvveti artırır.

---

**Yön:** mg sin 37° = 6 N, F cos 37° = 16 N. 16 > 6, cisim yukarı gitmek ister.

---

**Normal kuvvet:** N = mg cos 37° + F sin 37° = 8 + 12 = 20 N.

---

**Sürtünme:** f = μN = 0,3 × 20 = 6 N (aşağı yönde).

---

**İvme:** 16 − 6 − 6 = 1 × a → a = 4 m/s² (yukarı). Artı çıktığı için cisim gerçekten hareket eder.', 3, 'Sunu, Bölüm 5, Örnek 12', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s13a', 'u5', 5, 'mcq', 'original', 'Şekilde gösterilen ipin kütlesi sıfır, yüzeyler ve makara sürtünmesizdir. Masadaki blok 1 kg, hareketli makaraya asılı blok 2 kg''dır. (g = 10 m/s²)

[[G-S5-10]]

İvmeler arasındaki ilişki nedir? (a₁: masadaki bloğun, a₂: asılı bloğun ivmesi)', '{"choices":["a₁ = 2a₂","a₂ = 2a₁","a₁ = a₂","a₁ = 4a₂","a₁ = a₂ / 4"]}', '{"index":0}', 'İpin boyu sabittir. Hareketli makara iki ip parçası tarafından taşındığı için makara bir miktar inince iki parçanın her biri o kadar uzar.

---

**Geometri:** Makara (ve 2 kg) x kadar inerse makaranın iki yanındaki ip parçalarının her biri x kadar uzar; toplam 2x ip masadan çekilir.

---

**Yer değiştirmeler:** Masadaki blok 2x giderken asılı blok x iner.

---

**İvmeler:** Aynı oran ivmelere geçer: a₁ = 2a₂.', 2, 'Sunu, Bölüm 5, Örnek 13 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s13b', 'u5', 5, 'mcq', 'original', 'Şekilde gösterilen ipin kütlesi sıfır, yüzeyler ve makara sürtünmesizdir. Masadaki blok 1 kg, hareketli makaraya asılı blok 2 kg''dır. (g = 10 m/s²)

[[G-S5-10]]

İvmeleri ve ipteki gerilmeyi hesaplayın.', '{"choices":["a₁ ≈ 6,7 m/s²; a₂ ≈ 3,3 m/s²; T ≈ 6,7 N","a₁ = 20 m/s²; a₂ = 10 m/s²; T = 20 N","a₁ = 5 m/s²; a₂ = 2,5 m/s²; T = 5 N","a₁ ≈ 3,3 m/s²; a₂ ≈ 6,7 m/s²; T ≈ 3,3 N","a₁ = 10 m/s²; a₂ = 5 m/s²; T = 10 N"]}', '{"index":0}', 'Üç bilinmeyen (a₁, a₂, T) için iki hareket denklemi ve ivme ilişkisi yeterlidir. Asılı blok aşağı indiği için ağırlığı 2T''den büyük olmalı. Not: sununun sonucu (T = 20 N, a₁ = 20, a₂ = 10) bir işaret hatasından geliyor; T = 20 N olsaydı 2T = 40 N > 20 N ağırlık ve asılı blok yukarı çıkardı.

---

**Masadaki blok (1 kg):** T = m₁a₁ → T = a₁.

---

**Asılı blok (2 kg, aşağı pozitif):** m₂g − 2T = m₂a₂ → 20 − 2T = 2a₂.

---

**İlişkiyi koy:** T = a₁ = 2a₂ → 20 − 4a₂ = 2a₂ → a₂ = 20/6 = 10/3 ≈ 3,3 m/s².

---

**Kalanlar:** a₁ = 20/3 ≈ 6,7 m/s²; T = 20/3 ≈ 6,7 N.

---

**Kontrol:** 2T ≈ 13,3 N < 20 N, asılı blok gerçekten aşağı ivmelenir ✓.', 3, 'Sunu, Bölüm 5, Örnek 13 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s14', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz ve 30° eğimli bir eğik düzlem üzerindeki m₁ = 7 kg kütlesi makaradan geçen ipin bir ucuna bağlıdır. İpin diğer ucuna m₂ = 5 kg kütlesi asılmıştır. Hareket yönünü tayin edin; ivmeyi ve ipteki gerilme kuvvetini hesaplayın. (g = 10 m/s²)

[[G-S5-11]]', '{"choices":["m₂ aşağı iner; a = 1,25 m/s²; T ≈ 44 N","m₁ aşağı kayar; a = 1,25 m/s²; T ≈ 44 N","m₂ aşağı iner; a ≈ 4,2 m/s²; T = 50 N","m₂ aşağı iner; a = 1,25 m/s²; T = 35 N","Hareket etmez; T = 50 N"]}', '{"index":0}', 'Yönü bulmak için m₂''yi aşağı çeken m₂g ile m₁''i düzlem boyunca aşağı çeken m₁g sin 30° karşılaştırılır. Sonra her kütle için hareket yönünde ikinci yasa.

---

**Yön:** m₂g = 50 N; m₁g sin 30° = 70 × 0,5 = 35 N. 50 > 35, m₂ aşağı, m₁ yukarı gider.

---

**m₁:** T − 35 = 7a.

---

**m₂:** 50 − T = 5a.

---

**Topla:** 15 = 12a → a = 1,25 m/s².

---

**Gerilme:** T = 35 + 7 × 1,25 = 43,75 ≈ 44 N.', 2, 'Sunu, Bölüm 5, Örnek 14', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s15', 'u5', 5, 'mcq', 'original', 'Kütlesi 2 kg olan bir blok, bir duvara yatay yönde F = 30 N kuvvetiyle bastırılırken aşağı doğru kayabiliyor. Blok ile duvar arasında sürtünme katsayısı μ = 0,5 tir. Bloğun ivmesini bulun. (g = 10 m/s²)

[[G-S5-12]]', '{"choices":["2,5 m/s²","10 m/s²","5 m/s²","7,5 m/s²","0"]}', '{"index":0}', 'Normal kuvvet her zaman mg''ye eşit değildir; yüzeye dik kuvvetleri karşılar. Burada yüzeye dik tek kuvvet F''dir, bu yüzden N = F.

---

**Normal kuvvet:** N − F = 0 → N = 30 N.

---

**Sürtünme:** f = μN = 0,5 × 30 = 15 N (yukarı, harekete ters).

---

**İkinci yasa (aşağı pozitif):** mg − f = ma → 20 − 15 = 2a.

---

**Sonuç:** a = 2,5 m/s².', 2, 'Sunu, Bölüm 5, Örnek 15', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s16', 'u5', 5, 'mcq', 'original', 'Atwood aleti. Şekildeki iki eşit M = 10 kg kütleleri bir makaradan geçirilen ipin iki ucuna asılmışlardır. Makara sürtünmesiz ve ipin kütlesi önemsizdir. Kütlelerden biri üzerine ilave küçük bir m = 1 kg kütlesi konuluyor. İvmeyi ve ipteki gerilmeyi hesaplayın. (g = 10 m/s²)

[[G-S5-13]]', '{"choices":["a ≈ 0,5 m/s²; T ≈ 105 N","a = 1 m/s²; T = 110 N","a ≈ 0,5 m/s²; T = 100 N","a = 10 m/s²; T = 0","a ≈ 0,9 m/s²; T ≈ 109 N"]}', '{"index":0}', 'İp gerilmesi iki yanda eşit, ivmeler aynı büyüklükte. Ağır taraf (M + m) aşağı, hafif taraf M yukarı ivmelenir.

---

**(M + m) kütlesi:** (M + m)g − T = (M + m)a → 110 − T = 11a.

---

**M kütlesi:** T − Mg = Ma → T − 100 = 10a.

---

**Topla:** 10 = 21a → a = 10/21 ≈ 0,48 ≈ 0,5 m/s².

---

**Gerilme:** T = 100 + 10 × 0,476 ≈ 104,8 ≈ 105 N.

---

**Yorum:** Küçük bir m ile büyük M''ler kolayca ivmelendirilir; asansör ve füniküler karşı ağırlığı bu ilkeyle çalışır.', 2, 'Sunu, Bölüm 5, Örnek 16', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s17', 'u5', 5, 'mcq', 'original', '0,5 kg kütleli bir top, 1,5 m uzunluğunda kablonun ucuna bağlanmıştır. Top, yatay düzlemde dairesel yörüngede hızla döndürülüyor. Kablo 50 N''luk maksimum gerilmeye dayanabiliyorsa, kopmadan önce topun sahip olabileceği maksimum sürat nedir?', '{"choices":["≈ 12,2 m/s","≈ 8,7 m/s","150 m/s","≈ 5,5 m/s","≈ 17,3 m/s"]}', '{"index":0}', 'Yatay dairesel harekette merkezcil kuvveti ipteki gerilme sağlar: T = m v² / r. Gerilmenin üst sınırı hızın üst sınırını belirler.

---

**Merkezcil kuvvet:** T = m v² / r → v = √(rT / m).

---

**Yerine koy:** v_max = √(1,5 × 50 / 0,5) = √150.

---

**Sonuç:** v_max ≈ 12,2 m/s.', 2, 'Sunu, Bölüm 5, Örnek 17', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s18a', 'u5', 5, 'mcq', 'original', 'Kütlesi 1200 kg olan bir otomobil r = 200 m yarıçaplı yatay ve dairesel bir virajı 72 km/saat hızıyla dönmektedir. (g = 10 m/s²) Tekerlekler ile yol arasındaki sürtünme kuvveti ne kadardır?', '{"choices":["2400 N","31 104 N","120 N","12 000 N","4800 N"]}', '{"index":0}', 'Yatay virajda arabayı merkeze doğru çeken tek kuvvet tekerlek-yol sürtünmesidir: f = m v² / r. Önce hızı m/s''ye çevir.

---

**Birim:** 72 km/sa = 72 / 3,6 = 20 m/s.

---

**Merkezcil kuvvet:** f = 1200 × 20² / 200 = 1200 × 2 = 2400 N.

---

**Tuzak:** 72² ile hesaplamak 31 104 N verir; birim çevrilmemiştir.', 2, 'Sunu, Bölüm 5, Örnek 18 (a)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s18b', 'u5', 5, 'mcq', 'original', 'Kütlesi 1200 kg olan bir otomobil r = 200 m yarıçaplı yatay ve dairesel bir virajı 72 km/saat hızıyla dönmektedir. (g = 10 m/s²) Bu yoldaki sürtünme katsayısı μ = 0,8 ise, otomobilin kaymadan dönebileceği maksimum hız ne kadar olur?', '{"choices":["40 m/s (144 km/sa)","20 m/s (72 km/sa)","1600 m/s (5760 km/sa)","≈ 28 m/s (≈ 102 km/sa)","≈ 44,7 m/s (≈ 161 km/sa)"]}', '{"index":0}', 'Sürtünmenin sağlayabileceği en büyük merkezcil kuvvet μmg''dir: μmg = m v² / r → v = √(μgr). Kütle sadeleşir.

---

**Sınır:** μmg = m v² / r → v² = μgr.

---

**Hesap:** v² = 0,8 × 10 × 200 = 1600 → v = 40 m/s.

---

**km/sa:** 40 × 3,6 = 144 km/sa.', 2, 'Sunu, Bölüm 5, Örnek 18 (b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s19', 'u5', 5, 'mcq', 'original', 'Bir otomobil r = 100 m yarıçaplı ve yatayla 30° açı yapan sürtünmesiz bir virajı v hızıyla alıyor. Otomobil savrulmadan hangi hızla dönebilir? (g = 10 m/s²; tan 30° ≈ 0,58)

[[G-S5-14]]', '{"choices":["≈ 24 m/s (≈ 87 km/sa)","≈ 32 m/s (≈ 114 km/sa)","≈ 17 m/s (≈ 61 km/sa)","58 m/s (≈ 209 km/sa)","≈ 22 m/s (≈ 80 km/sa)"]}', '{"index":0}', 'Sürtünme yok; merkezcil kuvveti normal kuvvetin yatay bileşeni N sin θ sağlar. Düşey bileşen N cos θ ağırlığı dengeler.

---

**Yatay:** N sin θ = m v² / r.

---

**Düşey:** N cos θ = mg.

---

**Böl:** tan θ = v² / (gr) → v = √(gr tan θ).

---

**Hesap:** v = √(10 × 100 × 0,58) = √580 ≈ 24 m/s ≈ 87 km/sa.', 3, 'Sunu, Bölüm 5, Örnek 19', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s20', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz yatay bir düzlemde 80 cm uzunluktaki bir ipin ucunda sabit hızla dönen m = 200 g kütleli blok 3 dakikada 500 devir yapmaktadır. Bloğun merkezcil ivmesini ve ipteki gerilme kuvvetini hesaplayın.', '{"choices":["a_r ≈ 245 m/s²; T ≈ 49 N","a_r ≈ 17,5 m/s²; T ≈ 3,5 N","a_r ≈ 245 m/s²; T ≈ 49 000 N","a_r ≈ 196 m/s²; T ≈ 39 N","a_r ≈ 14 m/s²; T ≈ 2,8 N"]}', '{"index":0}', 'Önce sürat: bir devirde 2πr yol, toplam yol bölü toplam süre. Merkezcil ivme v² / r, gerilme m a_r. Birimleri SI''ya çevir (80 cm = 0,8 m, 200 g = 0,2 kg, 3 dk = 180 s).

---

**Sürat:** v = 500 × 2π × 0,8 / 180 ≈ 2513 / 180 ≈ 14 m/s.

---

**Merkezcil ivme:** a_r = 14² / 0,8 = 196 / 0,8 = 245 m/s².

---

**Gerilme:** T = m a_r = 0,2 × 245 = 49 N.

---

**Tuzak:** 200 g''yi 200 kg diye kullanmak 49 000 N verir.', 2, 'Sunu, Bölüm 5, Örnek 20', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s21a', 'u5', 5, 'mcq', 'original', 'Sallanan Top: 0,5 m uzunluğunda bir sicimin ucuna bağlanan bir top, şekildeki gibi, yerçekiminin etkisi altında düşey bir daire çevresinde salınmaktadır. Sicim, düşeyle θ = 20°''lik açı yaptığı zaman top 1,5 m/s''lik hıza sahiptir. (g = 9,8 m/s²; sin 20° ≈ 0,34)

[[G-S5-15]]

İvmenin bu andaki çapsal (a_r) bileşenini ve teğetsel ivmenin (a_t) büyüklüğünü bulunuz.', '{"choices":["a_r = 4,5 m/s²; a_t ≈ 3,4 m/s²","a_r = 3 m/s²; a_t ≈ 3,4 m/s²","a_r = 4,5 m/s²; a_t ≈ 9,2 m/s²","a_r ≈ 3,4 m/s²; a_t = 4,5 m/s²","a_r = 4,5 m/s²; a_t = 0"]}', '{"index":0}', 'Çapsal (merkezcil) ivme o anki hızdan bulunur: a_r = v² / r. Teğetsel ivmeyi ağırlığın yörüngeye teğet bileşeni mg sin θ sağlar: a_t = g sin θ.

---

**Çapsal:** a_r = 1,5² / 0,5 = 2,25 / 0,5 = 4,5 m/s² (ipe doğru, merkeze).

---

**Teğetsel:** a_t = g sin 20° = 9,8 × 0,34 ≈ 3,4 m/s².', 2, 'Sunu, Bölüm 5, Örnek 21 (a ve b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s21b', 'u5', 5, 'mcq', 'original', 'Sallanan Top: 0,5 m uzunluğunda bir sicimin ucuna bağlanan bir top, şekildeki gibi, yerçekiminin etkisi altında düşey bir daire çevresinde salınmaktadır. Sicim, düşeyle θ = 20°''lik açı yaptığı zaman top 1,5 m/s''lik hıza sahiptir. (g = 9,8 m/s²; sin 20° ≈ 0,34)

[[G-S5-15]]

θ = 20°''de toplam ivmenin (a) büyüklüğünü ve doğrultusunu (ip ile yaptığı açı) bulunuz. (a_r = 4,5 m/s², a_t = 3,4 m/s²)', '{"choices":["a ≈ 5,6 m/s²; ip ile ≈ 37°","a ≈ 7,9 m/s²; ip ile ≈ 37°","a ≈ 5,6 m/s²; ip ile ≈ 53°","a ≈ 1,1 m/s²; ip ile ≈ 20°","a = 9,8 m/s²; düşey"]}', '{"index":0}', 'Çapsal ve teğetsel bileşenler birbirine diktir: büyüklük Pisagor''la, ip (çapsal doğrultu) ile açı tan φ = a_t / a_r ile bulunur.

---

**Büyüklük:** a = √(4,5² + 3,4²) = √(20,25 + 11,56) ≈ √31,8 ≈ 5,6 m/s².

---

**Doğrultu:** φ = tan⁻¹(3,4 / 4,5) ≈ 37°, ip doğrultusundan.', 2, 'Sunu, Bölüm 5, Örnek 21 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s22', 'u5', 5, 'mcq', 'original', 'Şekildeki sistemler dengededir. Ölçü aleti Newton''a göre skalalandırılmıştır. Okunacak değerler neler olabilir? Makaralarda ve düzlemlerde sürtünmenin olmadığını kabul ediniz. (g = 10 m/s², bütün kütleler 5 kg)

[[G-S5-16]]', '{"choices":["(a) 50 N; (b) 100 N; (c) 25 N","(a) 100 N; (b) 100 N; (c) 50 N","(a) 50 N; (b) 50 N; (c) 25 N","(a) 0; (b) 100 N; (c) 25 N","(a) 50 N; (b) 100 N; (c) 43 N"]}', '{"index":0}', 'Dinamometre bağlı olduğu ipteki gerilmeyi okur. Bir ipin iki ucunda kütle varken gerilme toplam ağırlık değil, tek bir kütlenin ağırlığıdır.

---

**(a):** Her kütle için T − mg = 0 → T = 50 N. Dinamometre ipin içinde, 50 N okur (iki ucu da 50 N ile çekilir).

---

**(b):** İpteki gerilme yine T = 50 N. Makara iki ip parçasıyla aşağı çekilir; makarayı tutan dinamometre 2T = 100 N okur.

---

**(c):** Eğik düzlemde dengede: T − mg sin 30° = 0 → T = 50 × 0,5 = 25 N.', 2, 'Sunu, Bölüm 5, Örnek 22', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s23a', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz bir düzlem üzerindeki üç kütleye şekildeki gibi F = 18 N luk bir kuvvet m₁ kütlesi tarafından etkimektedir. m₁ = 2,00 kg, m₂ = 3,00 kg, m₃ = 4,00 kg olarak verilmektedir.

[[G-S5-17]]

Kütlelerin sahip olduğu ivmeyi ve her bloğa uygulanan bileşke kuvveti hesaplayınız.', '{"choices":["a = 2 m/s²; 4 N, 6 N, 8 N","a = 2 m/s²; 18 N, 14 N, 8 N","a = 6 m/s²; 12 N, 18 N, 24 N","a = 2 m/s²; 6 N, 6 N, 6 N","a = 9 m/s²; 18 N, 27 N, 36 N"]}', '{"index":0}', 'Bloklar birlikte hareket ettiği için ivmeleri aynıdır; sistemin ivmesi F / toplam kütle. Her bloğun bileşke kuvveti kendi kütlesi çarpı ivmedir. Not: sunu (b)''de 14 N ve 8 N vermiş; bunlar bloklar arası temas kuvvetleri, bileşke kuvvetler 4, 6 ve 8 N''dur.

---

**İvme:** a = F / (m₁ + m₂ + m₃) = 18 / 9 = 2 m/s².

---

**Bileşke kuvvetler:** F₁,net = 2 × 2 = 4 N; F₂,net = 3 × 2 = 6 N; F₃,net = 4 × 2 = 8 N.

---

**Kontrol:** 4 + 6 + 8 = 18 N, dış kuvvete eşit ✓.', 2, 'Sunu, Bölüm 5, Örnek 23 (a ve b)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-s23b', 'u5', 5, 'mcq', 'original', 'Sürtünmesiz bir düzlem üzerindeki üç kütleye şekildeki gibi F = 18 N luk bir kuvvet m₁ kütlesi tarafından etkimektedir. m₁ = 2,00 kg, m₂ = 3,00 kg, m₃ = 4,00 kg olarak verilmektedir.

[[G-S5-17]]

Bloklar arası kontak kuvvetlerini hesaplayınız.', '{"choices":["P₁₂ = 14 N; P₂₃ = 8 N","P₁₂ = 6 N; P₂₃ = 8 N","P₁₂ = 18 N; P₂₃ = 18 N","P₁₂ = 4 N; P₂₃ = 6 N","P₁₂ = 16 N; P₂₃ = 10 N"]}', '{"index":0}', 'm₁''in m₂''ye uyguladığı kuvvet m₂ ile m₃''ü birlikte ivmelendirir; m₂''nin m₃''e uyguladığı kuvvet yalnız m₃''ü ivmelendirir. Üçüncü yasaya göre P₁₂ = −P₂₁.

---

**P₁₂:** (m₂ + m₃) a = (3 + 4) × 2 = 14 N.

---

**P₂₃:** m₃ a = 4 × 2 = 8 N.

---

**Kontrol (m₁):** F − P₂₁ = m₁a → 18 − 14 = 4 = 2 × 2 ✓.', 2, 'Sunu, Bölüm 5, Örnek 23 (c)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t01', 'u5', 5, 'tf', 'derived', 'Bir astronotun kütlesi Ay''da Dünya''dakinden küçüktür.', '{}', '{"value":false}', 'Kütle cismin eylemsizlik ölçüsüdür, konuma bağlı değildir. Ay''da değişen ağırlıktır (W = mg ve Ay''da g daha küçük).', 1, '5. bölüm, Kuvvet, kütle ve ağırlık', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t02', 'u5', 5, 'mcq', 'derived', 'Kütlesi 60 kg olan bir astronotun Ay''daki ağırlığı nedir? (g_Ay ≈ 1,6 m/s²)', '{"choices":["96 N","600 N","60 N","37,5 N","9,6 N"]}', '{"index":0}', 'Ağırlık W = mg; g bulunduğun yere bağlıdır.

---

**Formül:** W = m g_Ay.

---

**Hesap:** 60 × 1,6 = 96 N. (Dünya''da 600 N olurdu.)', 2, '5. bölüm, Kuvvet, kütle ve ağırlık', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t03', 'u5', 5, 'mcq', 'derived', 'Aynı F kuvveti m₁ kütlesine 6 m/s², m₂ kütlesine 2 m/s² ivme kazandırıyor. m₁ / m₂ oranı nedir?', '{"choices":["1/3","3","1/2","2","1/6"]}', '{"index":0}', 'Aynı kuvvet için ivme kütleyle ters orantılıdır: m₁a₁ = m₂a₂ → m₁ / m₂ = a₂ / a₁.

---

**Eşitle:** F = m₁ × 6 = m₂ × 2.

---

**Oran:** m₁ / m₂ = 2 / 6 = 1/3. Daha çok ivmelenen cisim daha hafiftir.', 2, '5. bölüm, Kuvvet, kütle ve ağırlık', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t04', 'u5', 5, 'fill', 'derived', 'Bir cismin hız değişimine karşı gösterdiği direnç ____ olarak adlandırılır; bu direncin ölçüsü kütledir.', '{"blanks":1}', '{"blanks":[["eylemsizlik","eylemsizlik (atalet)","atalet"]]}', '**Eylemsizlik** (atalet): cisim hızını korumak ister. Kütlesi büyük olanı ivmelendirmek zordur; uzayda 1 tonluk kayayı tutabilirsin ama tekmeleyip hızlandırmaya çalışırsan ayağını kırabilirsin.', 1, '5. bölüm, Kuvvet, kütle ve ağırlık', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t05', 'u5', 5, 'mcq', 'derived', '5 kg kütleli bir cisme sürtünmesiz yatay düzlemde 20 N yatay net kuvvet uygulanıyor. Cismin ivmesi nedir?', '{"choices":["4 m/s²","100 m/s²","0,25 m/s²","25 m/s²","15 m/s²"]}', '{"index":0}', 'Newton''un ikinci yasası: ΣF = ma → a = ΣF / m.

---

**Hesap:** a = 20 / 5 = 4 m/s².', 1, '5. bölüm, Newton''un üç yasası', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t06', 'u5', 5, 'tf', 'derived', 'Etki ve tepki kuvvetleri eşit büyüklükte ve zıt yönlü oldukları için aynı cisme etki ederek birbirini dengeler.', '{}', '{"value":false}', 'Üçüncü yasadaki etki-tepki çifti **farklı cisimlere** etki eder (P₁₂ m₂''ye, P₂₁ m₁''e). Bu yüzden birbirini dengeleyemezler. Masadaki kitapta ağırlık ve normal kuvvet birbirini dengeler ama bunlar etki-tepki çifti değildir.', 2, '5. bölüm, Newton''un üç yasası', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t07', 'u5', 5, 'mcq', 'derived', 'Üzerine etki eden net kuvvet sıfır olan bir cisim için hangisi kesinlikle doğrudur?', '{"choices":["İvmesi sıfırdır","Durmaktadır","Üzerine hiç kuvvet etki etmiyordur","Yavaşlamaktadır","Dairesel hareket yapmaktadır"]}', '{"index":0}', 'Birinci yasa: net kuvvet sıfırsa cisim durumunu korur, yani ya durur ya da sabit hızla gider; her iki durumda ivme sıfırdır. Cismin üzerinde birbirini dengeleyen kuvvetler olabilir.', 2, '5. bölüm, Newton''un üç yasası', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t08', 'u5', 5, 'mcq', 'derived', 'Bir at arabayı çekiyor. At arabaya F kuvveti uyguluyorsa araba ata ne kadar kuvvet uygular?', '{"choices":["F, ters yönde","F''den küçük","F''den büyük","Araba hızlanıyorsa sıfır","2F, ters yönde"]}', '{"index":0}', 'Üçüncü yasa koşulsuzdur: araba hızlansa da yavaşlasa da P_araba→at = −P_at→araba. Arabanın hızlanmasını, attan aldığı kuvvetin yolun sürtünmesinden büyük olması açıklar.', 2, '5. bölüm, Newton''un üç yasası', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t09', 'u5', 5, 'mcq', 'derived', '40 N ağırlığındaki bir lamba, yatayla 30° açı yapan iki eş kabloyla şekildeki gibi asılıdır. Her bir kablodaki gerilme nedir? (sin 30° = 0,5)

[[G-S5-18]]', '{"choices":["40 N","20 N","80 N","≈ 23 N","≈ 46 N"]}', '{"index":0}', 'Simetrik durumda iki gerilme eşittir; yatay bileşenler birbirini götürür, düşey bileşenlerin toplamı ağırlığı dengeler.

---

**Düşey denge:** 2T sin 30° = 40.

---

**Çöz:** 2T × 0,5 = 40 → T = 40 N.

---

**Yorum:** Kablolar yataya yaklaştıkça (açı küçüldükçe) gerilme artar; 30°''de her kablo lambanın tüm ağırlığı kadar gerilir.', 2, '5. bölüm, Denge ve gerilme kuvveti', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t10', 'u5', 5, 'tf', 'derived', 'Sabit hızla düz bir yolda giden bir arabaya etki eden net kuvvet sıfırdır.', '{}', '{"value":true}', 'Sabit hız (yön ve büyüklük sabit) ivme sıfır demektir; ikinci yasaya göre net kuvvet de sıfırdır. Motorun itişi sürtünme ve hava direnciyle dengelenir.', 2, '5. bölüm, Denge ve gerilme kuvveti', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t11', 'u5', 5, 'mcq', 'derived', 'Sürtünmesiz yatay düzlemdeki 2 kg kütleli bir bloğa yatayla 53° açı yapan F = 10 N kuvveti yukarı doğru uygulanıyor. Bloğun ivmesi ve normal kuvvet nedir? (sin 53° = 0,8; cos 53° = 0,6; g = 10 m/s²)

[[G-S5-21]]', '{"choices":["a = 3 m/s²; N = 12 N","a = 5 m/s²; N = 20 N","a = 4 m/s²; N = 14 N","a = 3 m/s²; N = 28 N","a = 3 m/s²; N = 20 N"]}', '{"index":0}', 'Yatay bileşen ivmeyi verir; düşey bileşen yukarı çektiği için normal kuvveti azaltır.

---

**Yatay:** F cos 53° = 10 × 0,6 = 6 N → a = 6 / 2 = 3 m/s².

---

**Düşey:** N + F sin 53° − mg = 0 → N = 20 − 8 = 12 N.', 2, '5. bölüm, İkinci yasanın uygulanması', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t12', 'u5', 5, 'mcq', 'derived', 'Bir blok 30° eğimli sürtünmesiz bir düzlemin tepesinden serbest bırakılıyor. Eğik yüzey boyunca uzunluk 10 m''dir. Bloğun ivmesi ve alt uca vardığındaki hızı nedir? (g = 10 m/s²)

[[G-S5-19]]', '{"choices":["a = 5 m/s²; v = 10 m/s","a = 10 m/s²; v ≈ 14 m/s","a ≈ 8,7 m/s²; v ≈ 13 m/s","a = 5 m/s²; v = 100 m/s","a = 5 m/s²; v ≈ 7,1 m/s"]}', '{"index":0}', 'Sürtünmesiz eğik düzlemde a = g sin θ; ilk hız sıfır olduğundan v² = 2ad.

---

**İvme:** a = 10 × sin 30° = 5 m/s².

---

**Hız:** v² = 2 × 5 × 10 = 100 → v = 10 m/s.

---

**Kontrol:** Yükseklik 10 × sin 30° = 5 m; √(2gh) = √100 = 10 m/s ✓.', 2, '5. bölüm, İkinci yasanın uygulanması', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t13', 'u5', 5, 'mcq', 'derived', '70 kg kütleli bir kişi asansörde bir baskülün üzerinde duruyor. Asansör 2 m/s² ivmeyle yukarı doğru hızlanırken baskül kaç N gösterir? (g = 10 m/s²)', '{"choices":["840 N","700 N","560 N","140 N","1400 N"]}', '{"index":0}', 'Baskül normal kuvveti gösterir. Kişi asansörle birlikte yukarı ivmelendiği için N − mg = ma.

---

**İkinci yasa (yukarı pozitif):** N − 700 = 70 × 2.

---

**Sonuç:** N = 840 N. Aşağı yönde 2 m/s² ivmelenseydi 560 N gösterirdi.', 2, '5. bölüm, İkinci yasanın uygulanması', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t14', 'u5', 5, 'mcq', 'derived', 'Yatay zemindeki 4 kg kütleli bir kutuya 30 N yatay kuvvet uygulanıyor. Kinetik sürtünme katsayısı 0,5 ise kutunun ivmesi nedir? (g = 10 m/s²)', '{"choices":["2,5 m/s²","7,5 m/s²","5 m/s²","0","12,5 m/s²"]}', '{"index":0}', 'Önce sürtünme kuvveti μmg, sonra net kuvvet.

---

**Sürtünme:** f = 0,5 × 4 × 10 = 20 N.

---

**Net kuvvet:** 30 − 20 = 10 N.

---

**İvme:** a = 10 / 4 = 2,5 m/s².', 2, '5. bölüm, Statik ve kinetik sürtünme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t15', 'u5', 5, 'mcq', 'derived', 'Yatay zemindeki 10 kg kütleli bir dolaba 30 N yatay kuvvet uygulanıyor. Statik sürtünme katsayısı 0,4 ise dolaba etki eden sürtünme kuvveti nedir? (g = 10 m/s²)', '{"choices":["30 N","40 N","10 N","0","70 N"]}', '{"index":0}', 'Statik sürtünmenin üst sınırı μ_s N''dir ama değeri uygulanan kuvvete göre ayarlanır.

---

**Üst sınır:** f_max = 0,4 × 100 = 40 N.

---

**Karşılaştır:** 30 N < 40 N, dolap kımıldamaz.

---

**Sürtünme:** Net kuvvet sıfır olmalı → f = 30 N.', 2, '5. bölüm, Statik ve kinetik sürtünme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t16', 'u5', 5, 'mcq', 'derived', 'Yatay bir yüzeyde 10 m/s hızla kaymaya başlayan bir blok, kinetik sürtünme katsayısı 0,5 olan yüzeyde kaç metre sonra durur? (g = 10 m/s²)', '{"choices":["10 m","20 m","5 m","2 m","100 m"]}', '{"index":0}', 'a = −μg (kütle sadeleşir), sonra zamansız hız denklemi.

---

**İvme:** a = −0,5 × 10 = −5 m/s².

---

**Yol:** 0 = 100 + 2(−5)x → x = 10 m.', 2, '5. bölüm, Statik ve kinetik sürtünme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t17', 'u5', 5, 'mcq', 'derived', '37° eğimli bir düzlemdeki 2 kg kütleli bloğun düzlemle kinetik sürtünme katsayısı 0,5''tir. Blok aşağı kayarken ivmesi nedir? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)

[[G-S5-20]]', '{"choices":["2 m/s²","6 m/s²","10 m/s²","4 m/s²","1 m/s²"]}', '{"index":0}', 'Aşağı çeken mg sin θ, karşı koyan μ mg cos θ. Net kuvvet farklarıdır.

---

**Aşağı bileşen:** mg sin 37° = 20 × 0,6 = 12 N.

---

**Sürtünme:** μ mg cos 37° = 0,5 × 20 × 0,8 = 8 N.

---

**İvme:** (12 − 8) / 2 = 2 m/s².

---

**Formül:** a = g(sin θ − μ cos θ) = 10(0,6 − 0,4) = 2 m/s² ✓.', 2, '5. bölüm, Statik ve kinetik sürtünme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t18', 'u5', 5, 'mcq', 'derived', '37° eğimli bir düzlemde 2 kg kütleli bir blok duruyor. Statik sürtünme katsayısı 0,8''dir. Bloğa etki eden sürtünme kuvveti nedir? (sin 37° = 0,6; cos 37° = 0,8; g = 10 m/s²)', '{"choices":["12 N","12,8 N","16 N","0","20 N"]}', '{"index":0}', 'Önce kayıp kaymadığını kontrol et: blok μ_s ≥ tan θ ise durur. Duruyorsa sürtünme μN değil, aşağı çeken bileşen kadardır.

---

**Kayar mı:** tan 37° = 0,75 < 0,8, blok durur. (Ya da f_max = 0,8 × 16 = 12,8 N > 12 N.)

---

**Sürtünme:** Denge: f = mg sin 37° = 20 × 0,6 = 12 N.

---

**Tuzak:** 12,8 N yalnız üst sınırdır; bloğa etki eden sürtünme 12 N''dur.', 3, '5. bölüm, Statik ve kinetik sürtünme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t19', 'u5', 5, 'mcq', 'derived', '4 kg kütleli bir blok bir duvara F = 100 N yatay kuvvetle bastırılıyor. Blok ile duvar arasındaki statik sürtünme katsayısı 0,5''tir. Blok kayar mı, sürtünme kuvveti ne kadardır? (g = 10 m/s²)

[[G-S5-24]]', '{"choices":["Kaymaz; f = 40 N","Kaymaz; f = 50 N","Kayar; f = 50 N","Kayar; f = 40 N","Kaymaz; f = 100 N"]}', '{"index":0}', 'Normal kuvvet bastırma kuvvetine eşittir (N = F). Duvardaki sürtünmenin üst sınırı ağırlıktan büyükse blok durur ve sürtünme ağırlık kadardır.

---

**Normal kuvvet:** N = F = 100 N.

---

**Üst sınır:** f_max = 0,5 × 100 = 50 N.

---

**Ağırlık:** mg = 40 N < 50 N, blok kaymaz.

---

**Sürtünme:** Denge: f = 40 N (yukarı).', 3, '5. bölüm, Statik ve kinetik sürtünme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t20', 'u5', 5, 'mcq', 'derived', 'Sürtünmesiz bir makaradan geçen ipin bir ucunda 3 kg, öbür ucunda 2 kg kütle asılıdır. Sistemin ivmesi ve ipteki gerilme nedir? (g = 10 m/s²)

[[G-S5-25]]', '{"choices":["a = 2 m/s²; T = 24 N","a = 10 m/s²; T = 0","a = 2 m/s²; T = 30 N","a = 2 m/s²; T = 20 N","a = 5 m/s²; T = 25 N"]}', '{"index":0}', 'Atwood aletinde net kuvvet ağırlıkların farkıdır ve toplam kütleyi ivmelendirir. Gerilme iki ağırlığın arasında bir değer olmalı.

---

**İvme:** a = (30 − 20) / (3 + 2) = 2 m/s².

---

**Gerilme (2 kg, yukarı):** T − 20 = 2 × 2 → T = 24 N.

---

**Kontrol (3 kg):** 30 − 24 = 6 = 3 × 2 ✓.', 2, '5. bölüm, Bağlı cisimler ve makaralar', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t21', 'u5', 5, 'mcq', 'derived', 'Sürtünmesiz bir masadaki 3 kg blok, masanın kenarındaki makaradan geçen iple asılı 2 kg bloğa bağlıdır. İvme ve gerilme nedir? (g = 10 m/s²)

[[G-S5-22]]', '{"choices":["a = 4 m/s²; T = 12 N","a = 10 m/s²; T = 20 N","a ≈ 6,7 m/s²; T = 20 N","a = 4 m/s²; T = 20 N","a = 4 m/s²; T = 8 N"]}', '{"index":0}', 'Sistemi hareket ettiren tek kuvvet asılı bloğun ağırlığıdır; iki kütleyi birlikte ivmelendirir. Gerilme masadaki bloğu ivmelendiren kuvvettir.

---

**İvme:** a = 20 / (3 + 2) = 4 m/s².

---

**Gerilme:** T = 3 × 4 = 12 N.

---

**Kontrol (2 kg):** 20 − 12 = 8 = 2 × 4 ✓. Gerilme asılı bloğun ağırlığından küçük çıkar, çünkü blok aşağı ivmelenir.', 2, '5. bölüm, Bağlı cisimler ve makaralar', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t22', 'u5', 5, 'mcq', 'derived', 'Sürtünmesiz düzlemde yan yana duran 1 kg, 2 kg ve 3 kg kütleli bloklardan soldakine F = 24 N yatay kuvvet uygulanıyor. İvme ve bloklar arası temas kuvvetleri nedir?

[[G-S5-26]]', '{"choices":["a = 4 m/s²; P₁₂ = 20 N; P₂₃ = 12 N","a = 4 m/s²; P₁₂ = 8 N; P₂₃ = 12 N","a = 4 m/s²; P₁₂ = 24 N; P₂₃ = 24 N","a = 24 m/s²; P₁₂ = 20 N; P₂₃ = 12 N","a = 4 m/s²; P₁₂ = 4 N; P₂₃ = 8 N"]}', '{"index":0}', 'Önce bütün sistemin ivmesi; sonra her temas kuvveti, kendisinden sonraki blokların toplam kütlesini ivmelendirir.

---

**İvme:** a = 24 / 6 = 4 m/s².

---

**P₁₂:** (2 + 3) × 4 = 20 N.

---

**P₂₃:** 3 × 4 = 12 N.', 2, '5. bölüm, Bağlı cisimler ve makaralar', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t23', 'u5', 5, 'mcq', 'derived', '30° eğimli sürtünmesiz düzlemdeki 4 kg blok, tepedeki makaradan geçen iple asılı 4 kg bloğa bağlıdır. Sistemin ivmesi ve ipteki gerilme nedir? (g = 10 m/s²)

[[G-S5-23]]', '{"choices":["a = 2,5 m/s²; T = 30 N","a = 0; T = 40 N","a = 5 m/s²; T = 20 N","a = 2,5 m/s²; T = 40 N","a = 2,5 m/s²; T = 20 N"]}', '{"index":0}', 'Kütleler eşit olsa da düzlemdeki bloğu aşağı çeken yalnız ağırlığın mg sin 30° bileşenidir. Bu yüzden asılı blok iner.

---

**Yön:** Asılı: 40 N; düzlemdeki: 40 × 0,5 = 20 N. Asılı blok aşağı iner.

---

**İvme:** a = (40 − 20) / (4 + 4) = 2,5 m/s².

---

**Gerilme (asılı):** 40 − T = 4 × 2,5 → T = 30 N.', 3, '5. bölüm, Bağlı cisimler ve makaralar', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t24', 'u5', 5, 'mcq', 'derived', 'Yarıçapı 50 m olan yatay, düz bir virajda tekerlek-yol sürtünme katsayısı 0,5''tir. Bir araba bu virajı kaymadan en fazla hangi hızla dönebilir? (g = 10 m/s²)', '{"choices":["≈ 15,8 m/s","25 m/s","250 m/s","≈ 22,4 m/s","≈ 11,2 m/s"]}', '{"index":0}', 'Sürtünmenin sağlayabileceği en büyük merkezcil kuvvet μmg: v_max = √(μgr).

---

**Formül:** v² = μgr = 0,5 × 10 × 50 = 250.

---

**Sonuç:** v = √250 ≈ 15,8 m/s (≈ 57 km/sa).', 2, '5. bölüm, Dairesel harekette Newton''un ikinci yasası', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t25', 'u5', 5, 'mcq', 'derived', '0,2 kg kütleli bir taş 1 m uzunluğundaki bir ipin ucunda sürtünmesiz yatay düzlemde 5 m/s süratle döndürülüyor. İpteki gerilme nedir?', '{"choices":["5 N","1 N","25 N","2 N","0,5 N"]}', '{"index":0}', 'Yatay düzlemde merkezcil kuvveti tek başına ip sağlar: T = m v² / r.

---

**Hesap:** T = 0,2 × 25 / 1 = 5 N.', 2, '5. bölüm, Dairesel harekette Newton''un ikinci yasası', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t26', 'u5', 5, 'mcq', 'derived', 'Yarıçapı 80 m olan ve yatayla 37° eğimli sürtünmesiz bir virajı bir araba kaymadan hangi hızla dönebilir? (tan 37° = 0,75; g = 10 m/s²)', '{"choices":["≈ 24,5 m/s","≈ 28,3 m/s","600 m/s","≈ 17,3 m/s","≈ 21,2 m/s"]}', '{"index":0}', 'Eğimli virajda merkezcil kuvveti N sin θ sağlar, N cos θ ağırlığı dengeler: v = √(gr tan θ).

---

**Formül:** v² = gr tan θ = 10 × 80 × 0,75 = 600.

---

**Sonuç:** v = √600 ≈ 24,5 m/s (≈ 88 km/sa).', 3, '5. bölüm, Dairesel harekette Newton''un ikinci yasası', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('u5-t27', 'u5', 5, 'tf', 'derived', 'Düzgün dairesel hareket yapan bir cisme etki eden net kuvvet çemberin merkezine yönelir.', '{}', '{"value":true}', 'İkinci yasa: ΣF = m a. Düzgün dairesel harekette ivme merkezcildir (a_r = v²/r), bu yüzden net kuvvet de merkeze yönelir. "Merkezcil kuvvet" ayrı bir kuvvet değil; bu rolü ip gerilmesi, sürtünme ya da normal kuvvet üstlenir.', 2, '5. bölüm, Dairesel harekette Newton''un ikinci yasası', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;

UPDATE questions SET kavram = 'u2-koordinat', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s01';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s02';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s03a';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s03b';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s03c';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s04a';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s04b';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s05a';
UPDATE questions SET kavram = 'u2-ozellik', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s05b';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s05c';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s06a';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s06b';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s06c';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s07a';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s07b';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s08';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s09a';
UPDATE questions SET kavram = 'u2-ozellik', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s09b';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s09c';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s09d';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s10a';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s10b';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'sunu' WHERE id = 'u2-s11';
UPDATE questions SET kavram = 'u2-skaler', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t01';
UPDATE questions SET kavram = 'u2-skaler', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t02';
UPDATE questions SET kavram = 'u2-koordinat', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t03';
UPDATE questions SET kavram = 'u2-koordinat', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t04';
UPDATE questions SET kavram = 'u2-ozellik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t05';
UPDATE questions SET kavram = 'u2-ozellik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t06';
UPDATE questions SET kavram = 'u2-ozellik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t07';
UPDATE questions SET kavram = 'u2-ozellik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t08';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t09';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t10';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t11';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t12';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t13';
UPDATE questions SET kavram = 'u2-bilesen', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t14';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t15';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t16';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t17';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t18';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t19';
UPDATE questions SET kavram = 'u2-skaler-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t20';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t21';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t22';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t23';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t24';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t25';
UPDATE questions SET kavram = 'u2-vektorel-carpim', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u2-t26';
UPDATE questions SET kavram = 'u3-temel', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s01';
UPDATE questions SET kavram = 'u3-temel', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s02a';
UPDATE questions SET kavram = 'u3-temel', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s02b';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s02c';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s02d';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s03a';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s03b';
UPDATE questions SET kavram = 'u3-temel', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s03c';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s03d';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s03e';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s04';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s05a';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s05b';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s05c';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s06a';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s06b';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s07';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s08a';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s08b';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s08c';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s09a';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s09b';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s10a';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s10b';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s10c';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s11a';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s11b';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s12a';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s12b';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s12c';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s12d';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s13';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s14a';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'sunu' WHERE id = 'u3-s14b';
UPDATE questions SET kavram = 'u3-temel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t01';
UPDATE questions SET kavram = 'u3-temel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t02';
UPDATE questions SET kavram = 'u3-temel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t03';
UPDATE questions SET kavram = 'u3-temel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t04';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t05';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t06';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t07';
UPDATE questions SET kavram = 'u3-turev', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t08';
UPDATE questions SET kavram = 'u3-grafik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t09';
UPDATE questions SET kavram = 'u3-grafik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t10';
UPDATE questions SET kavram = 'u3-grafik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t11';
UPDATE questions SET kavram = 'u3-grafik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t12';
UPDATE questions SET kavram = 'u3-grafik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t13';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t14';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t15';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t16';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t17';
UPDATE questions SET kavram = 'u3-sabit-ivme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t18';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t19';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t20';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t21';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t22';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t23';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t24';
UPDATE questions SET kavram = 'u3-serbest', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u3-t25';
UPDATE questions SET kavram = 'u4-vektorel', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s01a';
UPDATE questions SET kavram = 'u4-vektorel', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s01b';
UPDATE questions SET kavram = 'u4-vektorel', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s01c';
UPDATE questions SET kavram = 'u4-vektorel', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s02a';
UPDATE questions SET kavram = 'u4-vektorel', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s02b';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s03';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s04a';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s04b';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s04c';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s05';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s06a';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s06b';
UPDATE questions SET kavram = 'u4-yatay', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s07';
UPDATE questions SET kavram = 'u4-yatay', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s08a';
UPDATE questions SET kavram = 'u4-yatay', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s08b';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s09a';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s09b';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s10';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s11a';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s11b';
UPDATE questions SET kavram = 'u4-bagil', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s12a';
UPDATE questions SET kavram = 'u4-bagil', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s12b';
UPDATE questions SET kavram = 'u4-bagil', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s12c';
UPDATE questions SET kavram = 'u4-bagil', yedek = 0, etiketler = 'sunu' WHERE id = 'u4-s13';
UPDATE questions SET kavram = 'u4-vektorel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t01';
UPDATE questions SET kavram = 'u4-vektorel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t02';
UPDATE questions SET kavram = 'u4-vektorel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t03';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t04';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t05';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t06';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t07';
UPDATE questions SET kavram = 'u4-egik', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t08';
UPDATE questions SET kavram = 'u4-yatay', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t09';
UPDATE questions SET kavram = 'u4-yatay', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t10';
UPDATE questions SET kavram = 'u4-yatay', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t11';
UPDATE questions SET kavram = 'u4-yatay', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t12';
UPDATE questions SET kavram = 'u4-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t13';
UPDATE questions SET kavram = 'u4-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t14';
UPDATE questions SET kavram = 'u4-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t15';
UPDATE questions SET kavram = 'u4-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t16';
UPDATE questions SET kavram = 'u4-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t17';
UPDATE questions SET kavram = 'u4-bagil', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t18';
UPDATE questions SET kavram = 'u4-bagil', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t19';
UPDATE questions SET kavram = 'u4-bagil', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u4-t20';
UPDATE questions SET kavram = 'u5-ikinci', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s01';
UPDATE questions SET kavram = 'u5-denge', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s02';
UPDATE questions SET kavram = 'u5-ikinci', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s03a';
UPDATE questions SET kavram = 'u5-ikinci', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s03b';
UPDATE questions SET kavram = 'u5-ikinci', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s04a';
UPDATE questions SET kavram = 'u5-ikinci', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s04b';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s05';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s06a';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s06b';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s07';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s08';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s09';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s10';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s11';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s12';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s13a';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s13b';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s14';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s15';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s16';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s17';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s18a';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s18b';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s19';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s20';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s21a';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s21b';
UPDATE questions SET kavram = 'u5-denge', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s22';
UPDATE questions SET kavram = 'u5-yasalar', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s23a';
UPDATE questions SET kavram = 'u5-yasalar', yedek = 0, etiketler = 'sunu' WHERE id = 'u5-s23b';
UPDATE questions SET kavram = 'u5-kavram', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t01';
UPDATE questions SET kavram = 'u5-kavram', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t02';
UPDATE questions SET kavram = 'u5-kavram', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t03';
UPDATE questions SET kavram = 'u5-kavram', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t04';
UPDATE questions SET kavram = 'u5-yasalar', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t05';
UPDATE questions SET kavram = 'u5-yasalar', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t06';
UPDATE questions SET kavram = 'u5-yasalar', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t07';
UPDATE questions SET kavram = 'u5-yasalar', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t08';
UPDATE questions SET kavram = 'u5-denge', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t09';
UPDATE questions SET kavram = 'u5-denge', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t10';
UPDATE questions SET kavram = 'u5-ikinci', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t11';
UPDATE questions SET kavram = 'u5-ikinci', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t12';
UPDATE questions SET kavram = 'u5-ikinci', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t13';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t14';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t15';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t16';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t17';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t18';
UPDATE questions SET kavram = 'u5-surtunme', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t19';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t20';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t21';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t22';
UPDATE questions SET kavram = 'u5-bagli', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t23';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t24';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t25';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t26';
UPDATE questions SET kavram = 'u5-dairesel', yedek = 0, etiketler = 'turetilmis' WHERE id = 'u5-t27';
