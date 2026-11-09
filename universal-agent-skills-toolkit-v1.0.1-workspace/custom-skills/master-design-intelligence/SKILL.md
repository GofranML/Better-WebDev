---
license: UNLICENSED (Copyright (c) 2026 Gofran / GFN Web. All rights reserved.)
name: master-design-intelligence
description: Intelligent Frontend Design Selection and Implementation Strategy. Evaluates user requirements, establishes visual direction, selects verified components from the Design Intelligence Library, determines motion and visual effects, coordinates framework adaptation (React, Next.js, Laravel Blade), and enforces clean code, anti-watermark, and licensing policies.
---

# Master Design Intelligence

Skill ini berfungsi sebagai pusat pengambilan keputusan desain, seleksi komponen antarmuka, pemilihan teknologi visual, dan penentuan strategi implementasi frontend di ekosistem Antigravity CLI (AGY).

Skill ini bertindak sebagai *intelligent decision-making layer* yang menghubungkan kebutuhan pengguna dengan pangkalan pengetahuan terpusat pada [`./references/design-intelligence-library`](../../references/design-intelligence-library).

---

## 1. Alur Kerja Pengambilan Keputusan (Decision Flow)

Setiap kali pengguna meminta perancangan antarmuka, pembuatan komponen, atau penataan tata letak, jalankan 7 tahap inferensi berikut:

1. **Requirement Intelligence**: Analisis konteks produk, framework target, dan sasaran pengguna.
2. **Visual Direction**: Tentukan gaya visual yang otentik (hindari AI-slop dan template generik).
3. **Component Selection**: Pilih cuplikan komponen terverifikasi dari pustaka referensi.
4. **Motion & VFX Strategy**: Tentukan apakah animasi atau efek 3D benar-benar dibutuhkan.
5. **Framework Adaptation**: Sesuaikan sintaks secara murni ke framework proyek (React vs Blade).
6. **Quality & Clean Code Gate**: Pastikan kode 100% bebas watermark AI, bebas iklan, dan patuh lisensi.
7. **Execution Blueprint**: Sajikan rekomendasi terstruktur sebelum kode diimplementasikan.

---

## 2. Requirement Intelligence

Analisis parameter proyek sebelum mengusulkan kode:
- **Jenis Produk**: Landing page, dashboard telemetri, SaaS web app, e-commerce, atau portofolio.
- **Framework Aktif**: Next.js (App/Pages router), React Vite, atau Laravel Blade native.
- **Karakteristik Pengguna**: Kerapatan data tinggi (data-dense) vs presentasi visual lega.
- **Batasan Aksesibilitas**: Kepatuhan standar WCAG 2.1 AA dan navigasi keyboard.
- **Anggaran Performa**: Core Web Vitals (LCP < 2.5s) dan efisiensi render peramban.

*Prinsip Komunikasi*: Jangan mengajukan pertanyaan bertubi-tubi jika informasi sudah cukup. Tanyakan maksimal satu pertanyaan klarifikasi terfokus hanya jika parameter teknis penting belum diketahui dan memblokir keputusan arsitektur.

---

## 3. Visual Direction & Anti-Slop Standards

Tentukan identitas visual yang khas sesuai konteks produk. Kolaborasikan dengan prinsip craft dari skill `impeccable` dan saring melalui standar `antislop-ui`:

- **Hindari Klise Visual AI**: Dilarang mengandalkan glassmorphism acak, batas gradien neon berulang, kartu bento tanpa fungsi hierarki, atau animasi melayang tanpa tujuan.
- **Tipografi Terarah**: Gunakan skala tipografi terukur dengan bobot yang jelas untuk memandu alur baca mata.
- **Sistem Warna Fungsional**: Terapkan rasio kontras teruji (minimal 4.5:1 untuk teks normal). Batasi aksen visual agar antarmuka tidak terasa ramai atau bising.
- **Kerapatan Komponen (Density)**: Sesuaikan padding dan margin dengan tipe aplikasi (dashboard membutuhkan densitas tinggi, sedangkan landing page membutuhkan ruang bernapas).

