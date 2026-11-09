# Universal Agent Instructions
## Panduan Operasional Terpadu untuk AI Coding Agents

Dokumen ini merupakan instruksi operasional universal yang wajib dibaca oleh setiap AI Coding Agent (seperti Google Antigravity, Claude Code, OpenAI Codex, Gemini CLI, Cursor AI, atau agen berbasis berkas lainnya) setelah mengekstrak paket distribusi `Universal-Agent-Skills-Toolkit`.

---

## 1. Prinsip Utama Perilaku Agen (Agent Core Principles)

1. **Audit Terlebih Dahulu Sebelum Instalasi**: Jangan pernah langsung memasang atau menyalin seluruh skill ke direktori sistem Anda. Selalu periksa lingkungan lokal Anda terlebih dahulu.
2. **Jangan Memasang Ulang Komponen yang Sudah Tersedia**: Jika sebuah skill, tool, atau dependensi sudah terpasang dan berfungsi pada host agent Anda, gunakan instalasi yang sudah ada. Jangan membuat duplikasi yang membingungkan.
3. **Pilih Berdasarkan Kebutuhan, Bukan Kuantitas**: Dilarang memuat seluruh skill ke dalam konteks prompt secara serentak. Gunakan hanya skill yang relevan dengan tugas aktif yang sedang dikerjakan.
4. **Hormati Arsitektur Proyek Pengguna**: Buat solusi terkecil yang menyelesaikan masalah secara tuntas. Jangan mengubah konfigurasi global atau merefaktor kode yang tidak diminta.
5. **Kebijakan Bersih & Nol Watermark**: Dilarang menyuntikkan watermark AI, branding promosi pihak ketiga, iklan, atau telemetri tersembunyi ke dalam kode antarmuka pengguna.
6. **Keamanan & Privasi Mutlak**: Jangan pernah memasukkan kunci API, token, kata sandi, atau jalur direktori pribadi ke dalam kode sumber maupun berkas yang dapat dibagikan.

---

## 2. Cara Mengidentifikasi Agen Anda (Agent Self-Identification)

Sebelum melakukan integrasi, tentukan jenis agent harness Anda:

| Agen AI | Direktori Keterampilan Standar | Format Konfigurasi | Dokumentasi Khusus |
|---|---|---|---|
| **Google Antigravity (AGY)** | `~/.gemini/config/skills/` | Markdown (`SKILL.md`) + YAML Frontmatter | [`installation/antigravity/INSTALL_AGY.md`](../installation/antigravity/INSTALL_AGY.md) |
| **Claude Code** | `~/.claude/skills/` atau `.claude/skills/` | Markdown (`SKILL.md`) | [`installation/claude-code/INSTALL_CLAUDE.md`](../installation/claude-code/INSTALL_CLAUDE.md) |
| **OpenAI Codex** | `.codex/skills/` atau instruksi sistem | Markdown / YAML prompts | [`installation/codex/INSTALL_CODEX.md`](../installation/codex/INSTALL_CODEX.md) |
| **Gemini CLI** | `~/.gemini/config/skills/` | Markdown (`SKILL.md`) | [`installation/gemini-cli/INSTALL_GEMINI.md`](../installation/gemini-cli/INSTALL_GEMINI.md) |
| **Cursor AI** | `.cursor/rules/` atau direktori workspace | Markdown rules / prompt files | [`installation/cursor/INSTALL_CURSOR.md`](../installation/cursor/INSTALL_CURSOR.md) |
| **Generic File-Based Agents** | Jalur kustom workspace | Markdown instructions murni | [`installation/generic-agents/INSTALL_GENERIC.md`](../installation/generic-agents/INSTALL_GENERIC.md) |

---

## 3. Protokol Deteksi Duplikasi (Duplicate Detection Protocol)

