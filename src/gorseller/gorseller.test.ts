import { describe, expect, it } from "vitest";
import { GORSELLER, gorselBul } from ".";
import { gorselKullanimlari } from "./kullanim";
import { sorular } from "../../content/sorular/index";

describe("ders şekilleri", () => {
  it("kodlar tekil ve biçimi doğru", () => {
    const kodlar = GORSELLER.map((g) => g.kod);
    expect(new Set(kodlar).size).toBe(kodlar.length);
    for (const k of kodlar) expect(k).toMatch(/^G-[HS]\d+-\d{2}$/);
  });

  it("derslerde ve sorularda geçen her kodun şekli var ve her şekil kullanılıyor", () => {
    const kullanim = new Set(gorselKullanimlari().keys());
    for (const s of sorular) for (const m of [s.soru, ...(s.adimlar ?? [])].join("\n\n").matchAll(/^\[\[(G-[HS]\d+-\d+)\]\]$/gm)) kullanim.add(m[1]!);
    for (const kod of kullanim) expect(gorselBul(kod), kod).toBeDefined();
    for (const g of GORSELLER) expect(kullanim.has(g.kod), `${g.kod} hiçbir derste ya da soruda yok`).toBe(true);
  });

  it("SVG etiketleri dengeli, koordinatlar sayı", () => {
    for (const g of GORSELLER) {
      expect(g.icerik, g.kod).not.toMatch(/NaN|undefined/);
      const yigin: string[] = [];
      for (const m of g.icerik.matchAll(/<(\/?)([a-z]+)[^>]*?(\/?)>/g)) {
        if (m[3]) continue;
        if (m[1]) expect(yigin.pop(), g.kod).toBe(m[2]);
        else yigin.push(m[2]!);
      }
      expect(yigin, g.kod).toEqual([]);
    }
  });
});