---

## 4. Seleksi Komponen Cerdas (Library Reference Protocol)

Wajib merujuk ke berkas indeks dan aturan pada pangkalan pengetahuan lokal:
- Indeks Taksonomi: [`./references/design-intelligence-library/DESIGN-INDEX.md`](../../references/design-intelligence-library/DESIGN-INDEX.md)
- Aturan Seleksi Cerdas: [`./references/design-intelligence-library/DESIGN-SELECTION-RULES.md`](../../references/design-intelligence-library/DESIGN-SELECTION-RULES.md)

### Matriks Pemilihan Sumber Terverifikasi:

| Kebutuhan Antarmuka | Sumber Utama yang Direkomendasikan | Referensi Teknis Lokal |
|---|---|---|
| **Komponen UI Modern (React)** | VengeanceUI | [`components/vengeanceui/README.md`](../../references/design-intelligence-library/components/vengeanceui/README.md) |
| **Tata Letak & Shell (Next.js)** | ForgeUI | [`components/forgeui/README.md`](../../references/design-intelligence-library/components/forgeui/README.md) |
| **Micro-Elements (Blade/HTML)** | Uiverse Galaxy (Flat CSS) | [`components/uiverse-galaxy/README.md`](../../references/design-intelligence-library/components/uiverse-galaxy/README.md) |
| **Pola Antarmuka SaaS** | Uilora (Kondisional: Sanitasi metadata) | [`components/uilora/README.md`](../../references/design-intelligence-library/components/uilora/README.md) |
| **Micro-Interactions (React)** | Motion Lokal & Animate UI | [`animation-motion/motion/README.md`](../../references/design-intelligence-library/animation-motion/motion/README.md) |
| **Timeline Animasi & Scroll** | GSAP (ScrollTrigger) | [`animation-motion/gsap/README.md`](../../references/design-intelligence-library/animation-motion/gsap/README.md) |
| **Efek Visual GPU (Shaders)** | Shaders (WebGPU / Fallback CSS) | [`visual-effects/shaders/README.md`](../../references/design-intelligence-library/visual-effects/shaders/README.md) |
| **Pengalaman 3D Interaktif** | Three.js Dioramas (Lokal Bebas Watermark) | [`3d-experiences/threejs-dioramas/README.md`](../../references/design-intelligence-library/3d-experiences/threejs-dioramas/README.md) |
| **Grafik & Visualisasi Data** | Bklit UI (SVG / shadcn-compatible) | [`data-visualization/bklit-ui/README.md`](../../references/design-intelligence-library/data-visualization/bklit-ui/README.md) |

### Sumber yang Dilarang Keras untuk Produksi:
- **Spline Free Tier**: Berstatus **FAIL** karena menyuntikkan logo wajib *"Built with Spline"*. Alihkan 100% ke Three.js lokal di [`tools/dioramas`](./tools/dioramas).
- **Framer Free Web Hosting**: Berstatus **FAIL** karena menyuntikkan badge *"Made in Framer"*. Alihkan ke pustaka animasi lokal di [`tools/motion`](./tools/motion).

---

## 5. Strategi Animasi & Efek Visual

Terapkan prinsip beban minimal (*minimal overhead principle*):
1. **Transisi Sederhana**: Gunakan CSS transition bawaan Tailwind untuk hover, active, dan focus.
2. **Interaktivitas Reaktif**: Gunakan Motion lokal untuk drag gestures, spring physics, dan layout animation di React.
3. **Timeline Kompleks**: Gunakan GSAP untuk animasi yang bergantung pada gulir layar (*ScrollTrigger*) atau manipulasi garis SVG.
4. **Efek Shaders & WebGPU**:
   - Selalu sediakan fallback visual berbasis CSS gradient jika browser klien tidak mendukung WebGPU.
   - Hindari efek visual yang menurunkan keterbacaan teks utama.
5. **Aksesibilitas Gerak**: Selalu hormati preferensi sistem `prefers-reduced-motion` untuk mencegah disorientasi visual pada pengguna sensitif.

---

## 6. Framework Intelligence (Strategi Adaptasi)

