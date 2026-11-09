# Referensi Sumber: Bklit UI

---

## 1. Metadata Sumber
- **Nama Sumber**: Bklit UI
- **Official URL**: https://bklit.com (atau portal preview terkait)
- **Repository URL**: https://github.com/bklit/bklit-ui
- **Framework**: React, Next.js, Tailwind CSS, shadcn/ui compatible
- **Kategori**: Data Visualization & Dashboard Components
- **Tujuan Penggunaan**: Pustaka komponen grafik dan visualisasi data yang kompatibel dengan ekosistem shadcn/ui untuk membangun dashboard telemetri, grafik tren garis, metrik batang, dan kartu analitik.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Katalog Komponen Terpilih
1. **Precision Telemetry Area Charts**: Grafik area dengan gradien gradasi halus untuk menampilkan fluktuasi metrik waktu-nyata (misalnya kualitas udara atau performa server).
2. **Comparative Bar Charts**: Grafik batang bertumpuk dengan label nilai yang jelas dan kontras tinggi.
3. **Metric KPI Cards with Trend Sparklines**: Kartu ringkasan angka kunci dengan grafik mini di latar belakang kartu.
4. **Interactive Donut Status Indicators**: Indikator status berbentuk cincin untuk alokasi kapasitas atau proporsi kategori.

---

## 3. Dependensi & Persyaratan Instalasi
- **Kebutuhan Dependensi**:
  - `tailwindcss`
  - Elemen SVG murni atau pustaka charting ringan (seperti Recharts standar shadcn).
- **Catatan Instalasi**: *Hanya informasi, dilarang menjalankan instalasi sekarang.* Prioritaskan penyalinan kode markup SVG dan konfigurasi warna Tailwind.

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: MIT License (Komponen shadcn-compatible terbuka; studio Bklit bersifat proprietary).
- **Batasan Penggunaan Komersial**: Cuplikan komponen bebas royalti untuk aplikasi komersial.
- **Kewajiban**: Pertahankan header lisensi MIT pada berkas kode sumber.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **PASS**
- **Watermark Status**: PASS (Tidak ada watermark atau badge AI).
- **Advertisement Status**: PASS (Bebas iklan pihak ketiga).
- **Promotional Branding Status**: PASS (Markup SVG tidak memuat link promosi vendor).
- **Telemetry Status**: PASS (Render vektor murni di memori klien).
- **External Network Behavior**: PASS (100% offline).

---

## 6. Panduan Adaptasi Framework
- **Ke React / Next.js**: Kompatibel native dengan ekosistem shadcn UI.
- **Ke Laravel Blade**:
  1. Ekstrak jalur SVG (`<path>`, `<rect>`, `<circle>`).
  2. Hitung koordinat titik data di sisi server (PHP Blade) atau gunakan library charting client-side ringan (seperti Chart.js murni) yang dibungkus komponen Blade partials.

---

## 7. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Repositori GitHub `bklit/bklit-ui` mendistribusikan blok komponen grafik berbasis Tailwind dan SVG dengan lisensi MIT terbuka.
- **Asumsi**: Proyek memiliki struktur data JSON atau array PHP yang siap dipetakan ke koordinat grafik.
- **Rekomendasi**: Manfaatkan pola Bklit UI untuk proyek dashboard analitik dan dasbor telemetri IoT agar visualisasi data tampil tajam dan profesional tanpa membebani halaman dengan library charting raksasa.
