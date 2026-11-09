---
license: UNLICENSED (Copyright (c) 2026 Gofran / GFN Web. All rights reserved.)
name: shaders-webgpu-specialist
description: Specialized Visual Effects & GPU Graphics Engineering Skill for modern web applications. Expert in WebGPU, WGSL shader programming, WebGL2 fallback, Three.js local integration, procedural canvas backgrounds, multi-tier graceful degradation, GPU resource lifecycle cleanup, and clean output governance.
---

# Shaders & WebGPU Specialist

Skill spesialis ini bertindak sebagai *visual effects and GPU graphics engineering engine* di dalam ekosistem Antigravity CLI (AGY). Beroperasi di bawah koordinasi `master-design-intelligence`, skill ini bertanggung jawab merancang, mengoptimalkan, dan mengimplementasikan efek visual komputasi tinggi tanpa merusak stabilitas browser atau menguras daya perangkat secara berlebihan.

---

## 1. Tujuan & Tanggung Jawab Utama
- Mengimplementasikan grafis prosedural, efek partikel, dan simulasi kanvas interaktif berbasis GPU.
- Menentukan teknologi visual yang tepat (CSS Gradient vs Canvas 2D vs WebGL2 vs WebGPU vs Three.js).
- Menjamin arsitektur degradasi bertingkat (*multi-tier fallback*) agar antarmuka tidak rusak di peramban yang belum mendukung WebGPU.
- Menjaga kebersihan kode dari watermark vendor, iklan pihak ketiga, atau telemetri terselubung.

---

## 2. Kondisi Pemicu (Trigger Conditions)
Aktifkan skill ini ketika:
- Pengguna meminta latar belakang visual prosedural dinamis (fluida, distorsi noise, grid gelombang).
- Terdapat kebutuhan komputasi grafis WebGPU menggunakan bahasa shader WGSL.
- Terdapat kebutuhan integrasi kanvas WebGL / WebGPU ke dalam layout web (React atau Blade).
- Diperlukan optimasi shader, pembersihan resource GPU, atau arsitektur fallback grafis.

---

## 3. Seleksi Teknologi Visual (Rendering Technology Selection)

Terapkan prinsip efisiensi komputasi bertingkat:

```text
[Kebutuhan Efek Visual Antarmuka]
â”‚
â”œâ”€â”€ Apakah berupa gradien warna statis atau transisi warna sederhana?
â”‚   â””â”€â”€ Gunakan CSS Radial / Linear Gradient. Dilarang memuat kanvas GPU.
â”‚
â”œâ”€â”€ Apakah berupa bentuk 2D prosedural ringan tanpa komputasi paralel?
â”‚   â””â”€â”€ Gunakan Canvas 2D API sederhana.
â”‚
â”œâ”€â”€ Apakah berupa adegan 3D lengkap (model, pencahayaan, bayangan, kamera orbit)?
â”‚   â””â”€â”€ Gunakan Three.js lokal mandiri (./tools/graphics-3d/dioramas).
â”‚
â””â”€â”€ Apakah berupa simulasi partikel masif, distorsi matematika cairan, atau WGSL shader?
    â””â”€â”€ Gunakan WebGPU API (dengan jalur fallback WebGL2 / CSS wajib).
```

---

## 4. Rekayasa WebGPU & WGSL Fundamentals

### A. Alur Inisialisasi Adapter & Device
Inisialisasi WebGPU wajib menangani seluruh potensi kegagalan hardware secara eksplisit:
```javascript
async function initWebGPUPipeline(canvas) {
    if (!navigator.gpu) {
        return { success: false, reason: "navigator.gpu tidak didukung" };
    }
    const adapter = await navigator.gpu.requestAdapter();
    if (!adapter) {
        return { success: false, reason: "GPU Adapter null" };
    }
    const device = await adapter.requestDevice();
    const context = canvas.getContext("webgpu");
    const format = navigator.gpu.getPreferredCanvasFormat();
    context.configure({ device, format, alphaMode: "premultiplied" });
    return { success: true, device, context, format };
}
```

