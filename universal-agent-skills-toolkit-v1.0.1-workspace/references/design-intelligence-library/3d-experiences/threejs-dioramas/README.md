# Referensi Sumber: Three.js Dioramas (Alternatif 3D Bersih Bebas Watermark)

---

## 1. Metadata Sumber
- **Nama Sumber**: Three.js Dioramas
- **Official URL**: https://threejs.org
- **Lokasi Repositori Lokal Terverifikasi**: [`../../tools/dioramas`](../../tools/dioramas)
- **Framework**: Universal (Three.js, WebGL, GSAP, Rapier Physics)
- **Kategori**: 3D Experiences & Interactive Dioramas
- **Tujuan Penggunaan**: Implementasi grafis 3D interaktif murni (model 3D, pencahayaan bayangan, fisika tumbukan, dan pergerakan kamera) sebagai pengganti Spline Free Tier yang membawa watermark wajib.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Alasan Evaluasi & Pengecualian Spline
- **Audit Spline (spline.design)**:
  - Spline pada akun gratis (Free Plan) secara sepihak menyematkan logo interaktif *"Built with Spline"* di pojok bawah canvas 3D.
  - Sesuai Kebijakan Bersih Bagian 16, dilarang mem-bypass watermark via CSS atau skrip DOM removal.
  - Oleh karena itu, Spline Free Tier berstatus **FAIL** untuk integrasi produksi bersih.
- **Solusi Bersih Three.js Lokal**:
  - Repositori lokal [`tools/dioramas`](../../tools/dioramas) menyediakan arsitektur 3D Three.js murni, mandiri, bebas watermark, dan 100% self-hosted.

---

## 3. Katalog Pola 3D Terpilih
1. **Interactive Product Diorama**: Penampil model produk 3D dengan kontrol rotasi mouse dan batasan sudut orbit (*OrbitControls*).
2. **Atmospheric Lighting & Shadows**: Pengaturan cahaya terarah (*directional light*), pencahayaan ambient, dan bayangan lembut berbasis map resolusi tinggi.
3. **Physics-Driven Interactions**: Interaksi gravitasi dan tumbukan sederhana menggunakan engine Rapier.js lokal.
4. **Camera Rail Path**: Pergerakan kamera 3D yang disinkronkan dengan posisi gulir layar (*ScrollTrigger* via GSAP).

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: MIT License (Three.js dan dioramas).
- **Batasan Penggunaan Komersial**: Bebas digunakan untuk aplikasi komersial tanpa royalti atau batasan penayangan.
- **Kewajiban**: Pertahankan header lisensi MIT pada berkas kode sumber.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **PASS**
- **Watermark Status**: PASS (Zero watermark, 100% bebas dari logo vendor atau AI badge).
- **Advertisement Status**: PASS (Bebas iklan komersial).
- **Promotional Branding Status**: PASS (Tidak ada injeksi tautan luar).
- **Telemetry Status**: PASS (Semua aset GLTF/GLB dan kode shader dimuat lokal tanpa tracking).
- **External Network Behavior**: PASS (100% offline).

---

## 6. Panduan Adaptasi Framework (Laravel Blade & React)
- **Struktur HTML/Blade**:
  ```html
  <div class="relative w-full h-[450px] overflow-hidden rounded-2xl bg-neutral-950 border border-neutral-800">
      <div id="dioramaContainer" class="w-full h-full"></div>
      <div class="absolute bottom-4 left-4 pointer-events-none">
          <span class="text-xs font-mono text-neutral-500 uppercase tracking-widest">3D Precision Telemetry</span>
      </div>
  </div>
  ```
- **Integrasi JS via Vite**: Muat modul secara dinamis (`import('./diorama-loader.js')`) hanya ketika wadah masuk ke viewport peramban (*IntersectionObserver*) untuk menghemat memori.

---

## 7. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Pustaka Three.js dan repositori `tools/dioramas` dapat dijalankan mandiri secara offline tanpa memerlukan API cloud eksternal.
- **Asumsi**: Proyek memiliki aset model 3D biner berformat `.glb` yang telah dioptimasi kompresinya (misalnya via Draco compression).
- **Rekomendasi**: Selalu utamakan Three.js lokal dari `tools/dioramas` untuk kebutuhan 3D produksi bersih; jangan menghubungkan proyek ke cloud Spline kecuali pengguna secara tertulis menyediakan akun berbayar resmi.

