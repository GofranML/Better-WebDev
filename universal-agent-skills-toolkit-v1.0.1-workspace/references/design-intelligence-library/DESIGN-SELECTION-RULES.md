# Aturan Pemilihan Desain Cerdas & Pohon Keputusan

Dokumen ini memuat aturan inferensi cerdas bagi agent AGY dalam menentukan sumber pustaka yang optimal tanpa menimbulkan duplikasi dependensi atau pembengkakan bundle aplikasi.

---

## 1. Prinsip Utama Seleksi Cerdas (Minimalist & Single-Source Principle)

1. **Aturan Ortogonalitas**: Jangan menggunakan dua pustaka yang menyelesaikan masalah yang sama pada proyek yang sama.
   - Contoh: Jika proyek sudah menggunakan `tools/motion` untuk transisi komponen, jangan mengimpor modul transisi React lain.
   - Contoh: Jika animasi halaman berupa ScrollTrigger panjang, gunakan GSAP secara konsisten, bukan mencampur GSAP dengan library scroll lain.
2. **Kesesuaian Arsitektur Proyek**:
   - Jika proyek berbasis **Laravel Blade**: Utamakan sumber kode murni (Uiverse Galaxy, GSAP via script, Tailwind native). Jangan pernah memasang React runtime hanya untuk merender satu tombol atau kartu interaktif.
   - Jika proyek berbasis **Next.js / React**: Gunakan VengeanceUI, ForgeUI, Bklit UI, dan Motion engine lokal.
3. **Penyaringan Kualitas Keras (Hard Quality Gate)**:
   - Sumber dengan status **FAIL** (Spline Free Tier dan Framer Web Hosting) otomatis dicoret dari alur integrasi produksi.
   - Sumber dengan status **CONDITIONAL** wajib dibersihkan dari seluruh metadata vendor sebelum digabungkan.

---

## 2. Pohon Keputusan Pemilihan Sumber (Decision Tree)

```text
[Analisis Masalah Frontend Pengguna]
│
├── 1. Apakah proyek membutuhkan komponen form, kartu, atau layout dasar?
│   ├── Jika Framework = Laravel Blade:
│   │   └── Gunakan Uiverse Galaxy (Flat HTML/CSS) + DaisyUI/Tailwind utility.
│   └── Jika Framework = Next.js / React:
│       └── Gunakan VengeanceUI atau ForgeUI.
│
├── 2. Apakah proyek memerlukan interaktivitas gerak (animasi)?
│   ├── Apakah berupa hover ringan / dialog modal buka-tutup?
│   │   └── Gunakan Tailwind CSS transition / Alpine.js (Blade) atau CSS transition (React).
│   ├── Apakah berupa micro-interaction berbasis gestur atau physics?
│   │   └── Gunakan Motion engine (tools/motion).
│   └── Apakah berupa animasi timeline kompleks, ScrollTrigger, atau manipulasi SVG path?
│       └── Wajib gunakan GSAP (GreenSock).
│
├── 3. Apakah proyek memerlukan visualisasi data / dashboard?
│   └── Gunakan Bklit UI (pola SVG shadcn-compatible teroptimasi).
│
└── 4. Apakah proyek memerlukan grafis lanjut (3D / VFX)?
    ├── Apakah berupa background komputasi dinamis?
    │   └── Gunakan Shaders (WebGPU / WGSL Canvas) dengan fallback CSS gradient.
    └── Apakah berupa adegan objek 3D interaktif?
        └── Gunakan Three.js mandiri (tools/dioramas).
        └── TOLAK Spline Free Tier (Cegah watermark "Built with Spline").
```

---

## 3. Matriks Matriks Anti-Duplikasi

| Kebutuhan Fitur | Pilihan Utama Bersih | Pustaka yang Dilarang Ditambahkan | Alasan Pencegahan Duplikasi |
|---|---|---|---|
| **Animasi Reaktif (React)** | `tools/motion` (Lokal MIT) | Pustaka animasi React pihak ketiga lain | `tools/motion` sudah mandiri, performa tinggi, dan bebas telemetri. |
| **Animasi Timeline & Scroll** | GSAP (Official) | Animasi scroll pihak ketiga tak berlisensi | GSAP adalah standar industri dengan ScrollTrigger teruji bebas lag. |
| **Visual 3D Interaktif** | Three.js via `tools/dioramas` | Spline runtime gratis / embed cloud | Menghindari logo paksa *"Built with Spline"* dan dependensi cloud tertutup. |
| **Elemen Tombol & Input Blade** | Uiverse Galaxy (HTML/CSS) | Paket React UI di Laravel Blade | Menghindari runtime React 150KB+ hanya untuk micro-component. |
| **Grafik Dashboard** | Bklit UI (SVG / Lightweight) | Library grafik monolitik berukuran besar | Vektor SVG langsung dapat dirender cepat di server maupun klien. |

---

## 4. Prosedur Audit Otomatis Sebelum Implementasi

Sebelum menulis kode ke proyek pengguna, agent AGY harus menjalankan evaluasi 3 langkah:
1. *Cek Dependensi*: Apakah ada paket baru yang perlu diinstal di `package.json`? Jika ada, dapatkah fitur ini diwujudkan dengan paket yang sudah terpasang?
2. *Cek Kebersihan*: Apakah cuplikan kode memuat atribut pelacak, logo vendor, atau teks promosi? Jika ya, bersihkan sepenuhnya.
3. *Cek Lisensi*: Apakah ada kewajiban mencantumkan header hak cipta legal? Jika ya, sertakan di baris atas berkas kode sumber.
