# Panduan Aksesibilitas Frontend (WCAG 2.1 AA)

Dokumen ini memuat standar wajib aksesibilitas untuk seluruh komponen yang dihasilkan atau diadaptasi dari Design Intelligence Library.

---

## 1. Standar Rasio Kontras Warna

Sesuai panduan WCAG 2.1 Tingkat AA:
1. **Teks Normal (di bawah 18pt / 24px reguler)**:
   - Wajib memiliki rasio kontras minimal **4.5:1** terhadap warna latar belakangnya.
2. **Teks Besar (18pt+ reguler atau 14pt+ tebal)**:
   - Wajib memiliki rasio kontras minimal **3.0:1** terhadap latar belakang.
3. **Komponen Antarmuka & Batas Elemen Grafis**:
   - Status fokus, garis batas input aktif, dan ikon interaktif wajib memiliki rasio kontras minimal **3.0:1**.

### Palet Gelap Ramah Aksesibilitas Terverifikasi:
- Latar Belakang Gelap: `#0a0a0a` (neutral-950) atau `#121212` (surface).
- Teks Utama: `#f5f5f5` (neutral-100) -> Rasio Kontras: **17.8:1** (Sangat Lolos).
- Teks Sekunder: `#a3a3a3` (neutral-400) -> Rasio Kontras: **6.2:1** (Lolos).
- Teks Muted (Hint): `#737373` (neutral-500) -> Rasio Kontras: **3.8:1** (Hanya untuk elemen non-kritis/besar).

---

## 2. Navigasi Keyboard & Indikator Fokus

1. **Jangan Pernah Menghapus Cincin Fokus (`outline: none`) Tanpa Pengganti**:
   - Jika `outline: none` digunakan, wajib menggantinya dengan ring fokus yang jelas:
     ```html
     class="focus:outline-none focus:ring-2 focus:ring-emerald-400 focus:ring-offset-2 focus:ring-offset-neutral-950"
     ```
2. **Urutan Tabulasi Logis (Tab Order)**:
   - Hindari penggunaan nilai `tabindex` positif (`tabindex="1"`). Gunakan urutan DOM alami atau `tabindex="0"` untuk elemen kustom yang dapat menerima fokus.
3. **Modal Dialog Focus Trap**:
   - Saat modal terbuka:
     - Fokus otomatis berpindah ke tombol pertama di dalam modal.
     - Penekanan tombol `Tab` memutar fokus di dalam modal (*focus trap*).
     - Tombol `Escape` langsung menutup modal.
     - Saat modal tertutup, fokus dikembalikan ke elemen pemicu awal (*focus restore*).

---

## 3. Pola Atribut ARIA yang Tepat

1. **Tombol Hanya Ikon**:
   - Selalu berikan atribut `aria-label` yang deskriptif:
     ```html
     <button type="button" aria-label="Tutup jendela pratinjau" class="...">
         <svg class="h-5 w-5" aria-hidden="true" ...></svg>
     </button>
     ```
2. **Komponen Akordeon & Dropdown**:
   - Gunakan `aria-expanded="true|false"` dan kaitkan dengan `aria-controls="panel-id"`.
3. **Ikon Dekoratif**:
   - Seluruh ikon SVG yang berdampingan dengan label teks wajib diberi atribut `aria-hidden="true"` agar tidak dibaca ganda oleh pembaca layar (*screen reader*).

---

## 4. Dukungan Gerak Berkurang (Reduced Motion)

Bagi pengguna yang sensitif terhadap gerakan animasi:
- Wajib menyertakan utility Tailwind `motion-reduce`:
  ```html
  <div class="transition-transform duration-500 hover:scale-105 motion-reduce:transform-none motion-reduce:transition-none">
  ```
- Pada GSAP, periksa media query `prefers-reduced-motion`:
  ```javascript
  const prefersReduced = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
  if (prefersReduced) {
      gsap.set(".animated-item", { opacity: 1, y: 0 });
  } else {
      gsap.from(".animated-item", { opacity: 0, y: 20, duration: 0.5 });
  }
  ```
