---
license: UNLICENSED (Copyright (c) 2026 Gofran / GFN Web. All rights reserved.)
name: gsap-motion-specialist
description: Specialized Animation Engineering Skill for modern web applications. Expert in GSAP Core, Timeline sequencing, ScrollTrigger, Motion local engine, SVG path animation, framework integration (React, Next.js, Laravel Blade), reduced motion accessibility, memory leak prevention, and clean output governance.
---

# GSAP & Motion Specialist

Skill spesialis ini bertindak sebagai *motion engineering engine* di dalam ekosistem Antigravity CLI (AGY). Beroperasi di bawah koordinasi `master-design-intelligence`, skill ini bertanggung jawab merancang, mengoptimalkan, dan mengimplementasikan interaktivitas gerak tanpa membebani performa browser atau menimbulkan memory leak.

---

## 1. Tujuan & Tanggung Jawab Utama
- Mengimplementasikan rekayasa gerak (motion engineering) yang presisi, halus (60 FPS stabil), dan hemat daya.
- Menentukan teknologi animasi yang paling efisien (CSS vs Motion Lokal vs GSAP).
- Menghindari penggunaan GSAP untuk interaksi sepele yang cukup diselesaikan oleh CSS.
- Menjamin pembersihan siklus hidup animasi (*lifecycle cleanup*) dan kepatuhan aksesibilitas.

---

## 2. Kondisi Pemicu (Trigger Conditions)
Aktifkan skill ini ketika:
- Pengguna meminta animasi timeline beruntun (sequencing / stagger).
- Terdapat kebutuhan interaksi berbasis gulir layar (*ScrollTrigger*, parallax, sticky sections, pinning).
- Terdapat manipulasi animasi kurva atau garis SVG (*path drawing / morphing*).
- Komponen React memerlukan interaktivitas berbasis physics gestur (drag, spring) via Motion lokal.
- Pengguna meminta optimasi performa animasi atau perbaikan frame drop.

---

## 3. Kerangka Keputusan (Decision Framework)

Terapkan aturan seleksi ortogonal:

```text
[Kebutuhan Interaktivitas Gerak]
â”‚
â”œâ”€â”€ Apakah berupa efek hover, fokus tombol, atau transisi warna sederhana?
â”‚   â””â”€â”€ Gunakan CSS Transition / Tailwind utility. Dilarang memuat JavaScript.
â”‚
â”œâ”€â”€ Apakah berupa micro-interaction berbasis gestur atau spring di React?
â”‚   â””â”€â”€ Gunakan engine Motion lokal (./tools/animation/motion).
â”‚
â”œâ”€â”€ Apakah berupa animasi linier looping sederhana (spinner, denyut nadi)?
â”‚   â””â”€â”€ Gunakan CSS Keyframes murni.
â”‚
â””â”€â”€ Apakah berupa timeline sinkron multi-elemen, ScrollTrigger, atau SVG morphing?
    â””â”€â”€ Wajib gunakan GSAP (GreenSock Animation Platform).
```

---

## 4. Panduan Rekayasa GSAP (GSAP Engineering Guidelines)

### A. Timeline & Stagger
- Susun animasi beruntun menggunakan `gsap.timeline()` untuk menghindari perhitungan delay manual yang rapuh.
- Terapkan stagger pada elemen berulang (daftar kartu, navigasi) dengan interval moderat (0.05s hingga 0.15s).

### B. ScrollTrigger Best Practices
- Selalu tentukan titik picu yang jelas (`trigger: "#targetId"`, `start: "top 80%"`).
- Gunakan `toggleActions: "play none none reverse"` untuk pemutaran ulang yang natural.
- Hindari menganimasikan properti layout (`width`, `height`, `margin`, `top`, `left`). Hanya gunakan properti transform (`x`, `y`, `scale`, `rotation`) dan `opacity`.

