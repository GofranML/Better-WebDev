# Skill Selection & Interoperability Guide

Dokumen ini menjelaskan hubungan komplementer, batasan cakupan, dan matriks pemilihan skill agar AI agent tidak mengalami kebingungan (*context thrashing*) atau mengaktifkan skill yang saling bertolak belakang.

---

## 1. Matriks Seleksi Desain Antarmuka (Design Cluster)

```text
Permintaan Desain Pengguna
  │
  ├── Apakah membuat landing page / website baru dari nol?
  │     └── Aktifkan: design-taste-frontend (menentukan visual direction & moodboard)
  │
  ├── Apakah memilih komponen, arsitektur framework, atau sanitasi DOM?
  │     └── Aktifkan: master-design-intelligence (orkestrasi & governance)
  │
  ├── Apakah memeriksa tipografi, kontras warna, affordance tombol, atau polishing UI?
  │     └── Aktifkan: impeccable (audit visual craft)
  │
  ├── Apakah memerlukan ikon SVG yang presisi?
  │     └── Aktifkan: lucide-icons (ekstraksi ikon otentik tanpa broken paths)
  │
  └── Apakah memerlukan komponen animasi teks / efek visual kreatif React?
        └── Aktifkan: react-bits (repositori upstream: DavidHDev/react-bits)
```

### Aturan Komplementer:
- `master-design-intelligence` berfungsi sebagai **jenderal orkestrator**.
- `design-taste-frontend` berfungsi sebagai **pengarah seni**.
- `impeccable` berfungsi sebagai **inspektur kualitas visual**.
- Ketiganya tidak bersaing, melainkan bekerja secara estafet dalam 3 tahap berurutan: Arah Seni -> Seleksi Komponen -> Polishing Akhir.

---

## 2. Matriks Seleksi Rekayasa Gerak & 3D (Motion & 3D Cluster)

| Kebutuhan Visual / Interaksi | Pilihan Optimal | Alternatif yang Dilarang | Alasan Teknis |
|---|---|---|---|
| **Hover, Focus, Tooltip Sederhana** | CSS Transition / Tailwind | JavaScript / GSAP | Memuat JS untuk hover sederhana membebani runtime thread |
| **Micro-interactions di React (Modal reveal, spring gesture)** | `framer-motion` | GSAP imperative | Motion terintegrasi secara natural dengan siklus hidup React |
| **Efek Teks Animasi & Kartu Interaktif React (Split Text, Spotlight)** | `react-bits` | Animasi CSS manual rumit | Pustaka `DavidHDev/react-bits` menyediakan pola modular teruji berbasis Tailwind/Framer |
| **Timeline Panjang, ScrollTrigger, Parallax, SVG Morphing** | `gsap-motion-specialist` | Framer Motion | GSAP memiliki engine perhitungan timeline dan scroll scrub paling stabil |
| **Animasi di Proyek Non-React (Laravel Blade, Astro, HTML)** | `gsap-motion-specialist` | `framer-motion` | Dilarang memasang React runtime di Laravel hanya untuk animasi |
| **Simulasi Partikel & Latar Belakang Komputasi GPU** | `shaders-webgpu-specialist` | Three.js berat | Shader kanvas ringan lebih hemat memori dibanding model 3D utuh |
| **Adegan 3D Interaktif (Diorama, Model Orbit)** | `dioramas-web-design` | Spline Free Tier | Three.js lokal mandiri bebas dari watermark wajib vendor |

---

## 3. Matriks Seleksi Kualitas Penulisan & Anti-Slop (Writing Cluster)

Pilih **satu alat utama** per jenis tugas:

| Jenis Tugas Penulisan | Alat Utama yang Dipilih | Alat Sekunder (Verifikasi Opsional) | Larangan |
|---|---|---|---|
| **Penulisan Ulang Artikel / Dokumentasi Kasual** | `humanizer` | `stop-slop` | Dilarang menjalankan keduanya berturut-turut pada teks yang sama |
| **Audit Basis Kode / Korpus terhadap AI-isms** | `avoid-ai-writing` | Tidak perlu | Dilarang mengubah makna teknis kode saat audit |
| **Penajaman Draf Pendek / Editorial** | `no-ai-slop` | Tidak perlu | Dilarang menambahkan kata bunga-bunga |
| **Tata Kelola Komentar Kode & Aksesibilitas UI** | `antislop` | Tidak perlu | Dilarang menghapus komentar esensial yang menjelaskan trik rumit |

---

## 4. Matriks Seleksi Alur Kerja Rekayasa (Engineering Workflow Cluster)

- **Untuk fitur baru atau perbaikan bug kritis**: Mulai dengan `superpowers:brainstorming` -> `superpowers:writing-plans` -> `superpowers:test-driven-development` -> `superpowers:verification-before-completion`.
- **Untuk tugas coding harian yang lugas**: Terapkan prinsip `ponytail` (kode paling ringkas) dan `karpathy-guidelines` (upstream: [`multica-ai/andrej-karpathy-skills`](https://github.com/multica-ai/andrej-karpathy-skills) — bedah minimalis tanpa fitur spekulatif).
- **Untuk audit arsitektur repositori yang besar**: Jalankan `codebase-improve` dalam mode read-only untuk memetakan rencana kerja.

---

## 5. Matriks Seleksi Keamanan & Bug Hunting (Security & Bug Bounty Cluster)

| Kebutuhan Pengujian / Analisis | Pilihan Utama | Pendamping / Alternatif | Batasan & Tata Kelola |
|---|---|---|---|
| **Reconnaissance & Pemetaan Subdomain / Endpoint** | `agentic-bug-hunter` (`/recon`) | `subfinder`, `httpx`, `katana` | Hanya dijalankan pada target program yang terotorisasi secara sah |
| **Hunting Kerentanan Aplikasi Web (OWASP, IDOR, SSRF)** | `agentic-bug-hunter` (`/hunt`) | `nuclei`, `ffuf`, `dalfox` | Utamakan pengujian non-destruktif |
| **Validasi & Eliminasi Positif Palsu** | `agentic-bug-hunter` (`/validate`) | Manual verification | Wajib lolos 7-question gate untuk membuktikan PoC nyata |
| **Penyusunan Laporan Bug Bounty Standar Industri** | `agentic-bug-hunter` (`/report`) | Markdown template | Menghasilkan laporan berstandar HackerOne, Bugcrowd, Intigriti |
| **Analisis Biner Native, Firmware & Runtime Decompilation** | `reverse-engineer-anything` (REA) | GDB / Frida / Rizin | Khusus analisis artefak biner & runtime lokal |
