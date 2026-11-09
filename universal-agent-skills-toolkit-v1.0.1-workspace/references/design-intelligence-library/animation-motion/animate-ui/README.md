# Referensi Sumber: Animate UI

---

## 1. Metadata Sumber
- **Nama Sumber**: Animate UI
- **Official URL**: https://animate-ui.com (atau portal dokumentasi terkait)
- **Repository URL**: https://github.com/imskyleen/animate-ui
- **Framework**: React, Next.js, Tailwind CSS, Motion (Framer Motion)
- **Kategori**: Animation & Motion Components
- **Tujuan Penggunaan**: Koleksi pola animasi micro-interactions siap pakai untuk komponen antarmuka modern (hover effects, text reveals, animated dialogs, drawer transitions).
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Katalog Pola Animasi Terpilih
1. **Text Reveal by Word / Character**: Teks yang muncul bertahap per kata dengan interpolasi opasitas dan translasi vertikal.
2. **Magnetic Hover Buttons**: Tombol yang sedikit tertarik mendekati posisi kursor saat berada di area hover.
3. **Smooth Accordion Expansion**: Panel akordeon dengan transisi tinggi otomatis berbasis physics springs.
4. **Interactive Bento Grid Animations**: Tata letak grid kartu bento dengan efek sorot dan transisi kedalaman visual.

---

## 3. Dependensi & Persyaratan Instalasi
- **Kebutuhan Dependensi**:
  - `motion` (atau pustaka `tools/motion` lokal)
  - `tailwindcss`
- **Catatan Instalasi**: *Hanya informasi, dilarang menjalankan instalasi sekarang.* Prioritaskan penyalinan kode komponen manual; hindari penggunaan npx CLI otomatis sebelum audit telemetri selesai.

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: MIT License dengan *Commons Clause*.
- **Batasan Penggunaan Komersial**:
  - Diizinkan bebas untuk proyek klien, situs portofolio, landing page komersial, dan aplikasi web internal.
  - **Dilarang Keras**: Menjual kembali cuplikan kode ini sebagai produk UI kit atau template komersial yang bersaing langsung dengan Animate UI.
- **Kewajiban**: Pertahankan teks lisensi Commons Clause di header berkas sumber. Tidak memerlukan atribusi visual di UI.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **CONDITIONAL**
- **Watermark Status**: PASS (Komponen kode murni bebas watermark).
- **Advertisement Status**: PASS (Tidak ada iklan pihak ketiga).
- **Promotional Branding Status**: PASS (Tidak ada tautan promosi yang diinjeksikan).
- **Telemetry Status**: CONDITIONAL (Paket CLI resmi berpotensi mengirim ping versi; oleh karena itu penyalinan manual jauh lebih aman).
- **External Network Behavior**: PASS (Komponen animasi berjalan 100% lokal).

---

## 6. Panduan Adaptasi Framework
- **Ke React / Next.js**: Kompatibel penuh; pasangkan dengan engine lokal [`tools/motion`](../../tools/motion).
- **Ke Laravel Blade**:
  1. Pola transisi spring dapat diterjemahkan ke kurva cubic-bezier pada Tailwind CSS.
  2. Pola text reveal kompleks dapat diimplementasikan via GSAP SplitText atau fungsi JS sederhana per kata.

---

## 7. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Repositori GitHub `imskyleen/animate-ui` berisi komponen React berbasis Motion dan Tailwind CSS dengan lisensi Commons Clause.
- **Asumsi**: Proyek memiliki engine animasi dasar yang kompatibel dengan API Motion.
- **Rekomendasi**: Manfaatkan pola Animate UI sebagai inspirasi micro-interactions; gunakan engine lokal `tools/motion` untuk mengeksekusinya tanpa mengambil dependensi eksternal tambahan.

