# Referensi Sumber: GSAP (GreenSock Animation Platform)

---

## 1. Metadata Sumber
- **Nama Sumber**: GSAP
- **Official URL**: https://gsap.com
- **Repository URL**: https://github.com/greensock/gsap (dan skill resmi: https://github.com/greensock/gsap-skills)
- **Framework**: Universal (Vanilla JavaScript, TypeScript, React, Next.js, Vue, Laravel Blade)
- **Kategori**: Animation & Motion Engine
- **Tujuan Penggunaan**: Pustaka standar industri untuk animasi performa tinggi (60 FPS stabil), timeline beruntun yang kompleks, interaksi berbasis gulir layar (*ScrollTrigger*), dan manipulasi atribut SVG.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Katalog Pola Animasi Terpilih
1. **Sequential Stagger Timeline**: Animasi beruntun antar elemen (kartu, item daftar, huruf teks) dengan sinkronisasi presisi.
2. **ScrollTrigger Parallax & Pinning**: Efek sticky section dan translasi elemen saat halaman digulir.
3. **SVG Morphing & Path Drawing**: Animasi kurva vektor dan penggambaran garis batas SVG secara dinamis.
4. **Interactive Hover Physics**: Efek elastisitas (*elastic / bounce*) pada elemen tombol dan kursor.

---

## 3. Dependensi & Persyaratan Instalasi
- **Kebutuhan Dependensi**:
  - `gsap` (dapat diimpor via npm atau dimuat melalui berkas lokal mandiri).
- **Catatan Instalasi**: *Hanya informasi, dilarang menjalankan instalasi sekarang.* GSAP inti tidak memiliki dependensi lain (*zero external dependencies*).

---

## 4. Analisis Lisensi & Komersial
- **Lisensi**: Standard GreenSock License (dan repositori `gsap-skills` berlisensi MIT).
- **Batasan Penggunaan Komersial**:
  - **Bebas Biaya**: Penggunaan pada situs web komersial standar, portofolio, landing page, atau aplikasi bisnis internal tidak memerlukan pembayaran lisensi.
  - **Berbayar (*Club GreenSock*)**: Lisensi komersial hanya diwajibkan jika produk akhir adalah platform yang mengenakan biaya lisensi berulang ke banyak pengguna akhir (misalnya website builder no-code atau komponen komersial berbayar).
- **Kewajiban**: Wajib mempertahankan header hak cipta GreenSock pada baris atas berkas pustaka kode sumber. Tidak ada kewajiban menampilkan logo atau teks kredit di layar web.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**: **PASS**
- **Watermark Status**: PASS (GSAP tidak pernah memunculkan watermark atau badge visual).
- **Advertisement Status**: PASS (Bebas dari iklan komersial).
- **Promotional Branding Status**: PASS (Peringatan lisensi development dapat dinonaktifkan via `gsap.config({ trialWarn: false })` dan tidak muncul di bundle produksi).
- **Telemetry Status**: PASS (100% offline, tidak mengirim data telemetri).
- **External Network Behavior**: PASS (Berjalan murni di memori lokal peramban).

---

## 6. Panduan Adaptasi Framework
- **Ke Laravel Blade**: Sangat mudah diintegrasikan. Cukup impor modul pada berkas JavaScript Vite (`import { gsap } from 'gsap';`) atau masukkan skrip lokal, lalu targetkan kelas CSS elemen Blade.
- **Ke React / Next.js**: Gunakan hook resmi `useGSAP` dari `@gsap/react` untuk memastikan pembersihan memori (*cleanup memory leak*) saat komponen unmount.

---

## 7. Contoh Implementasi Bersih (ScrollTrigger Timeline)

```javascript
// Implementasi Bersih GSAP untuk Laravel Blade / Vite
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";

gsap.registerPlugin(ScrollTrigger);

// Matikan log peringatan dev agar output bersih
gsap.config({ trialWarn: false });

export function initHeroAnimation() {
    const tl = gsap.timeline({
        scrollTrigger: {
            trigger: "#heroSection",
            start: "top 80%",
            toggleActions: "play none none reverse"
        }
    });

    tl.from(".hero-badge", { opacity: 0, y: -20, duration: 0.5, ease: "power2.out" })
      .from(".hero-title", { opacity: 0, y: 30, duration: 0.7, ease: "power3.out" }, "-=0.3")
      .from(".hero-card", { opacity: 0, scale: 0.95, duration: 0.5, stagger: 0.15, ease: "back.out(1.7)" }, "-=0.4");
}
```

---

## 8. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: GSAP adalah pustaka terpercaya dengan dokumentasi resmi dan reputasi stabilitas bebas watermark sejak era Flash hingga standar HTML5 modern.
- **Asumsi**: Proyek memiliki bundler modern (seperti Vite) yang dapat memproses modul ES6 secara efisien.
- **Rekomendasi**: Jadikan GSAP sebagai pustaka standar utama untuk seluruh kebutuhan animasi timeline rumit dan interaktivitas scroll pada proyek AGY.
