# Referensi Sumber: Shaders (WebGPU / WGSL)

---

## 1. Metadata Sumber
- **Nama Sumber**: Shaders
- **Official URL**: https://shaders.dev
- **Repository URL**: https://github.com/shader-effects-inc/shaders
- **Framework**: Universal (WebGPU, WGSL, WebGL, Canvas API)
- **Kategori**: Visual Effects & Generative Graphics
- **Tujuan Penggunaan**: Pustaka efek visual deklaratif berbasis WebGPU dan bahasa shader WGSL untuk menghasilkan latar belakang dinamis, distorsi fluida, simulasi partikel, dan material grafis modern.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Katalog Efek Visual Terpilih
1. **Interactive Fluid Canvas**: Simulasi fluida interaktif yang bereaksi terhadap pergerakan kursor mouse.
2. **Dynamic Noise Gradients**: Gradien warna prosedural dengan distorsi gelombang matematika tanpa file video/gambar berat.
3. **Geometric Grid Distortion**: Grid perspektif dengan gelombang pergerakan data real-time.
4. **Metaball Fusion**: Penggabungan bola-bola cairan dinamis untuk latar belakang hero section.

---

## 3. Dependensi & Persyaratan Hardware / Browser
- **Kebutuhan Hardware & Browser**:
  - Browser modern dengan dukungan **WebGPU** aktif (Chrome 113+, Edge 113+, Firefox Nightly, Safari 18+).
  - Akselerasi hardware GPU aktif di sistem pengguna.
- **Strategi Fallback Wajib**:
  - Jika WebGPU tidak tersedia di peramban klien, sistem **wajib beralih otomatis** ke latar belakang CSS radial gradient alami atau kanvas WebGL sederhana tanpa memunculkan error di konsol.

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: MIT License pada engine inti dan distribusi skill resmi.
- **Batasan Penggunaan Komersial**: Bebas digunakan untuk aplikasi komersial tanpa royalti.
- **Kewajiban**: Pertahankan header lisensi MIT pada berkas kode sumber shader.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **PASS**
- **Watermark Status**: PASS (Kanvas grafis murni tanpa logo atau watermark vendor).
- **Advertisement Status**: PASS (Bebas iklan komersial).
- **Promotional Branding Status**: PASS (Tidak ada injeksi DOM promosi).
- **Telemetry Status**: PASS (Komputasi shader dieksekusi 100% lokal di GPU klien).
- **External Network Behavior**: PASS (Berjalan offline tanpa pemanggilan server eksternal).

---

## 6. Contoh Implementasi Bersih (Pola Fallback Kanvas)

```html
<!-- HTML / Blade Container dengan Fallback CSS -->
<div class="relative h-[500px] w-full overflow-hidden rounded-2xl bg-gradient-to-br from-neutral-950 via-neutral-900 to-black">
    <!-- Kanvas WebGPU -->
    <canvas id="gpuCanvas" class="absolute inset-0 h-full w-full opacity-0 transition-opacity duration-700"></canvas>
    
    <!-- Konten di atas Kanvas -->
    <div class="relative z-10 flex h-full items-center justify-center p-8 text-center">
        <h1 class="text-4xl font-extrabold text-white">Visual Effects Terakselerasi Hardware</h1>
    </div>
</div>

<script>
// Deteksi fitur ramah klien
async function initShader() {
    if (!navigator.gpu) {
        // Fallback: Biarkan latar belakang CSS aktif
        return;
    }
    const canvas = document.getElementById("gpuCanvas");
    const adapter = await navigator.gpu.requestAdapter();
    if (!adapter) return;
    
    // Inisialisasi WebGPU dan aktifkan visibilitas kanvas
    canvas.classList.remove("opacity-0");
    canvas.classList.add("opacity-100");
}
initShader();
</script>
```

---

## 7. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Shaders menggunakan standar WebGPU W3C modern dengan lisensi MIT terbuka.
- **Asumsi**: Sebagian pengguna akhir mungkin menggunakan perangkat lawas atau browser tanpa WebGPU.
- **Rekomendasi**: Selalu sediakan fallback visual berbasis CSS murni saat mengimplementasikan efek visual Shaders agar pengalaman pengguna tidak rusak di perangkat non-WebGPU.
