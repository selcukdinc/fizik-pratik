// Fizik I ders sunularının bölümleri.
export interface Unite {
  no: number;
  baslik: string;
}

export const UNITELER: Unite[] = [
  { no: 1, baslik: "Ölçme ve Birim Sistemleri" },
  { no: 2, baslik: "Vektörler" },
  { no: 3, baslik: "Bir Boyutta Hareket" },
  { no: 4, baslik: "İki Boyutta Hareket" },
  { no: 5, baslik: "Newton Kanunları" },
];

export const uniteBul = (no: number) => UNITELER.find((u) => u.no === no);
