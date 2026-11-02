// Ünitelerin konu anlatımları. Şu an hazırlanıyor ("Yakında"); ilk hedef
// ders sunularındaki bütün çözümlü örneklerin adım adım çözümleriyle sitede olması.

import type { Ders } from "./tipler";

export const DERSLER: Ders[] = [];

export const dersBul = (hafta: number) => DERSLER.find((d) => d.hafta === hafta);
