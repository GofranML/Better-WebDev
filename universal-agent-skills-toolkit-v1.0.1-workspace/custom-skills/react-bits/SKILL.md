---
name: react-bits
description: Curated collection of 60+ animated, interactive, and customizable React components by David Haz (DavidHDev/react-bits). Includes text animations (SplitText, BlurText, ShinyText, DecryptedText), interactive cards (TiltedCard, SpotlightCard), dynamic backgrounds (Hyperspeed, Waves, Ballpit, Squares), and creative UI widgets.
---

# React Bits Component & Animation Specialist

Spesialis integrasi komponen antarmuka animasi, efek teks interaktif, dan latar belakang visual dinamis berbasis pustaka open-source **React Bits** karya David Haz ([`DavidHDev/react-bits`](https://github.com/DavidHDev/react-bits) | [reactbits.dev](https://reactbits.dev)).

---

## 1. Filosofi & Pola Integrasi

React Bits mengusung pendekatan modular berbasis *copy-paste*, mirip dengan shadcn/ui:
- **Zero Heavy Bundles**: Hanya salin kode komponen yang benar-benar digunakan ke dalam direktori proyek (misal `components/react-bits/`).
- **Prinsip Ponytail & Karpathy**: Tidak ada runtime wrapper monolitik. Setiap komponen berdiri sendiri dengan dependensi minimal.
- **Fondasi Stack**: React 18+, Tailwind CSS, dan Framer Motion (dengan Three.js / WebGL opsional untuk background 3D tertentu).

---

## 2. Kategori Komponen Utama

### A. Text Animations
- **SplitText**: Memecah kata atau huruf dengan stagger animasi masuk yang halus (`animationFrom`, `animationTo`).
- **BlurText**: Efek fade-in berbasis filter blur bertahap per kata/karakter.
- **ShinyText**: Efek kilau teks metalik dinamis menggunakan CSS linear gradient mask.
- **DecryptedText**: Efek matrix / cyber hacker decryption yang mengungkap teks secara acak sebelum mencapai karakter target.
- **True Focus**: Efek lensa fokus interaktif yang mengikuti hover atau bergerak otomatis antar-kata.
- **CountUp**: Counter angka dinamis dengan easing presisi untuk statistik dan metrik.

### B. Interactive Components
- **SpotlightCard**: Kartu interaktif dengan efek glow/spotlight gradien yang mengikuti kursor mouse secara presisi.
- **TiltedCard**: Kartu 3D tilt yang merespons posisi mouse pengguna dengan kedalaman z-axis.
- **Dock**: Mac-style floating dock menu dengan pembesaran skala dinamis berbasis jarak kursor.
- **ElasticSlider**: Slider interaktif dengan fisika pegas elastis.
- **DecayCard**: Kartu swipe interaktif yang terlempar dengan inersia alami.

### C. Animated Backgrounds
- **Hyperspeed**: Efek terowongan cahaya berkecepatan tinggi dengan Three.js / Canvas.
- **Waves**: Gelombang kanvas interaktif yang merespons gerak kursor.
- **Squares**: Grid ubin retro interaktif yang menyala saat dilewati mouse.
- **Ballpit**: Fisika bola 3D interaktif yang memantul dan bereaksi terhadap sentuhan kursor.
- **Iridescence**: Shader kanvas fluida dengan warna prisma holografik.

---

## 3. Resep Penggunaan & Instalasi

### Dependensi Standar
```bash
npm install framer-motion clsx tailwind-merge
```

### Contoh Implementasi: `SplitText.jsx`
```jsx
import { useSprings, animated } from '@react-spring/web'; // atau versi framer-motion
import { useEffect, useRef, useState } from 'react';

export default function SplitText({
  text = '',
  className = '',
  delay = 100,
  animationFrom = { opacity: 0, transform: 'translate3d(0,40px,0)' },
  animationTo = { opacity: 1, transform: 'translate3d(0,0,0)' },
  easing = 'easeOutCubic',
  threshold = 0.1,
  rootMargin = '-100px',
  textAlign = 'center',
  onLetterAnimationComplete,
}) {
  const words = text.split(' ').map(word => word.split(''));
  const letters = words.flat();
  const [inView, setInView] = useState(false);
  const ref = useRef();

  useEffect(() => {
    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setInView(true);
          observer.unobserve(ref.current);
        }
      },
      { threshold, rootMargin }
    );

    if (ref.current) observer.observe(ref.current);
    return () => observer.disconnect();
  }, [threshold, rootMargin]);

  return (
    <p ref={ref} className={`split-parent inline ${className}`} style={{ textAlign }}>
      {words.map((word, wordIndex) => (
        <span key={wordIndex} style={{ display: 'inline-block', whiteSpace: 'nowrap' }}>
          {word.map((letter, letterIndex) => {
            const index = words.slice(0, wordIndex).reduce((acc, w) => acc + w.length, 0) + letterIndex;
            return (
              <span
                key={index}
                style={{
                  display: 'inline-block',
                  opacity: inView ? animationTo.opacity : animationFrom.opacity,
                  transform: inView ? animationTo.transform : animationFrom.transform,
                  transition: `all 0.5s ${easing} ${index * delay}ms`,
                }}
                onTransitionEnd={index === letters.length - 1 ? onLetterAnimationComplete : undefined}
              >
                {letter}
              </span>
            );
          })}
          <span style={{ display: 'inline-block', width: '0.3em' }}>&nbsp;</span>
        </span>
      ))}
    </p>
  );
}
```

---

## 4. Harmonisasi dengan shadcn/ui & MCP

Ketika menggunakan MCP server `shadcn`:
1. Bangun struktur dasar antarmuka (Button, Dialog, Sheet, Card, Form) menggunakan `npx shadcn@latest mcp` atau `npx shadcn@latest add <component>`.
2. Hiasi elemen hero, headline, dan kartu utama menggunakan komponen visual dari `react-bits` untuk memberikan sentuhan kreatif tingkat tinggi (*craft aesthetic*) tanpa merusak struktur token warna Tailwind atau tema shadcn.