### B. WGSL Shader Programming
- Tulis kode shader WGSL secara modular dengan pemisahan struktur Vertex dan Fragment yang jelas.
- Hindari loop komputasi berat di dalam fragment shader yang memicu overhead GPU per piksel.

---

## 5. Arsitektur Fallback Bertingkat (4-Tier Graceful Fallback)

Setiap implementasi shader **wajib menyertakan strategi fallback**:
1. **Tier 1 (WebGPU / WGSL)**: Jalur utama terakselerasi hardware native.
2. **Tier 2 (WebGL2)**: Jika WebGPU null, alihkan shader ke WebGL2 fragment shader (GLSL ES 3.0).
3. **Tier 3 (Canvas 2D)**: Jika WebGL2 tidak tersedia, gunakan manipulasi pixel ringan Canvas 2D.
4. **Tier 4 (CSS Dynamic Gradient)**: Fallback mutlak tanpa JavaScript. Menampilkan gradien radial gelap bernuansa sama agar layout dan kontras teks tetap terbaca 100%.

---

## 6. Integrasi Framework & Tiga Dimensi (Three.js)

### A. Three.js Lokal Bebas Watermark
- Untuk kebutuhan objek 3D atau adegan interaktif, manfaatkan Three.js lokal dari [`./tools/graphics-3d/dioramas`](./tools/graphics-3d/dioramas).
- **Tolak Spline Free Tier**: Sesuai kebijakan Bagian 16, Spline Free Tier dilarang karena menyuntikkan logo wajib.

### B. Integrasi ke Laravel Blade
- Pasang wadah kanvas dengan layer CSS fallback di bawahnya:
  ```html
  <div class="relative w-full h-[400px] overflow-hidden rounded-2xl bg-neutral-950 border border-neutral-800">
      <div id="cssFallback" class="absolute inset-0 bg-radial-gradient"></div>
      <canvas id="gpuCanvas" class="absolute inset-0 w-full h-full opacity-0 transition-opacity duration-500"></canvas>
      <div class="relative z-10 p-6 pointer-events-none">
          {{ $slot }}
      </div>
  </div>
  ```

---

## 7. Kinerja GPU & Konsumsi Daya (GPU Performance)

- **Batasan Device Pixel Ratio**: Batasi `devicePixelRatio` maksimal 2 (`Math.min(window.devicePixelRatio, 2)`) untuk mencegah beban render berlebih pada layar 4K/Retina.
- **IntersectionObserver Lifecycle**: Hentikan loop animasi (`cancelAnimationFrame`) secara otomatis saat kanvas berada di luar viewport layar untuk menghemat baterai.
- **Dukungan Reduced Motion**: Nonaktifkan animasi distorsi shader jika pengguna mengaktifkan preferensi `prefers-reduced-motion`.

---

## 8. Tata Kelola Lisensi & Output Bersih

Sesuai dengan ketentuan Bagian 16 dan [`CLEAN-CODE-POLICY.md`](../../references/design-intelligence-library/CLEAN-CODE-POLICY.md):
1. **Lisensi MIT**: Pertahankan header lisensi MIT pada berkas kode sumber shader WGSL.
2. **Zero Watermarks**: Kanvas grafis murni dilarang memuat logo vendor, badge promosi, atau teks kredit di dalam rendering GPU.
3. **Zero Telemetry**: Komputasi grafis dieksekusi 100% lokal di GPU pengguna tanpa transmisi jaringan keluar.

---

## 9. Rujukan Dokumentasi Lokal
- Panduan Lengkap Shaders: [`visual-effects/shaders/README.md`](../../references/design-intelligence-library/visual-effects/shaders/README.md)
- Alternatif Three.js Bebas Watermark: [`3d-experiences/threejs-dioramas/README.md`](../../references/design-intelligence-library/3d-experiences/threejs-dioramas/README.md)
- Repositori Three.js Lokal: [`tools/graphics-3d/dioramas`](../../tools/graphics-3d/dioramas)




