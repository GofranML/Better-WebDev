# Referensi Sumber: Uilora

---

## 1. Metadata Sumber
- **Nama Sumber**: Uilora
- **Official URL**: https://www.uilora.com
- **Repository URL**: Tidak tersedia (Proprietary Registry)
- **Framework**: React, React Native, Tailwind CSS
- **Kategori**: SaaS Component Registry & Mobile UI
- **Tujuan Penggunaan**: Dokumentasi evaluasi pola antarmuka SaaS modern dan komponen adaptif mobile/web.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Katalog Komponen Terpilih
1. **Adaptive Navigation Drawer**: Pola drawer geser mobile yang bertransformasi menjadi sidebar di desktop.
2. **Settings Section Templates**: Struktur baris pengaturan akun dengan toggle dan status indikator.
3. **Stat Cards with Badges**: Kartu ringkasan metrik dengan persentase perubahan nilai.

---

## 3. Dependensi & Persyaratan Instalasi
- **Kebutuhan Dependensi**: Variatif bergantung komponen yang diakses secara publik.
- **Catatan Instalasi**: Dilarang menginstal CLI Uilora sebelum verifikasi telemetri selesai. Cukup telaah pola antarmukanya secara konseptual.

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: Proprietary SaaS Registry (Tersedia tier gratis publik dengan batasan ToS).
- **Batasan Penggunaan Komersial**: Komponen publik bebas dimanfaatkan sebagai referensi; dilarang membypass akses template berbayar.
- **Kewajiban**: Patuhi Terms of Service Uilora.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **CONDITIONAL**
- **Watermark Status**: CONDITIONAL (Beberapa template publik dapat menyertakan link balik di footer).
- **Advertisement Status**: CONDITIONAL (Website mempromosikan subscription plan).
- **Promotional Branding Status**: CONDITIONAL (Metadata template wajib disanitasi).
- **Telemetry Status**: CONDITIONAL (CLI registry terhubung ke server Uilora).
- **External Network Behavior**: CONDITIONAL (Pengambilan via registry membutuhkan koneksi API).

---

## 6. Panduan Adaptasi & Mitigasi Risiko
- **Mitigasi Wajib**:
  1. Jangan gunakan installer otomatis atau token autentikasi Uilora pada repositori proyek.
  2. Salin pola arsitektur secara manual ke dalam komponen Tailwind murni.
  3. Hapus seluruh komentar atau metadata yang merujuk ke endpoint Uilora.

---

## 7. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Uilora adalah platform registry komponen komersial/freemium tertutup (proprietary) dengan dokumentasi preview publik.
- **Asumsi**: Pengguna hanya tertarik pada pola layout SaaS dan bukan dependensi internal platform.
- **Rekomendasi**: Simpan Uilora hanya sebagai referensi evaluasi konseptual. Jangan jadikan Uilora sebagai dependensi langsung dalam alur kerja produksi AGY.
