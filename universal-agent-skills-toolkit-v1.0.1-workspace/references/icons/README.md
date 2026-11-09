# Lucide Icons Reference & Extraction Engine

Direktori ini menyediakan indeks taksonomi 42 kategori antarmuka, resep integrasi framework lintas stack, dan petunjuk ekstraksi ikon otentik dari koleksi Lucide.

---

## 1. Daftar Dokumen
1. [`categories.md`](./categories.md): Daftar 42 kategori antarmuka pengguna (Navigation, E-commerce, Media, Communication, Arrows, Devices, Security, Charts, System, dll).
2. [`integration-recipes.md`](./integration-recipes.md): Resep sintaks implementasi untuk Tailwind CSS, DaisyUI, Laravel Blade native, dan React JSX.

---

## 2. Cara Menggunakan Ikon Lucide Tanpa Halusinasi Jalur SVG

Agen AI **dilarang mengarang koordinat jalur `path` SVG**. Untuk menyematkan ikon:

### Opsi A: Pasang Paket Resmi
- **React / Next.js**:
  ```bash
  npm install lucide-react
  ```
  Penggunaan:
  ```tsx
  import { ArrowRight, Check, ShoppingCart } from "lucide-react";
  ```

- **Vue**:
  ```bash
  npm install lucide-vue-next
  ```

- **Laravel Blade / HTML Murni**:
  Gunakan CDN script atau inline SVG resmi:
  ```html
  <script src="https://unpkg.com/lucide@latest"></script>
  <i data-lucide="arrow-right"></i>
  <script>
    lucide.createIcons();
  </script>
  ```

### Opsi B: Gunakan Resep Standar pada `integration-recipes.md`
Lihat berkas [`integration-recipes.md`](./integration-recipes.md) untuk pola SVG inline yang sudah teruji dan aman dari broken paths.
