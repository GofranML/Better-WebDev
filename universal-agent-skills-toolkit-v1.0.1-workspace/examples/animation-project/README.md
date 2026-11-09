# Contoh Proyek: Rekayasa Animasi & Efek GPU Lintas Framework

Contoh ini menunjukkan implementasi animasi yang memisahkan ranah GSAP ScrollTrigger dan efek kanvas WebGPU dengan fallback bertingkat.

---

## 1. Skenario Tugas
Pengguna meminta: *"Hero section interaktif dengan animasi teks yang muncul beruntun dan latar belakang kanvas bergelombang halus."*

---

## 2. Alur Implementasi

### A. Animasi Teks Beruntun (GSAP Motion Specialist)
Diintegrasikan via `gsap-motion-specialist`:
```tsx
import { useRef } from "react";
import { gsap } from "gsap";
import { useGSAP } from "@gsap/react";

export function HeroTitle() {
  const container = useRef(null);

  useGSAP(() => {
    // Menghormati preferensi reduced-motion
    if (window.matchMedia("(prefers-reduced-motion: reduce)").matches) {
      return;
    }

    gsap.from(".hero-char", {
      y: 24,
      opacity: 0,
      stagger: 0.04,
      duration: 0.8,
      ease: "power2.out"
    });
  }, { scope: container });

  return (
    <div ref={container} className="overflow-hidden">
      <h1 className="hero-char text-4xl font-bold tracking-tight text-white">
        Presisi Tanpa Kompromi
      </h1>
    </div>
  );
}
```

### B. Latar Belakang Kanvas GPU (Shaders WebGPU Specialist)
Diintegrasikan dengan arsitektur 4-tier graceful fallback:
```html
<div class="relative w-full h-[400px] overflow-hidden rounded-2xl bg-neutral-950">
  <!-- Tier 4: Fallback Mutlak CSS Gradient (Tampil seketika) -->
  <div class="absolute inset-0 bg-radial-gradient opacity-60"></div>
  
  <!-- Tier 1-2: Canvas GPU Dinamis -->
  <canvas id="gpuCanvas" class="absolute inset-0 w-full h-full opacity-0 transition-opacity duration-700"></canvas>
</div>
```
Logika inisialisasi memeriksa ketersediaan WebGPU (`navigator.gpu`). Jika gagal, beralih ke WebGL2 shader. Jika browser lawas tidak mendukung WebGL2, sistem mempertahankan layer CSS gradient tanpa menimbulkan layar putih atau JavaScript crash.
