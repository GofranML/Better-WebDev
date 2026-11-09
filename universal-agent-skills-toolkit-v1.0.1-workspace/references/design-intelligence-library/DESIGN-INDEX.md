# Indeks Desain & Taksonomi Komponen

Dokumen ini menyediakan indeks navigasi terstruktur untuk seluruh aset, pola, dan sumber referensi di dalam Design Intelligence Library.

---

## 1. Master Taksonomi & Matriks Sumber

| ID | Nama Sumber | Kategori Utama | Framework Target | Kompleksitas | Kebutuhan Dependensi | Lisensi | Status Kebijakan Bersih | Sasaran Performa | Standar Aksesibilitas |
|---|---|---|---|:---:|---|---|:---:|:---:|:---:|
| **SRC-01** | **VengeanceUI** | UI Components | Next.js, React | Rendah ke Sedang | Tailwind CSS, Lucide Icons | MIT | **PASS** | Ringan (<10KB JS) | Semantic HTML, Focus State |
| **SRC-02** | **Animate UI** | Motion Components | React, Tailwind | Sedang | Motion / Framer Motion | MIT + Commons Clause | **CONDITIONAL** | 60 FPS GPU-accelerated | Reduced Motion Support |
| **SRC-03** | **Uiverse Galaxy** | Micro-elements | Laravel Blade, HTML/CSS | Rendah | Nol dependensi (Pure CSS) | MIT / CC0 | **PASS** | Sangat Ringan (CSS only) | Perlu pengecekan kontras |
| **SRC-04** | **ForgeUI** | Complex UI & Layouts | Next.js 16, React 19 | Sedang ke Tinggi | Tailwind v4, Lucide | MIT | **PASS** | Teroptimasi SSR | WAI-ARIA Compliant |
| **SRC-05** | **Uilora** | SaaS Components | React, Web | Sedang | Variatif | Proprietary SaaS | **CONDITIONAL** | Menengah | Evaluasi per komponen |
| **SRC-06** | **Shaders** | Visual Effects | WebGPU, Canvas | Tinggi | WebGPU context browser | MIT | **PASS** | Hardware Offload | Fallback CSS wajib |
| **SRC-07** | **Spline (Evaluasi)** | 3D Experiences | WebGL Viewer | Tinggi | Spline Runtime / Cloud CDN | Proprietary | **FAIL (Free)** | Berat (>2MB runtime) | Rendah (Kanvas tertutup) |
| **SRC-08** | **Three.js (Dioramas)**| 3D Experiences | Canvas, Three.js | Tinggi | Three.js lokal | MIT / Open Source | **PASS** | Terkontrol (Self-hosted) | Fallback poster image |
| **SRC-09** | **Framer (Evaluasi)** | Design Platform | Web Hosting / Cloud | Tinggi | Cloud CDN Framer | Proprietary | **FAIL (Web Hosting)** | Bervariasi | Tergantung template |
| **SRC-10** | **Motion (tools/motion)**| Animation Engine | React, Vanilla JS | Sedang | Engine lokal mandiri | MIT | **PASS** | 60 FPS (<30KB) | Motion-safe hook |
| **SRC-11** | **Bklit UI** | Data Visualization | React, SVG, Blade | Sedang | Tailwind, SVG | MIT | **PASS** | Render SVG vektor cepat | ARIA role="img" + title |
| **SRC-12** | **GSAP** | Animation Platform | Universal (JS/Blade/React)| Sedang ke Tinggi | `gsap` library murni | GreenSock License | **PASS** | 60 FPS Timeline stabil | Accessible ticker pause |

---

## 2. Navigasi Berdasarkan Kebutuhan Antarmuka

### A. Komponen Antarmuka Statis & Interaktif Ringan
- **Kartu Produk & Blog**: Gunakan `components/vengeanceui` atau `components/forgeui`.
- **Tombol Unik, Toggle, Checkbox, Loader**: Gunakan `components/uiverse-galaxy` (langsung cocok untuk Blade dan React).
- **Navbar & Sidebar Drawer**: Gunakan pola layout dari `components/forgeui` yang diadaptasi via Tailwind.

### B. Animasi & Interaktivitas Dinamis
- **Transisi Elemen & Micro-interactions (React)**: Gunakan `animation-motion/motion` atau pola dari `animation-motion/animate-ui`.
- **ScrollTrigger, Timeline Beruntun, Parallax, SVG Morphing**: Wajib menggunakan `animation-motion/gsap`.
- **Animasi Sederhana di Laravel Blade**: Gunakan transisi CSS utility Tailwind atau GSAP ringan via script modul.

### C. Efek Visual Lanjut & Latar Belakang Interaktif
- **Latar Belakang Shader Cair / Geometris WebGPU**: Gunakan `visual-effects/shaders`.
- **Pengalaman 3D Interaktif**: Wajib menggunakan `3d-experiences/threejs-dioramas` (Three.js lokal). Dilarang mengintegrasikan Spline Free Tier untuk menghindari watermark.

### D. Dasbor & Telemetri Grafis
- **Grafik Tren, Bar Chart, Area Chart**: Gunakan `data-visualization/bklit-ui`.

---

## 3. Aturan Tata Kelola Pengambilan Aset (Governance Rule)

Agent AGY **dilarang menyalin aset secara acak**. Prosedur pengambilan komponen wajib mengikuti langkah:
1. Periksa ketersediaan komponen pada indeks di atas.
2. Pastikan framework proyek cocok (lihat matriks pada [`FRAMEWORK-COMPATIBILITY.md`](./FRAMEWORK-COMPATIBILITY.md)).
3. Cek apakah ada batasan komersial atau lisensi khusus pada [`LICENSE-REGISTER.md`](./LICENSE-REGISTER.md).
4. Terapkan sanitasi DOM sesuai [`CLEAN-CODE-POLICY.md`](./CLEAN-CODE-POLICY.md) sebelum kode disematkan ke berkas proyek pengguna.
