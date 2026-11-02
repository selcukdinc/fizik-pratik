// Şekiller. Hepsi bizim çizimimizdir; sunulardaki şekiller yeniden çizilir, görsel alınmaz.
// Ders ya da soru metninde tek başına bir paragraf olarak [[G-H1-01]] yazılınca şekil o yere konur.
// Kod biçimi: ders şekilleri G-H<bölüm>-<sıra>, soru şekilleri G-S<bölüm>-<sıra> (./sorular.ts).

import type { Gorsel } from "./tip";

export type { Gorsel } from "./tip";

import { SORU_SEKILLERI } from "./sorular";

export const GORSELLER: Gorsel[] = [...SORU_SEKILLERI];

export const gorselBul = (kod: string) => GORSELLER.find((g) => g.kod === kod);

// Ders metninde tek başına duran şekil işareti
export const SEKIL_DESENI = /^\[\[(G-[HS]\d+-\d+)\]\]$/;
