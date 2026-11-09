# External Repositories Adapter & Integration Guide

Dokumen ini menyediakan spesifikasi arsitektur, panduan integrasi, dan petunjuk instalasi untuk 14 repositori pihak ketiga yang tidak dibundel secara lokal demi menjaga ukuran distribusi tetap ringkas dan portabel.

---

## 1. Daftar Repositori Eksternal & Resep Integrasi

### 1. Tabler (`https://github.com/tabler/tabler`)
- **Fungsi**: UI Kit dan Dashboard berbasis HTML, CSS modern, dan Bootstrap 5.
- **Kategori**: UI Component & Dashboard.
- **Lisensi**: MIT.
- **Kapan Digunakan**: Saat proyek membutuhkan antarmuka dashboard administratif tanpa bergantung pada framework JavaScript berat.
- **Instalasi / Referensi**:
  ```bash
  npm install @tabler/core
  ```
  Atau gunakan CDN:
  ```html
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/core@latest/dist/css/tabler.min.css">
  ```

### 2. Hallmark (`https://github.com/Nutlope/hallmark`)
- **Fungsi**: AI greeting card generator berbasis Next.js, Tailwind CSS, dan replicate/fal API.
- **Kategori**: AI Generative App Blueprint.
- **Lisensi**: MIT.
- **Kapan Digunakan**: Referensi arsitektur untuk membangun web generator kartu ucapan dengan visual AI.
- **Kloning Opsional**:
  ```bash
  git clone https://github.com/Nutlope/hallmark.git
  ```

### 3. Hue (`https://github.com/dominikmartn/hue`)
- **Fungsi**: Color palette generator dan kalkulator harmonisasi warna untuk desainer & developer.
- **Kategori**: Design Utility & Color Systems.
- **Lisensi**: MIT.
- **Kapan Digunakan**: Menghasilkan palet warna dengan skala WCAG accessible contrast.
- **Referensi**: `https://github.com/dominikmartn/hue`

### 4. Vercel Labs Skills (`https://github.com/vercel-labs/skills`)
- **Fungsi**: Katalog keterampilan resmi Vercel Labs untuk AI coding agents yang mengoptimalkan deployment, Edge functions, dan Next.js Server Actions.
- **Kategori**: Agent Skills (Next.js / Vercel).
- **Lisensi**: Apache-2.0.
- **Instalasi ke Agen**:
  ```bash
  npx skills add vercel-labs/skills
  ```

### 5. Anthropics Skills (`https://github.com/anthropics/skills`)
- **Fungsi**: Repositori keterampilan resmi dari Anthropic untuk model Claude (termasuk formatting, analysis, dan agent tool calling patterns).
- **Kategori**: AI Agent Skills (Claude Code).
- **Lisensi**: MIT.
- **Instalasi ke Agen**:
  ```bash
  npx skills add anthropics/skills
  ```

### 6. UI/UX Pro Max Skill (`https://github.com/nextlevelbuilder/ui-ux-pro-max-skill`)
- **Fungsi**: Prompt engineering spesialis UI/UX untuk menghasilkan desain visual dengan estetika tinggi dan tata letak terstruktur.
- **Kategori**: AI Agent Skill (Design Prompting).
- **Lisensi**: MIT.
- **Pola Integrasi**: Digunakan sebagai lapisan prompt pendukung bersama `impeccable` dan `master-design-intelligence`.

### 7. Apple Design Skill (Dick Wu) (`https://github.com/dickwu/apple-design-skill`)
- **Fungsi**: Pedoman dan aturan desain antarmuka berbasis Apple Human Interface Guidelines (HIG).
- **Kategori**: Design System Skill.
- **Lisensi**: MIT.
- **Kapan Digunakan**: Saat membangun aplikasi web dengan tampilan native macOS atau iOS (SF Pro typography, translucent blur, haptic UI feedback).

### 8. Jakub Krehel Skills (`https://github.com/jakubkrehel/skills`) & Better Interface (`.../better-interface`)
- **Fungsi**: Kumpulan skill kurasi Jakub Krehel dengan fokus pada penyempurnaan antarmuka pengguna (`better-interface`).
- **Kategori**: UI Heuristics & Interface Refinement.
- **Lisensi**: MIT.
- **Pola Integrasi**: Melengkapi fungsi skill `impeccable` dalam audit affordance interaksi dan micro-spacing.

### 9. Apple Design (Emil Kowalski) (`https://github.com/emilkowalski/skills/tree/main/skills/apple-design`)
- **Fungsi**: Panduan craft animasi, interaksi fluid, dan micro-interaction bergaya Apple karya Emil Kowalski.
- **Kategori**: Animation & Craft Skill.
- **Lisensi**: MIT.
- **Pola Integrasi**: Bekerja harmonis dengan `framer-motion` dan `gsap-motion-specialist` untuk mencapai feel animasi 60 FPS yang kenyal dan natural.

### 10. Interface Design (Dammyjay93) (`https://github.com/Dammyjay93/interface-design`)
- **Fungsi**: Standar tata letak, grid hierarki, dan keterbacaan antarmuka web.
- **Kategori**: UI Layout Guidelines.
- **Lisensi**: MIT.