Sebelum menyalin skill dari paket ini:
1. Periksa direktori target skill pada lingkungan host Anda.
2. Bandingkan nama dan tujuan skill dengan entri pada [`MANIFEST.json`](../MANIFEST.json).
3. Klasifikasikan status komponen:
   - `ALREADY_INSTALLED`: Sudah ada dan berfungsi. **Lewati instalasi.**
   - `PARTIALLY_INSTALLED`: Tersedia sebagian. Pasang hanya bagian yang belum lengkap.
   - `NOT_INSTALLED`: Belum ada. Silakan pasang ke direktori skills host Anda.
   - `DUPLICATE`: Komponen memiliki fungsi identik dengan yang sudah terpasang. Pertahankan satu saja.
   - `ALTERNATIVE`: Memiliki fungsi serupa dengan pendekatan berbeda. Pilih salah satu berdasarkan panduan seleksi.

---

## 4. Panduan Seleksi Keterampilan Cerdas (Skill Selection Matrix)

Jangan memanggil beberapa skill yang berada dalam ranah yang sama secara bersamaan. Ikuti hierarki seleksi berikut:

### A. Ranah Desain Antarmuka & Frontend
- **Pusat Keputusan Arsitektur**: Gunakan `master-design-intelligence` sebagai pemandu utama dalam menentukan arah desain, stack framework (Next.js vs Laravel Blade), dan aturan sanitasi DOM.
- **Arah Seni Visual (Art Direction)**: Gunakan `design-taste-frontend` saat merancang identitas visual landing page dari awal untuk menghindari template generik.
- **Kritik & Audit Craft**: Gunakan `impeccable` untuk memeriksa kontras warna, ritme vertikal tipografi, hierarki visual, dan affordance interaksi tombol.
- **Ikon Vektor**: Gunakan `lucide-icons` untuk mengambil ikon Lucide yang valid tanpa halusinasi jalur SVG.
- **Komponen Animasi & UI Kreatif React**: Gunakan `react-bits` (repositori resmi / upstream: [`DavidHDev/react-bits`](https://github.com/DavidHDev/react-bits)) untuk komponen animasi React siap pakai, efek teks interaktif (*Split Text*, *Shiny Text*, *Blur Text*), kartu beranimasi (*Tilted Card*, *Spotlight Card*), dan latar belakang dinamis (*Hyperspeed*, *Waves*, *Ballpit*).

### B. Ranah Animasi & Rekayasa Gerak (Motion Engineering)
- **Komponen Reaktif React**: Gunakan `framer-motion` untuk gesture drag, modal exit animations (`AnimatePresence`), dan animasi spring physics.
- **Efek Teks & Widget Animasi React**: Padukan `react-bits` bersama `framer-motion` untuk animasi mikro antarmuka React yang telah teroptimasi tanpa perlu mengkodekan ulang matematika animasi.
- **Timeline Beruntun & ScrollTrigger**: Gunakan `gsap-motion-specialist` untuk animasi berbasis scroll, parallax, garis SVG morphing, dan animasi di Laravel Blade native.
- **Efek Visual GPU & Kanvas**: Gunakan `shaders-webgpu-specialist` untuk simulasi partikel, shader cairan WGSL, dan selalu terapkan arsitektur 4-tier fallback (WebGPU -> WebGL2 -> Canvas 2D -> CSS Gradient).
- **Adegan 3D Interaktif**: Gunakan `dioramas-web-design` untuk pengalaman 3D Three.js lokal bebas watermark.

### C. Ranah Kualitas Penulisan & Anti-Slop (Writing Quality)
- **Nada Bicara Alami**: Gunakan `humanizer` untuk mengubah draf tulisan yang kaku menjadi bahasa manusia alami yang lugas.
- **Audit Pola AI Sistematis**: Gunakan `avoid-ai-writing` untuk mendeteksi dan membersihkan pola AI-isms pada dokumentasi atau kode sumber.
- **Penajaman Draf Singkat**: Gunakan `no-ai-slop` untuk memangkas basa-basi dan kalimat klise.
- **Pembersihan Frasa Klise**: Gunakan `stop-slop` untuk menghapus struktur kalimat pasif dan frasa buatan AI.
- **Aturan UI & Kode Bersih**: Gunakan `antislop` untuk mencegah komentar kode yang tidak berguna dan menjaga aksesibilitas tata letak antarmuka.

### D. Ranah Rekayasa & Alur Kerja Agen (Core Engineering Workflows)
- **Alur Kerja Standar Senior**: Gunakan `superpowers` untuk alur TDD, brainstorming terstruktur, pembuatan rencana bertahap, dan verifikasi sebelum penyelesaian.
- **Solusi Ringkas & Anti-Overengineering**: Terapkan filosofi `ponytail` untuk menghasilkan perubahan terkecil yang menyelesaikan masalah secara tuntas.
- **Panduan Perilaku LLM Minimalis**: Terapkan `karpathy-guidelines` (repositori resmi / upstream: [`multica-ai/andrej-karpathy-skills`](https://github.com/multica-ai/andrej-karpathy-skills)) — mencakup 4 prinsip utama pencegah kesalahan LLM: *Think Before Coding* (jangan berasumsi, buka kebingungan), *Simplicity First* (kode minimal tanpa spekulasi), *Surgical Changes* (sentuh hanya yang diminta), dan *Goal-Driven Execution* (looping verifikasi terukur).
- **Audit Kode Skala Besar**: Gunakan `codebase-improve` (author: shadcn) untuk memetakan arsitektur dan membuat rencana kerja mandiri bagi agen eksekutor.
- **Registri & Scaffolding Komponen (MCP)**: Gunakan MCP server `shadcn` (`npx shadcn@latest mcp`) untuk penelusuran katalog registri komponen UI secara otomatis dan instalasi blok antarmuka langsung dari agent prompt.
- **Reverse Engineering Target**: Gunakan `reverse-engineer-anything` (REA) untuk membedah biner native atau runtime web.

### E. Ranah Keamanan Aplikasi & Bug Hunting (Application Security & Bug Bounty)
- **Otomasi Pengujian Kerentanan & Bug Bounty**: Gunakan `agentic-bug-hunter` (repositori resmi / upstream: [`awarexone/Agentic-Bug-Hunter`](https://github.com/awarexone/Agentic-Bug-Hunter)) sebagai plugin dan toolkit bug bounty cerdas dengan alur kerja 4-tahap terstruktur: Reconnaissance (`/recon`), Vulnerability Hunting (`/hunt`), 7-Question Validation Gate (`/validate`), dan pelaporan otomatis siap kirim (`/report`) berstandar HackerOne, Bugcrowd, Intigriti, dan Immunefi.
- **Dekonstruksi Biner & Reverse Engineering**: Padukan dengan `reverse-engineer-anything` (REA) saat pengujian memerlukan inspeksi artefak biner native, tracing runtime, atau dekompilasi aplikasi.
- **Kepatuhan Etika & Batasan Otorisasi**: Seluruh pengujian keamanan mutlak dijalankan hanya pada target yang memiliki izin tertulis atau berada dalam cakupan (*in-scope*) program bug bounty resmi. Dilarang melakukan serangan destruktif atau pengujian tanpa otorisasi.

---

## 5. Cara Menjalankan Skrip Bantuan & Memeriksa Kesehatan Paket

Paket ini menyediakan utilitas diagnosa terintegrasi:

```bash
# Jalankan audit integritas paket (Node.js)
node tools/utilities/audit-toolkit-health.mjs
```

Skrip ini akan memverifikasi seluruh komponen utama, memeriksa keberadaan manifest, dan memastikan relative paths dapat diselesaikan dengan benar.

---

## 6. Resolusi Konflik & Penanganan Batasan

Jika terjadi benturan rekomendasi antara dua skill:
1. Prioritaskan kebutuhan fungsional nyata dari pengguna.
2. Pilih solusi dengan dependensi paling ringan dan overhead komputasi paling kecil.
3. Selalu periksa dukungan browser dan preferensi aksesibilitas (`prefers-reduced-motion`).
4. Jangan pernah mengorbankan performa demi efek kosmetik yang tidak diminta.
