# Changelog: Universal Agent Skills & Toolkit

Seluruh riwayat pembuatan, restrukturisasi, sanitasi jalur, dan verifikasi paket dicatat pada berkas ini.

---

## [1.0.1] - 2026-11-10

### Changed
- Memperbarui nama repositori dan identitas proyek menjadi **Better WebDev** (`https://github.com/GofranML/Better-WebDev.git`).

---

## [1.0.0] - 2026-11-09

### Added (Penambahan Komponen)
- **Struktur Direktori Modular**: Membangun tata letak hierarkis terstandarisasi mencakup `instructions/`, `custom-skills/`, `skills/`, `tools/`, `references/`, `installation/`, `audit/`, dan `examples/`.
- **Salinan Portabel Custom Skills AGY**:
  - `custom-skills/master-design-intelligence`: Pembersihan absolute path ke `design-intelligence-library`.
  - `custom-skills/anatomy`: Pembundelan kit utilitas lengkap (`kit/lathe.mjs`, `kit/tube.mjs`, `kit/audit.mjs`), evals, tests, dan skrip pendukung.
  - `custom-skills/gsap-motion-specialist`: Panduan rekayasa gerak timeline & ScrollTrigger mandiri.
  - `custom-skills/shaders-webgpu-specialist`: Efek visual WebGPU/WGSL mandiri dengan 4-tier fallback.
  - `custom-skills/dioramas-web-design`: Integrasi Three.js mandiri beserta core engine Dioramas.
  - `custom-skills/lucide-icons`: Antarmuka ekstraksi 1.903 ikon Lucide dan direktori 42 kategori.
  - `custom-skills/framer-motion`: Panduan integrasi animasi deklaratif React dan Motion WAAPI.
  - `custom-skills/karpathy-guidelines`: Panduan perilaku coding bedah minimalis.
- **Pangkalan Referensi Desain Mandiri**: Membundel 14 berkas markdown dari `design-intelligence-library` ke `references/design-intelligence-library/`.
- **Konfigurasi MCP Lintas Platform**: Menyediakan `tools/mcp/mcp-universal.json` dan panduan instalasi untuk Playwright, Desktop Touch, dan REA.
- **Instruksi Universal Agen**: Menyusun `instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md`, `SKILL_SELECTION_GUIDE.md`, `INSTALLATION_WORKFLOW.md`, `DUPLICATE_DETECTION.md`, `SECURITY_POLICY.md`, dan `PORTABILITY_GUIDE.md`.
- **Adaptor Instalasi Multi-Agent**: Menyediakan dokumen panduan untuk Google Antigravity, Claude Code, OpenAI Codex, Gemini CLI, Cursor AI, dan Generic Agents.
- **Skrip Diagnosa Kesehatan**: Menambahkan `tools/utilities/audit-toolkit-health.mjs`.
- **Katalog Mesin & Manifest**: Menyusun `MANIFEST.json` berisikan metadata seluruh komponen.
- **Integrasi Keamanan Aplikasi & Bug Hunting**: Menambahkan panduan adapter dan instruksi operasional untuk `agentic-bug-hunter` (AwareXone) pada `skills/adapters/EXTERNAL_REPOSITORIES_ADAPTER.md`, matriks seleksi pada `SKILL_SELECTION_GUIDE.md`, aturan pengujian keamanan pada `SECURITY_POLICY.md`, dan instruksi agen pada `UNIVERSAL_AGENT_INSTRUCTIONS.md`.

### Changed (Sanitasi Jalur & Perbaikan)
- Mengubah seluruh referensi jalur absolut Windows (`D:\AI\design-intelligence-library` dan `D:\SEMESTER 5\PEMOGRAMAN WEB LANJUTAN\tools\...`) menjadi relative path standar paket.
- Mengeliminasi duplikasi fisik berkas `codex-ppt` dan `reverse-engineer-anything` antara direktori `.gemini` dan `.agents` menjadi satu entri kanonikal.
- Menyesuaikan ukuran paket dengan mengecualikan berkas PDF raster berbobot 24 MB dari contoh Anatomy tanpa memotong kode sumber fungsional.

### Security & Governance
- Menegakkan kebijakan nol rahasia (zero-secret) dan verifikasi bebas token/kunci API pribadi.
- Menegakkan larangan watermark wajib vendor pihak ketiga (Spline Free Tier dan Framer Web Hosting Free) sesuai kebijakan produksi bersih AGY.
