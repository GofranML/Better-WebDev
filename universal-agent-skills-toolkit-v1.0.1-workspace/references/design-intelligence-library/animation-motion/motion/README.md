# Referensi Sumber: Motion (Local Engine)

---

## 1. Metadata Sumber
- **Nama Sumber**: Motion (sebelumnya dikenal sebagai Framer Motion)
- **Official URL**: https://motion.dev
- **Repository URL**: https://github.com/motiondivision/motion
- **Lokasi Repositori Lokal Terverifikasi**: [`../../tools/motion`](../../tools/motion)
- **Framework**: React, Vanilla JavaScript, Vue
- **Kategori**: Animation & Gesture Engine
- **Tujuan Penggunaan**: Mesin animasi mandiri dan deklaratif berperforma tinggi untuk antarmuka web, micro-interactions, drag gestures, layout morphing, dan transisi spring physics.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Keunggulan Repositori Lokal
1. **100% Offline & Mandiri**: Repositori lokal telah terkloning lengkap di folder `tools/motion`, bebas dari dependensi jaringan eksternal.
2. **Bebas Telemetri**: Versi open-source murni ini tidak memuat skrip pelacak atau koneksi cloud.
3. **Pemisahan dari Ekosistem SaaS Framer**: Pustaka ini berdiri sendiri sebagai open-source, sepenuhnya terpisah dari platform web builder Framer yang memiliki badge watermark.

---

## 3. Katalog Kemampuan Kunci
1. **Spring-Physics Animation**: Animasi berbasis fisika pegas tanpa kurva waktu kaku.
2. **Layout Projection**: Transisi tata letak otomatis yang mulus saat posisi elemen di DOM berubah (*shared layout transition*).
3. **Gesture Recognizers**: Penanganan drag, pan, hover, dan tap yang responsif di perangkat sentuh.
4. **Exit Animations**: Transisi pelepasan elemen DOM yang halus via `AnimatePresence`.

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: MIT License.
- **Batasan Penggunaan Komersial**: Bebas digunakan untuk aplikasi komersial apapun tanpa royalti atau batasan redistribusi.
- **Kewajiban**: Header lisensi MIT tetap dipertahankan pada berkas sumber. Tidak ada kewajiban menampilkan watermark atau kredit visual pada aplikasi web.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **PASS**
- **Watermark Status**: PASS (Zero watermark, zero AI branding).
- **Advertisement Status**: PASS (Bebas iklan).
- **Promotional Branding Status**: PASS (Bersih dari promosi vendor).
- **Telemetry Status**: PASS (Tidak ada pengiriman data telemetri).
- **Production Output Cleanliness**: PASS (Render DOM murni).

---

## 6. Panduan Adaptasi Framework
- **Ke React / Next.js**: Kompatibel native. Impor komponen `<motion.div>` langsung dari pustaka.
- **Ke Vanilla JS / Laravel Blade**:
  - Gunakan paket `motion/mini` untuk mengontrol animasi elemen DOM biasa via selektor:
    ```javascript
    import { animate } from "motion";
    animate(".box", { opacity: [0, 1], y: [20, 0] }, { duration: 0.4 });
    ```

---

## 7. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Pustaka Motion di folder `tools/motion` adalah monorepo resmi yang aktif dikembangkan dan berlisensi MIT.
- **Asumsi**: Pengguna menggunakan bundler modern seperti Vite pada proyek React atau Laravel.
- **Rekomendasi**: Prioritaskan Motion lokal sebagai solusi utama untuk seluruh animasi antarmuka React di lingkungan AGY, menggantikan ketergantungan pada SaaS pihak ketiga.