### C. SVG Animation
- Gunakan `strokeDasharray` dan `strokeDashoffset` untuk efek penggambaran garis outline SVG yang presisi.

---

## 5. Integrasi Framework Lintas Stack

### A. React & Next.js
- Selalu gunakan hook resmi `useGSAP` atau isolasi dalam `useEffect` dengan fungsi pembersih:
  ```tsx
  import { useRef } from "react";
  import { gsap } from "gsap";
  import { useGSAP } from "@gsap/react";

  export function HeroTitle() {
      const containerRef = useRef(null);

      useGSAP(() => {
          gsap.from(".char", { y: 20, opacity: 0, stagger: 0.05 });
      }, { scope: containerRef });

      return <div ref={containerRef}><h1 className="char">Judul</h1></div>;
  }
  ```
- Bedakan batasan Server Components dan Client Components (`'use client'`).

### B. Laravel Blade Native
- **Dilarang memasang React**: Gunakan GSAP secara native melalui berkas JavaScript yang dikelola Vite (`resources/js/app.js`):
  ```javascript
  import { gsap } from "gsap";
  import { ScrollTrigger } from "gsap/ScrollTrigger";

  gsap.registerPlugin(ScrollTrigger);

  document.addEventListener("DOMContentLoaded", () => {
      gsap.from(".proj-card", {
          scrollTrigger: { trigger: "#projects", start: "top 75%" },
          y: 30,
          opacity: 0,
          stagger: 0.12,
          duration: 0.6,
          ease: "power2.out"
      });
  });
  ```

---

## 6. Aksesibilitas (Reduced Motion)

Wajib menghormati preferensi pengguna terhadap gerakan:
```javascript
const prefersReduced = window.matchMedia("(prefers-reduced-motion: reduce)").matches;

if (prefersReduced) {
    // Tampilkan elemen langsung tanpa animasi
    gsap.set(".animated-target", { opacity: 1, x: 0, y: 0 });
} else {
    gsap.from(".animated-target", { opacity: 0, y: 20, duration: 0.5 });
}
```

---

## 7. Performa & Pembersihan Siklus Hidup (Lifecycle Teardown)

Untuk mencegah memory leak pada SPA atau navigasi dinamis:
- Bunuh timeline yang tidak lagi terlihat: `timeline.kill()`.
- Hapus instans ScrollTrigger: `ScrollTrigger.getAll().forEach(t => t.kill())`.
- Lepaskan event listener DOM saat komponen unmount atau halaman berpindah.
- Batasi penggunaan `will-change`: hanya aktifkan saat animasi berjalan.

---

## 8. Tata Kelola Lisensi & Output Bersih

Sesuai dengan ketentuan Bagian 16 dan [`LICENSE-REGISTER.md`](../../references/design-intelligence-library/LICENSE-REGISTER.md):
1. **Lisensi GreenSock**: Bebas biaya untuk situs komersial standar, portofolio, dan aplikasi bisnis klien. Lisensi Club GreenSock berbayar hanya diwajibkan jika membangun platform builder SaaS berbayar.
2. **Preservasi Hak Cipta**: Wajib mempertahankan copyright notice GreenSock di baris atas berkas pustaka kode sumber.
3. **Pembersihan Log Dev**: Nonaktifkan peringatan dev jika diperlukan pada build produksi: `gsap.config({ trialWarn: false })`.
4. **Zero Watermarks & Ads**: Tidak boleh ada lencana visual atau tautan promosi yang dimasukkan ke antarmuka pengguna.

---

## 9. Rujukan Dokumentasi Lokal
- Panduan Lengkap GSAP: [`animation-motion/gsap/README.md`](../../references/design-intelligence-library/animation-motion/gsap/README.md)
- Panduan Motion Lokal: [`animation-motion/motion/README.md`](../../references/design-intelligence-library/animation-motion/motion/README.md)
- Repositori Monorepo Lokal: [`tools/animation/motion`](../../tools/animation/motion)





