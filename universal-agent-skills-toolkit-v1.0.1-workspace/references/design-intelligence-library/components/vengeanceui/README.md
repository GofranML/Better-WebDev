# Referensi Sumber: VengeanceUI

---

## 1. Metadata Sumber
- **Nama Sumber**: VengeanceUI
- **Official URL**: https://vengeanceui.com (atau portal preview terkait)
- **Repository URL**: https://github.com/Ashutoshx7/VengeanceUI
- **Framework**: Next.js, React, Tailwind CSS
- **Kategori**: UI Components
- **Tujuan Penggunaan**: Penyedia cuplikan komponen antarmuka modern (kartu interaktif, hero sections, tombol animasi, border glowing) bergaya gelap/minimalis.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Katalog Komponen Terpilih
1. **Interactive Glow Cards**: Kartu dengan efek sorot kursor menggunakan pseudo-elements dan transisi Tailwind.
2. **Gradient Border Buttons**: Tombol dengan batas gradien dinamis tanpa JavaScript berat.
3. **Glassmorphism Navbars**: Bilah navigasi dengan blur backdrop dan kontras teruji.
4. **Minimalist Form Inputs**: Field input dengan floating labels dan animasi fokus tajam.

---

## 3. Dependensi & Persyaratan Instalasi
- **Kebutuhan Dependensi**:
  - `tailwindcss` (versi 3 atau 4)
  - `lucide-react` (opsional, untuk ikonografi)
- **Catatan Instalasi**: *Hanya informasi, dilarang menjalankan instalasi sekarang.* Komponen bersifat *copy-paste* mandiri (mirip filosofi shadcn/ui), tidak memerlukan paket monolitik pihak ketiga.

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: MIT License.
- **Batasan Penggunaan Komersial**: Bebas digunakan untuk aplikasi komersial maupun pribadi tanpa royalti.
- **Kewajiban**: Header lisensi MIT tetap disertakan pada berkas kode sumber asli. Tidak ada kewajiban menampilkan kredit visual di antarmuka web pengguna.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **PASS**
- **Watermark Status**: PASS (Tidak ada watermark atau badge AI).
- **Advertisement Status**: PASS (Bebas iklan pihak ketiga).
- **Promotional Branding Status**: PASS (Tidak menyuntikkan tautan luar ke DOM).
- **Telemetry Status**: PASS (100% offline, tanpa pelacak).
- **External Network Behavior**: PASS (Komponen berjalan di klien tanpa koneksi keluar).

---

## 6. Panduan Adaptasi Framework
- **Ke Next.js / React**: Salin langsung berkas komponen `.tsx`.
- **Ke Laravel Blade**:
  1. Ganti `className` menjadi `class`.
  2. Ganti ikon `lucide-react` dengan ikon SVG lokal dari [`tools/lucide-svg`](../../tools/lucide-svg).
  3. Konversi state buka-tutup (jika ada) ke Alpine.js atau Vanilla JS.

---

## 7. Contoh Implementasi Bersih (Pola Kartu)

```html
<!-- Implementasi Bersih untuk Blade / Tailwind -->
<div class="group relative rounded-2xl border border-neutral-800 bg-neutral-950 p-6 transition-all duration-300 hover:border-neutral-700 hover:shadow-xl">
    <div class="flex items-center gap-4">
        <div class="rounded-lg bg-neutral-900 p-2 text-neutral-200">
            <!-- Ikon lokal SVG -->
            <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"/>
            </svg>
        </div>
        <h3 class="text-lg font-semibold text-white">Fitur Terakselerasi</h3>
    </div>
    <p class="mt-3 text-sm text-neutral-400">Pola kartu teroptimasi tanpa dependensi runtime tambahan.</p>
</div>
```

---

## 8. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Repositori GitHub menggunakan lisensi MIT dan berisi komponen berbasis Tailwind CSS murni.
- **Asumsi**: Pengguna memiliki konfigurasi Tailwind CSS yang mendukung variabel warna standar (`neutral-800`, `neutral-950`).
- **Rekomendasi**: Gunakan cuplikan komponen VengeanceUI sebagai inspirasi layout kartu dan hero section, salin kode secara bedah (*surgical*), dan hindari mengunduh seluruh repositori.

