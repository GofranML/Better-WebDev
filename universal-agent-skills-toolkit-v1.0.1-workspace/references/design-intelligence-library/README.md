# Design Intelligence Library

Pustaka referensi arsitektur desain, animasi, efek visual, visualisasi data, dan komponen antarmuka frontend terpusat untuk ekosistem Antigravity CLI (AGY).

Lokasi ini bersifat terpusat lintas proyek (*cross-project*) dan berfungsi sebagai pangkalan pengetahuan *offline-first* yang bersih, bebas iklan, bebas watermark AI, dan mematuhi lisensi hukum.

---

## 1. Tujuan Pustaka

Pustaka ini dirancang untuk:
1. Menyediakan referensi komponen antarmuka berkualitas tinggi tanpa membebani proyek dengan dependensi berlebih (*zero unnecessary bloat*).
2. Menyajikan pedoman adaptasi framework yang teruji antara ekosistem React/Next.js dan Laravel/Blade.
3. Menjamin kebersihan kode produksi dari injeksi watermark AI, badge promosi, iklan, atau telemetri terselubung (sesuai Kebijakan Bersih Bagian 16).
4. Menyediakan aturan tata kelola bagi agent AGY agar memilih pustaka secara cerdas (*intelligent selection*), bukan memuat semua pustaka sekaligus.

---

## 2. Struktur Pustaka

```text
design-intelligence-library/
├── README.md                      # Dokumentasi utama dan panduan navigasi pustaka
├── DESIGN-INDEX.md                # Indeks pencarian komponen berdasarkan kategori, framework, lisensi
├── DESIGN-SELECTION-RULES.md      # Aturan pemilihan sumber cerdas dan pohon keputusan AGY
├── FRAMEWORK-COMPATIBILITY.md     # Matriks dan strategi adaptasi Next.js, React, Tailwind, Blade
├── LICENSE-REGISTER.md            # Register lisensi hukum dan batasan komersial 10 sumber
├── CLEAN-CODE-POLICY.md           # Standar wajib anti-watermark, anti-ads, dan zero telemetry
├── CHANGELOG.md                   # Catatan riwayat revisi dan pembaruan pustaka
│
├── components/                    # Referensi komponen UI
│   ├── vengeanceui/               # Cuplikan kartu, input, dan hero modern (MIT)
│   ├── forgeui/                   # Pola struktur Next.js/Tailwind v4 (MIT)
│   ├── uiverse-galaxy/            # Elemen flat HTML & CSS murni untuk Blade & React (MIT/CC0)
│   └── uilora/                    # Referensi pola antarmuka SaaS publik (CONDITIONAL)
│
├── animation-motion/              # Pustaka animasi dan interaktivitas
│   ├── gsap/                      # Engine animasi timeline, ScrollTrigger, SVG (GreenSock License)
│   ├── animate-ui/                # Pola transisi mikro dan interaksi komponen (Commons Clause)
│   └── motion/                    # Referensi engine mandiri lokal dari tools/motion (MIT)
│
├── visual-effects/                # Grafis komputasi dan efek visual
│   └── shaders/                   # Efek WebGPU / WGSL canvas deklaratif (MIT)
│
├── 3d-experiences/                # Pengalaman 3D interaktif
│   └── threejs-dioramas/          # Alternatif 3D Three.js lokal dari tools/dioramas (Bebas Watermark)
│
├── data-visualization/            # Grafik dan dashboard telemetry
│   └── bklit-ui/                  # Pola grafik SVG teroptimasi ramah shadcn (MIT)
│
├── design-platforms/              # Dokumentasi evaluasi platform desain
│   └── framer/                    # Evaluasi batasan platform cloud dan isolasi motion (FAIL/CONDITIONAL)
│
└── references/                    # Panduan teknis pendukung
    ├── implementation-patterns/   # Pola arsitektur komponen bersih
    ├── accessibility/             # Standar WCAG 2.1 AA, kontras warna, dan navigasi keyboard
    ├── performance/               # Anggaran performa (Core Web Vitals, 60fps, optimasi bundle)
    └── framework-adaptation/      # Prosedur konversi kode React JSX ke Laravel Blade native
```

---

## 3. Protokol Penggunaan oleh Agent AGY

Sebelum mengusulkan atau mengambil kode dari pustaka ini, seluruh agent AI wajib:
1. Membaca [`DESIGN-INDEX.md`](./DESIGN-INDEX.md) untuk memastikan komponen yang dipilih sesuai framework target.
2. Membaca [`DESIGN-SELECTION-RULES.md`](./DESIGN-SELECTION-RULES.md) untuk mencegah duplikasi pustaka.
3. Memastikan status kepatuhan sumber berstatus **PASS** pada [`CLEAN-CODE-POLICY.md`](./CLEAN-CODE-POLICY.md).
4. Tidak memaksakan runtime React pada proyek Laravel Blade jika komponen dapat diwujudkan dengan HTML/Tailwind/Alpine.js.
