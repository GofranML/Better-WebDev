# Referensi Sumber: Uiverse Galaxy

---

## 1. Metadata Sumber
- **Nama Sumber**: Uiverse Galaxy
- **Official URL**: https://uiverse.io
- **Repository URL**: https://github.com/uiverse-io/galaxy
- **Framework**: Universal (Pure HTML & CSS, Tailwind, React, Vue)
- **Kategori**: Micro-elements & UI Widgets
- **Tujuan Penggunaan**: Gudang cuplikan elemen antarmuka mikro (tombol animasi unik, switches, loaders, checkboxes, radio buttons, dan kartu CSS murni) tanpa ketergantungan JavaScript.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Katalog Komponen Terpilih
1. **Interactive State Buttons**: Tombol dengan efek border gradient, ripple, atau isometric depth berbasis CSS murni.
2. **Accessible Custom Toggles**: Sakelar switch bertema modern dengan fallback checkbox HTML native.
3. **Hardware-Accelerated Loaders**: Indikator pemuatan berbasis CSS keyframes (spinners, pulse, bars) yang sangat ringan.
4. **Pure CSS Tooltips & Badges**: Elemen notifikasi mengambang tanpa manipulasi DOM runtime.

---

## 3. Dependensi & Persyaratan Instalasi
- **Kebutuhan Dependensi**: **0 Dependensi (Zero Dependency)**.
- **Catatan Instalasi**: Tidak ada instalasi npm. Cukup salin cuplikan kode HTML dan CSS langsung ke proyek.

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: MIT License / Creative Commons (CC0) bervariasi per kontributor komunitas.
- **Batasan Penggunaan Komersial**: Bebas digunakan untuk aplikasi komersial.
- **Kewajiban**: Disarankan mempertahankan komentar nama kreator asli di bagian atas blok CSS jika dicantumkan, tanpa perlu menampilkan teks kredit pada antarmuka web.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **PASS**
- **Watermark Status**: PASS (Elemen tidak memiliki watermark visual).
- **Advertisement Status**: PASS (Bebas iklan banner atau link sponsor di dalam kode yang disalin).
- **Promotional Branding Status**: PASS (Tidak ada tautan uiverse yang diinjeksikan secara otomatis).
- **Telemetry Status**: PASS (CSS murni tanpa eksekusi skrip pelacak).
- **External Network Behavior**: PASS (100% offline).

---

## 6. Panduan Adaptasi Framework
- **Ke Laravel Blade**: Sumber paling ideal untuk Laravel Blade karena tidak memerlukan bundler JavaScript sama sekali. Tempatkan CSS di stylesheet utama atau komponen `<style>` lokal dan salin markup HTML ke Blade partials.
- **Ke Next.js / React**: Ubah `class` ke `className` atau gunakan modul CSS lokal / Tailwind inline utility.

---

## 7. Contoh Implementasi Bersih (Switch Toggle)

```html
<!-- HTML / Blade Native Toggle -->
<label class="relative inline-flex cursor-pointer items-center">
    <input type="checkbox" value="" class="peer sr-only">
    <div class="h-6 w-11 rounded-full bg-neutral-800 peer-checked:bg-emerald-500 peer-focus:outline-none peer-focus:ring-2 peer-focus:ring-emerald-400 peer-focus:ring-offset-2 peer-focus:ring-offset-neutral-950 after:absolute after:left-[2px] after:top-[2px] after:h-5 after:w-5 after:rounded-full after:bg-white after:transition-all after:content-[''] peer-checked:after:translate-x-full"></div>
    <span class="ml-3 text-sm font-medium text-neutral-300">Mode Notifikasi</span>
</label>
```

---

## 8. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Repositori GitHub `galaxy` berisi berkas JSON dan HTML/CSS dari komunitas uiverse yang bersifat terbuka dan dapat dijalankan tanpa runtime bundler.
- **Asumsi**: Pengembang melakukan sanitasi cepat terhadap komentar HTML untuk membuang link spam jika ditemukan pada kontribusi pengguna tertentu.
- **Rekomendasi**: Prioritaskan Uiverse Galaxy untuk kebutuhan tombol khusus, toggle, dan loader animasi pada proyek Laravel Blade karena kompatibilitasnya mencapai 100% tanpa komputasi JavaScript.