Wajib membaca panduan adaptasi pada:
[`./references/design-intelligence-library/FRAMEWORK-COMPATIBILITY.md`](../../references/design-intelligence-library/FRAMEWORK-COMPATIBILITY.md) dan [`./references/design-intelligence-library/references\framework-adaptation\README.md`](../../references/design-intelligence-library/references/framework-adaptation/README.md).

### Aturan Khusus Proyek Laravel Blade:
- **Dilarang Memasang Runtime React**: Jangan pernah merekomendasikan instalasi `react` dan `react-dom` di Laravel hanya untuk merender kartu, tombol, atau modal lightbox sederhana.
- **Konversi Struktural**:
  - Ubah `className` menjadi `class`.
  - Ubah props React menjadi variabel Blade (`{{ $title }}`).
  - Ubah state buka-tutup reaktif (`useState`) menjadi direktif Alpine.js (`x-data`, `x-show`, `x-transition`) atau modul Vanilla JS murni.
  - Sediakan tombol penutup dialog dengan dukungan keyboard `Escape`.

### Aturan Khusus Proyek React / Next.js:
- Tentukan batasan Server Components vs Client Components (`'use client'`) secara tepat.
- Gunakan modul lokal yang sudah teroptimasi tanpa menambah dependensi baru yang redundan.

---

## 7. Kepatuhan Clean Code, Anti-Watermark & Lisensi

Seluruh rekomendasi kode wajib mematuhi standar:
- Kebijakan Bersih: [`./references/design-intelligence-library/CLEAN-CODE-POLICY.md`](../../references/design-intelligence-library/CLEAN-CODE-POLICY.md)
- Register Lisensi: [`./references/design-intelligence-library/LICENSE-REGISTER.md`](../../references/design-intelligence-library/LICENSE-REGISTER.md)

### Ketentuan Mutlak:
1. **Zero AI Badges & Watermarks**: Tidak boleh ada lencana *"Built with AI"*, *"Powered by"*, atau watermark vendor.
2. **Zero Advertisements & Telemetry**: Tidak boleh ada tautan promosi, tracking pixel, atau request keluar yang tidak terdokumentasi.
3. **Integritas Lisensi Hukum**: Header hak cipta legal (seperti lisensi MIT atau GreenSock) pada bagian atas berkas kode sumber wajib dipertahankan utuh.
4. **Larangan Manipulasi Watermark**: Dilarang menyembunyikan watermark berbayar via manipulasi CSS (`display: none !important`). Jika suatu sumber mewajibkan watermark, sumber tersebut berstatus **FAIL** dan tidak boleh dipakai.

---

## 8. Format Output Rekomendasi

Sesuaikan kedalaman output dengan skala tugas:

### A. Untuk Tugas Sederhana / Spesifik
Berikan langsung arah desain ringkas, kode komponen bersih, dan penjelasan adaptasi framework tanpa laporan bertele-tele.

### B. Untuk Proyek Besar / Arsitektur Antarmuka Baru
Susun rekomendasi menggunakan struktur:

1. **Design Direction**: Konsep visual, tipografi, palet warna, dan hierarki.
2. **Component Strategy**: Sumber referensi yang dipilih, alasan pemilihan, dan alternatif yang ditolak.
3. **Technical Architecture**: Adaptasi framework, manajemen state, strategi animasi, dan isolasi dependensi.
4. **Quality & Compliance**: Aksesibilitas (WCAG), anggaran performa, status lisensi, dan kebersihan kode.
5. **Implementation Steps**: Langkah-langkah bedah perubahan berkas secara berurutan.


---

## Catatan Portabilitas & Protokol Resolusi Pustaka
Saat skill ini berada di dalam paket toolkit, pangkalan data referensi diakses melalui relative path:
../../references/design-intelligence-library/
Jika skill ini dipasang mandiri di lingkungan global agen (~/.gemini/config/skills/ atau ~/.claude/skills/), salin folder eferences/design-intelligence-library ke direktori referensi agen Anda (~/.gemini/references/ atau direktori docs proyek).


