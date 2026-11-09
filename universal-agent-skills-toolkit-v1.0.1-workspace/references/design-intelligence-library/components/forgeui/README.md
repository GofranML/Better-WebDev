# Referensi Sumber: ForgeUI

---

## 1. Metadata Sumber
- **Nama Sumber**: ForgeUI
- **Official URL**: https://github.com/AmanShakya0018/forgeui
- **Repository URL**: https://github.com/AmanShakya0018/forgeui
- **Framework**: Next.js 16, React 19, Tailwind CSS v4, Tiptap
- **Kategori**: UI Components & Template Builder
- **Tujuan Penggunaan**: Pustaka komponen terstruktur untuk layout aplikasi modern, editor konten modular, dan arsitektur Next.js terbaru.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Katalog Komponen Terpilih
1. **Application Shells & Layouts**: Struktur dashboard dengan sidebar yang dapat diciutkan dan header kontekstual.
2. **Modular Content Cards**: Kartu presentasi data dengan pembagian header, body, dan action bar yang konsisten.
3. **Complex Form Wrappers**: Tata letak formulir multi-kolom dengan validasi visual state.
4. **Rich Content Container**: Penampung teks berformat hasil rendering editor tanpa konflik styling global.

---

## 3. Dependensi & Persyaratan Instalasi
- **Kebutuhan Dependensi**:
  - `tailwindcss` (v4 didukung secara native)
  - Modul Tiptap (opsional, hanya jika fitur rich editor digunakan)
- **Catatan Instalasi**: *Hanya informasi, dilarang menjalankan instalasi sekarang.* Ambil murni struktur komponen yang dibutuhkan tanpa mengimpor editor Tiptap jika proyek hanya memerlukan layout kartu.

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: MIT License.
- **Batasan Penggunaan Komersial**: Bebas digunakan untuk produk komersial tanpa royalti.
- **Kewajiban**: Pertahankan header lisensi MIT pada berkas kode sumber.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **PASS**
- **Watermark Status**: PASS (Tidak ada watermark AI).
- **Advertisement Status**: PASS (Bebas iklan pihak ketiga).
- **Promotional Branding Status**: PASS (Tidak ada injeksi tautan promosi).
- **Telemetry Status**: PASS (Kode inti bebas dari skrip pelacak).
- **External Network Behavior**: PASS (Berjalan lokal di sisi server maupun klien).

---

## 6. Panduan Adaptasi Framework
- **Ke Next.js / React**: Kompatibel 100% secara langsung dengan Next.js App Router dan Server Components.
- **Ke Laravel Blade**:
  1. Ambil tata letak grid dan flexbox-nya.
  2. Pisahkan struktur menjadi komponen Blade: `<x-app-layout>`, `<x-card>`.
  3. Hindari memindahkan modul editor Tiptap yang rumit ke Blade; gunakan textarea standar dengan library JS mandiri jika diperlukan.

---

## 7. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Repositori ForgeUI dibangun di atas Next.js 16 dan React 19 dengan lisensi MIT terbuka.
- **Asumsi**: Modul editor konten di dalamnya opsional dan dapat dipisahkan dari komponen tata letak visual dasar.
- **Rekomendasi**: Manfaatkan ForgeUI sebagai acuan arsitektur layout dan kartu terstruktur; isolasi ekstensi Tiptap hanya jika pengguna secara spesifik meminta fitur rich text editor.