### 11. Design Review (Superfuture) (`https://github.com/Superfuture/design-review`)
- **Fungsi**: Heuristik review antarmuka dan checklist evaluasi usability sebelum rilis produksi.
- **Kategori**: Design Quality Assurance.
- **Lisensi**: MIT.
- **Pola Integrasi**: Dioperasikan pada tahap akhir review UI sebelum kode di-merge.

### 12. Stitch Skills (Google Labs) (`https://github.com/google-labs-code/stitch-skills`)
- **Fungsi**: Pola orkestrasi alur kerja agen multi-step dari Google Labs Code.
- **Kategori**: Multi-Agent Workflows.
- **Lisensi**: Apache-2.0.

### 13. Andrej Karpathy Skills (`https://github.com/multica-ai/andrej-karpathy-skills`)
- **Fungsi**: Kumpulan pedoman perilaku dan keterampilan operasional untuk AI coding agents (Claude Code, Cursor, AGY) berdasarkan observasi Andrej Karpathy mengenai jebakan umum LLM coding.
- **Kategori**: AI Agent Behavioral Guidelines & LLM Pitfall Prevention.
- **Lisensi**: MIT.
- **Prinsip Inti**:
  1. *Think Before Coding*: Jangan berasumsi, jangan sembunyikan kebingungan, buka pertukaran (*trade-offs*).
  2. *Simplicity First*: Kode minimal yang menyelesaikan masalah, tanpa fitur spekulatif.
  3. *Surgical Changes*: Sentuh hanya apa yang perlu, bersihkan hanya perubahan Anda sendiri.
  4. *Goal-Driven Execution*: Tetapkan kriteria sukses, loop hingga terverifikasi.
- **Kesesuaian di Toolkit**: Dibundel secara mandiri dan portabel pada `custom-skills/karpathy-guidelines/SKILL.md`.
- **Instalasi ke Agen**:
  ```bash
  # Instalasi via Claude Code plugin
  /plugin marketplace add multica-ai/andrej-karpathy-skills
  /plugin install andrej-karpathy-skills@karpathy-skills

  # Atau kloning referensi:
  git clone https://github.com/multica-ai/andrej-karpathy-skills.git
  ```

### 14. Agentic Bug Hunter (AwareXone) (`https://github.com/awarexone/Agentic-Bug-Hunter`)
- **Fungsi**: AI-powered bug bounty hunting & application security toolkit end-to-end yang mengotomatisasi alur kerja pengujian keamanan dari reconnaissance hingga pembuatan laporan akhir.
- **Kategori**: Application Security & Bug Bounty Agent Skill / Plugin.
- **Lisensi**: MIT.
- **Arsitektur & Mode Eksekusi**:
  1. *Claude Code Plugin / Skills Package*: Menyediakan slash commands bawaan (`/recon`, `/hunt`, `/validate`, `/report`) dan agen spesialis keamanan untuk alur investigasi langsung.
  2. *Standalone CLI (`bughunter`)*: Menjalankan hunting langsung dari terminal dengan dukungan multi-provider LLM (gratis/lokal via Ollama, Groq, DeepSeek, maupun API komersial OpenAI dan Claude).
  3. *MCP Server*: Terintegrasi sebagai Model Context Protocol (MCP) server untuk Cursor, AGY, dan harness agen lainnya.
  4. *Hunt Memory*: Menyimpan riwayat konteks target dan pola keamanan antar-sesi secara persisten.
- **Pipeline 4 Tahap**:
  1. *Reconnaissance (`/recon`)*: Pemetaan subdomain, probing host aktif, dan crawling endpoint menggunakan integrasi `subfinder`, `httpx`, `katana`.
  2. *Vulnerability Hunting (`/hunt`)*: Pengujian kerentanan web (OWASP Top 10, IDOR, SSRF, XSS, injection) menggunakan `nuclei`, `ffuf`, `dalfox`, `nmap`.
  3. *Validation Gate (`/validate`)*: Evaluasi ketat 7-langkah untuk memfilter temuan teoritis dan mengeliminasi positif palsu menjadi Proof of Concept (PoC) terverifikasi.
  4. *Report Generation (`/report`)*: Pembuatan draf laporan komprehensif berformat standar platform bug bounty (**HackerOne, Bugcrowd, Intigriti, Immunefi**).
- **Instalasi ke Agen**:
  ```bash
  # Mode 1: Claude Code Plugin / Skills Package
  git clone https://github.com/Awarexone/Agentic-Bug-Hunter.git
  cd Agentic-Bug-Hunter
  chmod +x install_tools.sh && ./install_tools.sh  # Opsional: install security CLI tools
  chmod +x install.sh && ./install.sh              # Pasang skills, commands & agents

  # Mode 2: Standalone CLI via PyPI
  pip install agentic-bug-hunter
  bughunter setup
  ```
- **Kepatuhan Etis Mutlak**: Wajib digunakan hanya pada target dengan otorisasi tertulis resmi atau program bug bounty publik dengan batasan *scope* yang jelas.
