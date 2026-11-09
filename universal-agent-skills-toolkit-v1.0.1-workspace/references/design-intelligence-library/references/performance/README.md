# Panduan Performa Frontend & Anggaran Beban (Performance Budget)

Dokumen ini memuat standar performa kecepatan muat, efisiensi render peramban, dan alokasi anggaran ukuran aset untuk komponen frontend.

---

## 1. Sasaran Core Web Vitals

Setiap integrasi halaman web harus memenuhi ambang batas:
- **LCP (Largest Contentful Paint)**: Di bawah **2.5 detik** pada koneksi 4G standar.
- **FID / INP (Interaction to Next Paint)**: Di bawah **200 milidetik**.
- **CLS (Cumulative Layout Shift)**: Di bawah **0.1** (Bebas pergeseran tata letak mendadak).

---

## 2. Anggaran Ukuran Aset (Bundle Budget)

1. **JavaScript Awal**:
   - Total bundle JS kritis pada halaman awal maksimal **80KB** (terkompresi gzip/brotli).
   - Seluruh pustaka berat (GSAP plugins, Three.js, WebGPU module) **wajib dimuat secara malas (*lazy loading* / dynamic import)** saat dibutuhkan.
2. **CSS Utama**:
   - Maksimal **25KB** (terkompresi gzip) dengan memanfaatkan *purging* kelas Tailwind yang tidak terpakai.
3. **Aset Gambar**:
   - Selalu sediakan format modern **WebP** atau **AVIF** dengan atribut `loading="lazy"` dan `decoding="async"` untuk gambar di bawah lipatan layar (*below-the-fold*).
   - Selalu tentukan atribut dimensi eksplisit (`width="..." height="..."`) atau kelas rasio aspek Tailwind (`aspect-[16/9]`) guna mencegah layout shift (CLS).

---

## 3. Optimasi Rendering 60 FPS

1. **Batasi Properti Animasi**:
   - Animasi hanya boleh memodifikasi properti yang diproses pada tahap *composite* hardware GPU:
     - `transform` (translasi, skala, rotasi)
     - `opacity`
   - **Dilarang keras menganimasikan**: `width`, `height`, `margin`, `padding`, `top`, `left` karena memicu proses *reflow (layout)* dan *repaint* ulang yang menyebabkan frame drop.
2. **Penggunaan Properti `will-change` Secara Bijak**:
   - Hanya pasang `will-change: transform` pada elemen yang sedang aktif dianimasikan, lalu lepaskan properti tersebut setelah animasi selesai untuk mencegah pemborosan memori VRAM GPU.
3. **Virtualisasi Daftar Panjang**:
   - Jika tabel atau daftar data menampilkan lebih dari 50 baris, gunakan paginasi bersih atau virtual scrolling daripada merender ratusan elemen DOM sekaligus.
