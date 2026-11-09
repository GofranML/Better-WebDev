# Panduan Kompatibilitas & Adaptasi Framework

Dokumen ini memuat standar teknis untuk mengadaptasi cuplikan komponen dari Design Intelligence Library ke berbagai framework target tanpa merusak arsitektur asli proyek.

---

## 1. Matriks Kompatibilitas Lintas Framework

| Sumber Pustaka | Next.js (App/Pages) | React SPA (Vite) | Laravel (Blade Native) | Tailwind CSS (v3 / v4) | Catatan Adaptasi Kritis |
|---|:---:|:---:|:---:|:---:|---|
| **VengeanceUI** | Penuh (100%) | Penuh (100%) | Perlu Konversi | Kompatibel Penuh | Konversi tag JSX ke Blade partials; ganti state ke Alpine.js. |
| **Animate UI** | Penuh (100%) | Penuh (100%) | Perlu Konversi | Kompatibel Penuh | Pola transisi Motion dialihkan ke CSS utility atau GSAP. |
| **Uiverse Galaxy** | Penuh | Penuh | Penuh (100% Native) | Kompatibel Penuh | Langsung salin HTML dan CSS ke Blade components tanpa bundler. |
| **ForgeUI** | Penuh (100%) | Penuh (100%) | Perlu Konversi | Kompatibel Penuh (Tailwind v4) | Ekstrak struktur layout dan kartu; abaikan ekstensi cloud editor. |
| **Uilora** | Kompatibel | Kompatibel | Perlu Konversi | Kompatibel | Bersihkan atribut khusus JSX dan metadata vendor. |
| **Shaders** | Canvas WebGPU | Canvas WebGPU | Canvas WebGPU | Netral (Canvas) | Sisipkan elemen `<canvas>` dan muat modul WGSL via Vite. |
| **Three.js (Dioramas)** | Canvas WebGL | Canvas WebGL | Canvas WebGL | Netral (Canvas) | Muat bundle Three.js via Vite JavaScript entry point. |
| **Bklit UI** | Penuh (React) | Penuh (React) | Perlu Konversi | Kompatibel Penuh | Ekstrak markup SVG murni; render langsung di Blade template. |
| **GSAP** | Penuh | Penuh | Penuh (100% Native) | Netral | Impor via Vite atau pasang skrip lokal; berfungsi tanpa React. |

---

## 2. Protokol Adaptasi Komponen React ke Laravel Blade

Dilarang keras memasang runtime React di dalam proyek Laravel Blade konvensional hanya untuk menambahkan beberapa komponen desain. Gunakan protokol konversi berikut:

### Langkah A: Konversi Sintaks Markup JSX ke HTML Blade
1. Ubah seluruh atribut `className="..."` menjadi `class="..."`.
2. Ubah penamaan atribut camelCase HTML ke format standar:
   - `tabIndex` -> `tabindex`
   - `ariaLabel` -> `aria-label`
   - `strokeWidth` -> `stroke-width`
   - `fillRule` -> `fill-rule`
3. Bungkus cuplikan ke dalam Blade component partial di `resources/views/components/` atau `resources/views/portfolio/partials/`.
4. Ganti props React (`{title}`, `{children}`) menjadi variabel Blade (`{{ $title }}`, `{{ $slot }}`).

### Langkah B: Konversi State Reaktif React ke Alpine.js atau Vanilla JS
Jika komponen React memiliki interaktivitas lokal berbasis `useState`:
- **State Toggle Sederhana (Modal, Accordion, Dropdown)**:
  - Pada React:
    ```tsx
    const [open, setOpen] = useState(false);
    return <button onClick={() => setOpen(!open)}>Toggle</button>;
    ```
  - Pada Blade (Gunakan Alpine.js jika terpasang):
    ```html
    <div x-data="{ open: false }">
        <button @click="open = !open">Toggle</button>
        <div x-show="open" x-cloak class="...">Konten</div>
    </div>
    ```
  - Pada Blade (Gunakan Vanilla JS jika Alpine tidak terpasang):
    ```html
    <div class="interactive-panel" data-state="closed">
        <button type="button" class="panel-trigger">Toggle</button>
        <div class="panel-content hidden">Konten</div>
    </div>
    ```

### Langkah C: Konversi Pola Animasi Motion ke CSS / GSAP
Jika komponen React menggunakan `<motion.div animate={{ opacity: 1, y: 0 }} initial={{ opacity: 0, y: 20 }}>`:
- **Alternatif CSS Tailwind**:
  ```html
  <div class="transition-all duration-300 ease-out opacity-100 translate-y-0">
  ```
- **Alternatif GSAP (Untuk animasi beruntun)**:
  ```javascript
  gsap.from(".card-item", {
      opacity: 0,
      y: 20,
      duration: 0.4,
      stagger: 0.1,
      ease: "power2.out"
  });
  ```

---

## 3. Integrasi Kanvas Grafis (Canvas, Three.js, Shaders) ke Laravel

Untuk komponen visual lanjutan:
1. Sediakan wadah kanvas di Blade:
   ```html
   <div class="vfx-container relative w-full h-[400px] overflow-hidden rounded-xl">
       <canvas id="vfxCanvas" class="w-full h-full block"></canvas>
       <div class="vfx-overlay absolute inset-0 pointer-events-none">
           {{ $slot }}
       </div>
   </div>
   ```
2. Inisialisasi logika visual pada berkas JavaScript yang dikelola Vite:
   - Muat modul secara dinamis (`import(...)`) hanya pada halaman yang membutuhkan fitur tersebut guna menjaga kecepatan muat halaman pertama.
   - Sediakan mekanisme deteksi fitur: jika browser klien tidak mendukung WebGPU, tampilkan fallback latar belakang CSS gradient alami.
