# Changelog: Design Intelligence Library

Seluruh perubahan dan iterasi penambahan aset pada Design Intelligence Library dicatat secara kronologis pada dokumen ini.

---

## [Phase 2: Library Structure & Local Reference Preparation] - 2026-11-03

### Ditambahkan
- **Inisialisasi Pustaka Terpusat**: Membentuk struktur direktori `design-intelligence-library/` pada lokasi terpusat lintas proyek `./`.
- **Dokumentasi Tata Kelola & Navigasi**:
  - `README.md`: Panduan umum, tujuan, dan struktur pustaka.
  - `DESIGN-INDEX.md`: Indeks taksonomi komponen berdasarkan kategori, framework, lisensi, performa, dan aksesibilitas.
  - `DESIGN-SELECTION-RULES.md`: Aturan inferensi pemilihan sumber cerdas, pohon keputusan, dan matriks anti-duplikasi.
  - `FRAMEWORK-COMPATIBILITY.md`: Matriks kompatibilitas lintas framework dan panduan konversi React/JSX ke Laravel Blade/Tailwind.
  - `LICENSE-REGISTER.md`: Register lisensi 10 sumber utama dan pembedaan atribusi hukum versus branding promosi.
  - `CLEAN-CODE-POLICY.md`: Standar kepatuhan Bagian 16 (anti-watermark AI, anti-iklan, anti-telemetri).
- **Katalog Referensi Sumber Eksternal**:
  - `components/vengeanceui/`: Katalog komponen UI Tailwind modern (MIT).
  - `components/forgeui/`: Pola arsitektur Next.js 16 / React 19 / Tailwind v4 (MIT).
  - `components/uiverse-galaxy/`: Pola micro-elements flat HTML/CSS murni untuk Blade & React (MIT/CC0).
  - `components/uilora/`: Dokumentasi evaluasi SaaS registry (CONDITIONAL).
  - `animation-motion/gsap/`: Pola animasi GSAP Timeline, ScrollTrigger, dan SVG (GreenSock).
  - `animation-motion/animate-ui/`: Dokumentasi pola micro-interactions Motion (Commons Clause).
  - `animation-motion/motion/`: Referensi engine mandiri lokal dari monorepo `tools/motion` (MIT).
  - `visual-effects/shaders/`: Pola efek visual komputasi WebGPU / WGSL canvas (MIT).
  - `3d-experiences/threejs-dioramas/`: Dokumentasi engine 3D Three.js lokal dari `tools/dioramas` sebagai alternatif bebas watermark dari Spline.
  - `data-visualization/bklit-ui/`: Referensi komponen grafik SVG shadcn-compatible (MIT).
  - `design-platforms/framer/`: Evaluasi platform cloud Framer dan dokumentasi isolasi hosting (FAIL/CONDITIONAL).
- **Panduan Teknis Pendukung**:
  - `references/implementation-patterns/`: Pola desain komponen bersih dan modular.
  - `references/accessibility/`: Panduan kepatuhan aksesibilitas WCAG 2.1 AA.
  - `references/performance/`: Anggaran performa dan optimasi render 60 FPS.
  - `references/framework-adaptation/`: Prosedur langkah-demi-langkah konversi JSX ke Blade native.

### Keamanan & Kepatuhan
- Menetapkan status **FAIL** pada Spline Free Tier dan Framer Web Hosting gratis karena injeksi watermark paksa.
- Menetapkan Three.js lokal (`tools/dioramas`) dan Motion lokal (`tools/motion`) sebagai solusi produksi bersih terverifikasi.
- Seluruh berkas referensi dipastikan strictly read-only dan bebas dari eksekusi script instalasi eksternal.

