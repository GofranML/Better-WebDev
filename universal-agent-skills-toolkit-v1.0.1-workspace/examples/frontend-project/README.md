# Contoh Proyek: Frontend Clean Architecture (Next.js / React)

Contoh ini mendemonstrasikan bagaimana agen AI memanfaatkan `master-design-intelligence`, `framer-motion`, dan `lucide-icons` untuk membangun halaman antarmuka modern yang bersih, bebas watermark, dan patuh aksesibilitas.

---

## 1. Skenario Tugas
Pengguna meminta: *"Buatkan komponen kartu metrik SaaS yang memiliki micro-interaction halus saat hover dan ikon status."*

---

## 2. Alur Eksekusi Agen

1. **Tahap 1: Evaluasi Kebutuhan (Requirement Intelligence)**
   - Target framework: React / Next.js.
   - Densitas: Data-dense (dashboard SaaS).
   - Aksesibilitas: WCAG 2.1 AA (kontras > 4.5:1).

2. **Tahap 2: Seleksi Komponen & Animasi**
   - Komponen dasar: Pola kartu dari `references/design-intelligence-library/components/vengeanceui`.
   - Engine gerak: `framer-motion` (menggunakan spring physics ringan).
   - Ikon: `lucide-icons` (mengambil `trending-up` dan `activity`).

3. **Tahap 3: Implementasi Kode Bebas Slop**
```tsx
import React from "react";
import { motion } from "framer-motion";
import { TrendingUp } from "lucide-react";

interface MetricCardProps {
  title: string;
  value: string;
  change: string;
}

export const MetricCard: React.FC<MetricCardProps> = ({ title, value, change }) => {
  return (
    <motion.div
      whileHover={{ y: -2 }}
      transition={{ type: "spring", stiffness: 400, damping: 25 }}
      className="p-5 rounded-xl bg-neutral-900 border border-neutral-800 text-neutral-100 shadow-sm"
    >
      <div className="flex items-center justify-between text-neutral-400 mb-2">
        <span className="text-sm font-medium">{title}</span>
        <TrendingUp className="w-4 h-4 text-emerald-400" />
      </div>
      <div className="text-2xl font-bold tracking-tight">{value}</div>
      <div className="text-xs text-emerald-400 mt-1 font-mono">{change} vs bulan lalu</div>
    </motion.div>
  );
};
```

4. **Tahap 4: Verifikasi Kualitas**
   - Bebas dari div wrapper berlebihan.
   - Menggunakan transition transform (`y: -2`) yang terakselerasi GPU.
   - Bebas dari watermark vendor atau logo tersembunyi.
