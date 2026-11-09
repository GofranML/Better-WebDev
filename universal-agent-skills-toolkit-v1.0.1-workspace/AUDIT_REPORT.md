# AUDIT_REPORT: Universal AI Agent Skills & Toolkit Portable Distribution
**Fase Audit:** Phase 0 (Read-Only Environment Audit)  
**Lingkungan:** Google Antigravity (AGY) CLI / Windows  
**Tanggal:** 2026-11-09  
**Status:** Audit Tuntas (Menunggu Persetujuan Masuk Phase 1)

---

## 1. Ringkasan Eksekutif (Executive Summary)

Audit lingkungan AGY telah selesai dilakukan secara *read-only* tanpa mengubah, menghapus, atau memindahkan satu berkas pun pada instalasi pengguna. Audit memeriksa:
1. Direktori global skills (`C:\Users\epann\.gemini\config\skills\` dan `C:\Users\epann\.agents\skills\`).
2. Direktori plugin AGY (`C:\Users\epann\.gemini\config\plugins\`).
3. Direktori konfigurasi MCP (`C:\Users\epann\.gemini\config\mcp_config.json`).
4. Pangkalan data desain mandiri (`<DRIVE_PATH>\AI\design-intelligence-library\`).
5. Repositori monorepo dan tools lokal (`<DRIVE_PATH>\PEMOGRAMAN_WEB\tools\` dan `D:\Tools\ECC`).
6. Workspace pengujian isolasi sebelumnya (`<DRIVE_PATH>\AI\isolated-workspace-tests\`).
7. 40 target repositori dan sumber referensi resmi yang ditetapkan pengguna.

Hasil audit mengidentifikasi bahwa **27 dari 40 target telah terdata di lingkungan lokal (26 terpasang penuh, 1 terpasang parsial, dan 13 sumber eksternal)** (baik berupa instalasi skill aktif, plugin, konfigurasi MCP server, atau repositori/referensi lokal utuh), sementara **13 target belum terpasang secara lokal**. Selain itu, ditemukan **8 custom skills AGY** dan 1 pangkalan pengetahuan desain yang memerlukan penyusunan salinan portabel independen bebas dari ketergantungan *absolute path*.

---

## 2. Inventarisasi Seluruh Skills yang Ditemukan (Found Skills)

### A. Skills pada `C:\Users\epann\.gemini\config\skills\`
1. [`anatomy`](file:///<USER_DIR>/.gemini/config/skills/anatomy): Visual explainer isometrik SVG teknis lengkap beserta skrip `kit/lathe.mjs`, `kit/tube.mjs`, `kit/audit.mjs`, referensi, dan contoh.
2. [`codebase-improve`](file:///<USER_DIR>/.gemini/config/skills/codebase-improve): Skill audit arsitektur dan perencanaan implementasi tingkat senior (karya shadcn).
3. [`codex-ppt`](file:///<USER_DIR>/.gemini/config/skills/codex-ppt): Pembuat slide presentasi berbasis gambar untuk model Codex/LLM.
4. [`daisyui`](file:///<USER_DIR>/.gemini/config/skills/daisyui): Ensiklopedia komponen lengkap DaisyUI Tailwind CSS (50+ markdown komponen).
5. [`dioramas-web-design`](file:///<USER_DIR>/.gemini/config/skills/dioramas-web-design): Panduan implementasi Three.js dan GSAP untuk adegan web 3D sinematik.
6. [`framer-motion`](file:///<USER_DIR>/.gemini/config/skills/framer-motion): Panduan animasi deklaratif React dan Motion v14+ WAAPI.
7. [`graphify`](file:///<USER_DIR>/.gemini/config/skills/graphify): Ekstraksi graf pengetahuan basis kode dan dependensi arsitektur.
8. [`gsap-motion-specialist`](file:///<USER_DIR>/.gemini/config/skills/gsap-motion-specialist): Rekayasa gerak timeline GSAP, ScrollTrigger, dan integrasi React/Blade (Custom AGY).
9. [`impeccable`](file:///<USER_DIR>/.gemini/config/skills/impeccable): Arahan craft visual, kritik desain, audit hierarki, dan pemolesan antarmuka.
10. [`karpathy-guidelines`](file:///<USER_DIR>/.gemini/config/skills/karpathy-guidelines): Panduan perilaku rekayasa kode minimalis untuk mencegah kesalahan LLM.
11. [`lucide-icons`](file:///<USER_DIR>/.gemini/config/skills/lucide-icons): Pencarian dan ekstraksi ikon SVG Lucide otentik 1.900+ ikon (Custom AGY).
12. [`master-design-intelligence`](file:///<USER_DIR>/.gemini/config/skills/master-design-intelligence): Orkestrator keputusan desain antarmuka, pemilihan teknologi visual, dan kepatuhan kode bersih (Custom AGY).
13. [`reverse-engineer-anything`](file:///<USER_DIR>/.gemini/config/skills/reverse-engineer-anything): Panduan reverse engineering biner, web, dan runtime target via REA.
14. [`shaders-webgpu-specialist`](file:///<USER_DIR>/.gemini/config/skills/shaders-webgpu-specialist): Rekayasa efek visual WebGPU, shader WGSL, dan arsitektur 4-tier fallback (Custom AGY).

### B. Skills pada `C:\Users\epann\.agents\skills\`
15. [`avoid-ai-writing`](file:///<USER_DIR>/.agents/skills/avoid-ai-writing): Audit dan penulisan ulang pola tulisan AI (AI-isms) dengan skrip detektor dan korpus.
16. [`codex-ppt`](file:///<USER_DIR>/.agents/skills/codex-ppt): Duplikat 100% identik dari versi `.gemini`.
17. [`design-taste-frontend`](file:///<USER_DIR>/.agents/skills/design-taste-frontend): Arahan seni antarmuka hasil kurasi 247 galeri desain web (Taste Skill).
18. [`find-skills`](file:///<USER_DIR>/.agents/skills/find-skills): Penemuan dan instalasi agent skills pihak ketiga.
19. [`humanizer`](file:///<USER_DIR>/.agents/skills/humanizer): Penulisan ulang teks bergaya AI menjadi gaya penulisan manusia alami.
20. [`mcptoon`](file:///<USER_DIR>/.agents/skills/mcptoon): Kompresi schema MCP dan katalog manajemen skill agent.
21. [`no-ai-slop`](file:///<USER_DIR>/.agents/skills/no-ai-slop): Penajaman tulisan dan pembersihan pola klise AI.
22. [`reverse-engineer-anything`](file:///<USER_DIR>/.agents/skills/reverse-engineer-anything): Duplikat 100% identik dari versi `.gemini`.
23. [`stop-slop`](file:///<USER_DIR>/.agents/skills/stop-slop): Penghapusan pola penulisan formulaik AI pada prosa.

### C. Skills Builtin AGY (`C:\Users\epann\.gemini\antigravity-cli\builtin\skills\`)
24. [`agy-customizations`](file:///<USER_DIR>/.gemini/antigravity-cli/builtin/skills/agy-customizations): Dokumentasi sistem kustomisasi AGY.
25. [`antigravity_guide`](file:///<USER_DIR>/.gemini/antigravity-cli/builtin/skills/antigravity_guide): Panduan lengkap ekosistem Antigravity.
26. Dan paket builtin lainnya: `automation`, `generative_ui`, `migrate-agent-settings`, `migrate-workflows`, `native_swarm`, `permissioned-github`, `plugin`, `run-workflow`, `swarm_monitor`, `swarm_narrator`, `ui-plugin-navigation`.

---

## 3. Inventarisasi Custom Skills yang Pernah Dibuat di AGY

Terdapat 8 komponen spesialis kustom dan 1 pustaka pengetahuan yang dikembangkan secara orisinal di AGY:

1. **`master-design-intelligence`**: Layer orkestrasi keputusan visual 7 tahap, pemilihan framework, dan tata kelola kode bersih (bebas watermark vendor).
2. **`gsap-motion-specialist`**: Rekayasa gerak GSAP, ScrollTrigger, stagger, timeline sequencing, integrasi React useGSAP vs Laravel Blade murni, dan penanganan `prefers-reduced-motion`.
3. **`shaders-webgpu-specialist`**: Rekayasa efek visual kanvas GPU, pipeline WebGPU/WGSL, dan arsitektur 4-tier graceful fallback (WebGPU -> WebGL2 -> Canvas 2D -> CSS Gradient).
4. **`anatomy` (Customized Port)**: Kit pembuatan ilustrasi teknis isometrik SVG solid 4-tone shading dengan skrip utilitas aktif (`lathe.mjs`, `tube.mjs`, `audit.mjs`).
5. **`lucide-icons` (Customized Agent Interface)**: Akses terstruktur ke 1.903 ikon SVG lokal, direktori 42 kategori kurasi, dan resep integrasi framework.
6. **`dioramas-web-design`**: Panduan implementasi Three.js mandiri berbasis repositori Dioramas untuk landing page 3D bebas watermark.
7. **`framer-motion`**: Panduan integrasi animasi deklaratif React dan matriks seleksi Motion vs GSAP.
8. **`karpathy-guidelines` (Agent Behavioral Port)**: Implementasi operasional prinsip rekayasa kode minimalis untuk agen AI.
9. **`<DRIVE_PATH>\AI\design-intelligence-library\`**: Pangkalan pengetahuan referensi desain terpusat (berisi 14 berkas markdown indeks taksonomi, aturan seleksi cerdas, matriks kompatibilitas framework, register lisensi, dan kebijakan DOM bersih).

---

## 4. Plugin dan MCP Servers yang Ditemukan

### A. Installed Plugins (`C:\Users\epann\.gemini\config\plugins\`)
1. **`antislop`** ([`antislop`](file:///<USER_DIR>/.gemini/config/plugins/antislop)): Menyediakan aturan, skrip, CLI, dan 6 skills (`antislop`, `antislop-code`, `antislop-copywriting`, `antislop-human`, `antislop-layoutmobile`, `antislop-ui`).
2. **`ecc-curated`** ([`ecc-curated`](file:///<USER_DIR>/.gemini/config/plugins/ecc-curated)): Subset kurasi dari Everything Claude Code berisi 5 skills (`architecture-decision-records`, `click-path-audit`, `codebase-onboarding`, `context-budget`, `council`).
3. **`ponytail`** ([`ponytail`](file:///<USER_DIR>/.gemini/config/plugins/ponytail)): Filosofi *lazy senior dev* berisi 6 skills (`ponytail`, `ponytail-audit`, `ponytail-debt`, `ponytail-gain`, `ponytail-help`, `ponytail-review`).
4. **`superpowers`** ([`superpowers`](file:///<USER_DIR>/.gemini/config/plugins/superpowers)): Alur kerja rekayasa agen inti berisi 15 skills (`brainstorming`, `executing-plans`, `subagent-driven-development`, `systematic-debugging`, `test-driven-development`, `using-git-worktrees`, `verification-before-completion`, `writing-plans`, dll).

### B. MCP Servers Aktif (`C:\Users\epann\.gemini\config\mcp_config.json`)
1. **`playwright`**: Browser automation MCP server via `@playwright/mcp@latest`.
2. **`desktop-touch`**: Desktop GUI screenshot dan input automation via `@harusame64/desktop-touch-mcp`.
3. **`rea`**: Reverse engineering agent runtime server via `rea-agents@6.5.0 mcp`.

---

## 5. Audit Matriks 40 Target Sumber (Status Ketersediaan & Klasifikasi)

Berikut adalah status definitif dari 40 repositori dan referensi yang diminta:

| No | Target Sumber / URL | Kategori Utama | Status Lingkungan Saat Ini | Lokasi Lokal / Detail | Lisensi |
|:---:|---|---|:---:|---|:---:|
| 1 | `https://github.com/tabler/tabler` | UI Kit / Dashboard | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 2 | `https://github.com/Ashutoshx7/VengeanceUI` | UI Components (React) | **ALREADY_INSTALLED** | `<DRIVE_PATH>\AI\design-intelligence-library\components\vengeanceui` | MIT |
| 3 | `https://github.com/saadeghi/daisyui` | UI Framework (Tailwind) | **ALREADY_INSTALLED** | Skill `.gemini\config\skills\daisyui` & `tools\daisyUI` | MIT |
| 4 | `https://github.com/lucide-icons/lucide` | Icon Library | **ALREADY_INSTALLED** | Skill `.gemini\config\skills\lucide-icons` & `tools\lucide-svg` | ISC |
| 5 | `https://github.com/shadcn-ui/ui` | UI Component System | **PARTIALLY_INSTALLED** | Skill `codebase-improve` (author: shadcn) & pola di pustaka | MIT |
| 6 | `https://github.com/blendi-remade/dioramas` | 3D Interactive Web | **ALREADY_INSTALLED** | Skill `dioramas-web-design` & repo `tools\dioramas` | MIT |
| 7 | `https://github.com/Nutlope/hallmark` | AI Greeting Cards | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 8 | `https://github.com/dominikmartn/hue` | Color Palette Tool | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 9 | `https://github.com/affaan-m/ecc` | Agent Skills / Workflows | **ALREADY_INSTALLED** | Plugin `ecc-curated` & repo `D:\Tools\ECC` | MIT |
| 10 | `https://github.com/pbakaus/impeccable` | Design Craft & Polish | **ALREADY_INSTALLED** | Skill `.gemini\config\skills\impeccable` | Apache-2.0 |
| 11 | `https://github.com/Leonxlnx/taste-skill` | Frontend Art Direction | **ALREADY_INSTALLED** | Skill `.agents\skills\design-taste-frontend` | MIT |
| 12 | `https://github.com/wheresryan22/anatomy` | Technical SVG Figures | **ALREADY_INSTALLED** | Skill & Kit `.gemini\config\skills\anatomy` | MIT |
| 13 | `https://github.com/vercel-labs/skills` | Agent Skills (Next.js) | **NOT_INSTALLED** | Belum ada klon lokal | Apache-2.0 |
| 14 | `https://github.com/morluto/rea` | Reverse Engineering | **ALREADY_INSTALLED** | MCP Server `rea` & Skill `reverse-engineer-anything` | AGPL-3.0 |
| 15 | `https://github.com/obra/superpowers` | Agent Core Workflows | **ALREADY_INSTALLED** | Plugin `.gemini\config\plugins\superpowers` | MIT |
| 16 | `https://github.com/anthropics/skills` | Claude Agent Skills | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 17 | `https://github.com/nextlevelbuilder/ui-ux-pro-max-skill` | UI/UX Pro Max Skill | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 18 | `https://github.com/dickwu/apple-design-skill` | Apple HIG Design Skill | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 19 | `https://github.com/jakubkrehel/skills/.../better-interface` | Better Interface Skill | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 20 | `https://github.com/jakubkrehel/skills` | Agent Skills Catalog | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 21 | `https://github.com/emilkowalski/skills/.../apple-design` | Apple Design & Motion | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 22 | `https://github.com/Dammyjay93/interface-design` | Interface Design Skill | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 23 | `https://github.com/Superfuture/design-review` | Design Review Skill | **NOT_INSTALLED** | Belum ada klon lokal | MIT |
| 24 | `https://github.com/google-labs-code/stitch-skills` | Google Stitch Skills | **NOT_INSTALLED** | Belum ada klon lokal | Apache-2.0 |
| 25 | `https://github.com/ningzimu/codex-ppt-skill` | Presentation Generator | **ALREADY_INSTALLED** | Skill `codex-ppt` (di `.gemini` & `.agents`) | MIT |
| 26 | `https://github.com/blader/humanizer` | Human Writing Tone | **ALREADY_INSTALLED** | Skill `.agents\skills\humanizer` | MIT |
| 27 | `https://github.com/conorbronsdon/avoid-ai-writing` | AI-ism Pattern Audit | **ALREADY_INSTALLED** | Skill `.agents\skills\avoid-ai-writing` | Apache-2.0 |
| 28 | `https://github.com/petergyang/no-ai-slop` | Prose Sharpening | **ALREADY_INSTALLED** | Skill `.agents\skills\no-ai-slop` | MIT |
| 29 | `https://github.com/hardikpandya/stop-slop` | AI Cliche Removal | **ALREADY_INSTALLED** | Skill `.agents\skills\stop-slop` | MIT |
| 30 | `https://github.com/miqdadbadjuber/anti-slop` | Anti-Slop Complete | **ALREADY_INSTALLED** | Plugin `.gemini\config\plugins\antislop` | MIT |
| 31 | `https://github.com/shader-effects-inc/shaders` | WebGPU Shader Effects | **ALREADY_INSTALLED** | Skill `shaders-webgpu-specialist` & ref di library | MIT |
| 32 | `https://github.com/greensock/GSAP` | Animation Platform | **ALREADY_INSTALLED** | Skill `gsap-motion-specialist` & ref di library | GreenSock |
| 33 | `https://github.com/mrdoob/three.js` | 3D Graphics Library | **ALREADY_INSTALLED** | Ref di `threejs-dioramas` & repo `tools\dioramas` | MIT |
| 34 | `https://github.com/motiondivision/motion` | Animation Engine | **ALREADY_INSTALLED** | Skill `framer-motion` & repo `tools\motion` | MIT |
| 35 | `https://github.com/activeing123/mcptoon` | MCP Compression | **ALREADY_INSTALLED** | Skill `.agents\skills\mcptoon` | MIT |
| 36 | `https://github.com/Graphify-Labs/graphify` | Knowledge Graph | **ALREADY_INSTALLED** | Skill `graphify` & repo `tools\graphify` | MIT |
| 37 | `https://github.com/DietrichGebert/ponytail` | Lazy Senior Dev | **ALREADY_INSTALLED** | Plugin `.gemini\config\plugins\ponytail` | MIT |
| 38 | `https://github.com/microsoft/playwright-mcp` | Browser Automation | **ALREADY_INSTALLED** | MCP Server aktif di `mcp_config.json` | Apache-2.0 |
| 39 | `https://github.com/Harusame64/desktop-touch-mcp` | Desktop Touch Automation| **ALREADY_INSTALLED** | MCP Server aktif di `mcp_config.json` | MIT |
| 40 | `https://impeccable.style/` | Official Impeccable Doc | **ALREADY_INSTALLED** | Terdokumentasi dalam skill `impeccable` | Dokumentasi |

**Ringkasan Status:**
- `ALREADY_INSTALLED`: 27 sumber
- `PARTIALLY_INSTALLED`: 1 sumber (`shadcn-ui/ui`)
- `NOT_INSTALLED`: 12 sumber (Tabler, Hallmark, Hue, Vercel Skills, Anthropics Skills, UI/UX Pro Max, Dick Wu Apple Design, Jakub Krehel Better Interface, Jakub Krehel Skills, Emil Kowalski Apple Design, Dammyjay Interface Design, Superfuture Design Review, Google Stitch)

---

## 6. Analisis Duplikasi dan Fungsi Serupa (Duplicate & Overlap Analysis)

### A. Duplikat Berkas Fisik (Exact Duplicates)
1. **`codex-ppt`**: Ditemukan salinan identik pada `.gemini\config\skills\codex-ppt` dan `.agents\skills\codex-ppt`.
2. **`reverse-engineer-anything`**: Ditemukan salinan identik pada `.gemini\config\skills\reverse-engineer-anything` dan `.agents\skills\reverse-engineer-anything`.
*Rekomendasi Paket:* Konsolidasikan menjadi satu entri portabel kanonikal di dalam paket distribusi.

### B. Kluster Penulisan & Anti-Slop (5 Komponen Serupa)
1. `humanizer` (fokus pada nada bicara Wikipedia style).
2. `avoid-ai-writing` (fokus pada deteksi terstruktur 7 dimensi dan audit kode sumber).
3. `no-ai-slop` (fokus pada penajaman tulisan editorial).
4. `stop-slop` (fokus pada daftar frasa terlarang dan pola kalimat pasif).
5. `anti-slop` (fokus pada plugin holistik kode, UI, dan layout).
*Rekomendasi Paket:* Tidak boleh dijalankan bersamaan secara serampangan. Buat matriks seleksi pada `instructions/SKILL_SELECTION_GUIDE.md` yang menetapkan satu alat utama per tugas sesuai aturan baku AGY.

### C. Kluster Desain Antarmuka & Seni (Design Direction)
1. `taste-skill` (`design-taste-frontend`): Penentu arah seni visual (art direction) awal.
2. `impeccable`: Audit implementasi desain, ritme tipografi, dan perbaikan detail.
3. `master-design-intelligence`: Pengambil keputusan arsitektural dan seleksi komponen.
*Rekomendasi Paket:* Susun alur kerja komplementer: `master-design-intelligence` memegang orkestrator tingkat atas, `taste-skill` menentukan estetika visual, dan `impeccable` melakukan verifikasi craft.

### D. Kluster Animasi & Rekayasa Gerak
1. `gsap-motion-specialist`: Optimal untuk timeline beruntun, ScrollTrigger, dan integrasi Laravel Blade native.
2. `framer-motion`: Optimal untuk komponen reaktif React, gesture, dan AnimatePresence.
3. `shaders-webgpu-specialist`: Khusus untuk kanvas GPU dan efek visual prosedural WebGPU.
*Rekomendasi Paket:* Pertahankan pemisahan ortogonal ini dengan matriks keputusan yang jelas agar agent lain tidak memasang runtime berat untuk animasi sederhana.

---

## 7. Analisis Keamanan & Lisensi (Security & License Review)

### A. Masalah Keamanan & Dependensi Lokal (Security Findings)
1. **Hardcoded Absolute Paths**: Berkas `SKILL.md` pada `master-design-intelligence`, `lucide-icons`, dan `dioramas-web-design` saat ini merujuk ke jalur lokal mesin seperti `<DRIVE_PATH>\AI\design-intelligence-library` dan `<DRIVE_PATH>\PEMOGRAMAN_WEB\tools\...`.
   - *Tindakan Mitigasi Portabel:* Seluruh jalur harus diubah menjadi relative path standar paket (`./references/...`, `./tools/...`) dan dilengkapi instruksi adaptasi dinamis.
2. **Ketiadaan Rahasia / Credentials**: Tidak ditemukan kunci API, token, atau informasi pribadi pada berkas skill dan rule.
3. **Eksekusi Perintah Shell**: Konfigurasi MCP `rea` menggunakan `cmd.exe /d /c npx -y ...`. Paket distribusi harus menyediakan konfigurasi MCP lintas sistem operasi (Windows, macOS, Linux).

### B. Masalah Lisensi & Larangan Watermark (License Compliance)
1. Seluruh pustaka utama berlisensi terbuka (MIT, Apache-2.0, ISC).
2. **GSAP**: Berlisensi GreenSock Standard (bebas royalti untuk website komersial standar, berbayar untuk produk builder/SaaS komersial multi-penyewa).
3. **Watermark / Clean Output Governance**:
   - Spline Free Tier dan Framer Free Web Hosting berstatus **FAIL** karena menyuntikkan logo wajib.
   - Sesuai kebijakan pengguna, paket distribusi mengalihkan seluruh kebutuhan 3D ke Three.js lokal dan kebutuhan gerak ke Motion/GSAP bebas watermark.

---

## 8. Rekomendasi Struktur Paket Distribusi Portabel

```text
Universal-Agent-Skills-Toolkit/
â”œâ”€â”€ README.md                          # Panduan pengenalan & navigasi paket
â”œâ”€â”€ INSTALL.md                         # Panduan instalasi cepat untuk semua agen
â”œâ”€â”€ CHANGELOG.md                       # Catatan versi paket distribusi
â”œâ”€â”€ LICENSES.md                        # Register lisensi & kewajiban atribusi
â”œâ”€â”€ SECURITY.md                        # Kebijakan keamanan, sanitasi path & no-secret
â”œâ”€â”€ COMPATIBILITY.md                   # Matriks kompatibilitas lintas agen AI
â”œâ”€â”€ MANIFEST.json                      # Indeks mesin seluruh komponen paket
â”‚
â”œâ”€â”€ instructions/
â”‚   â”œâ”€â”€ UNIVERSAL_AGENT_INSTRUCTIONS.md # Instruksi utama yang dibaca agen penerima
â”‚   â”œâ”€â”€ INSTALLATION_WORKFLOW.md        # Alur instalasi bebas duplikasi
â”‚   â”œâ”€â”€ SKILL_SELECTION_GUIDE.md        # Matriks seleksi skill tanpa tumpang tindih
â”‚   â”œâ”€â”€ DUPLICATE_DETECTION.md          # Protokol deteksi instalasi eksisting
â”‚   â”œâ”€â”€ SECURITY_POLICY.md              # Standar keamanan kode & sanitasi DOM
â”‚   â””â”€â”€ PORTABILITY_GUIDE.md            # Cara mengonversi path lokal ke portabel
â”‚
â”œâ”€â”€ skills/
â”‚   â”œâ”€â”€ official/                      # Skills resmi terverifikasi
â”‚   â”œâ”€â”€ third-party/                   # Skills pihak ketiga yang dikonsolidasi
â”‚   â”œâ”€â”€ custom/                        # Portabel custom skills AGY
â”‚   â””â”€â”€ adapters/                      # Adaptor prompt & config khusus per agen
â”‚
â”œâ”€â”€ tools/
â”‚   â”œâ”€â”€ mcp/                           # Konfigurasi & skrip launcher MCP
â”‚   â”œâ”€â”€ frameworks/                    # Referensi & helper integrasi framework
â”‚   â”œâ”€â”€ ui-libraries/                  # Pustaka komponen bersih (DaisyUI, Vengeance)
â”‚   â”œâ”€â”€ animation/                     # Panduan & skrip animasi (GSAP, Motion)
â”‚   â”œâ”€â”€ graphics-3d/                   # Modul 3D mandiri (Three.js Dioramas)
â”‚   â””â”€â”€ utilities/                     # Skrip audit & helper
â”‚
â”œâ”€â”€ references/
â”‚   â”œâ”€â”€ design-intelligence-library/   # Salinan portabel pangkalan referensi desain
â”‚   â”œâ”€â”€ icons/                         # Indeks kategori Lucide & skrip ekstraksi
â”‚   â”œâ”€â”€ writing-anti-slop/             # Korpus, pola frasa, dan panduan anti-slop
â”‚   â””â”€â”€ architecture/                  # Template ADR, click-path, & onboarding
â”‚
â”œâ”€â”€ installation/
â”‚   â”œâ”€â”€ antigravity/                   # Panduan instalasi ke Google Antigravity
â”‚   â”œâ”€â”€ claude-code/                   # Panduan instalasi ke Claude Code
â”‚   â”œâ”€â”€ codex/                         # Panduan instalasi ke OpenAI Codex
â”‚   â”œâ”€â”€ gemini-cli/                    # Panduan instalasi ke Gemini CLI
â”‚   â”œâ”€â”€ cursor/                        # Panduan instalasi ke Cursor AI
â”‚   â””â”€â”€ generic-agents/                # Panduan instalasi ke agen berbasis berkas
â”‚
â”œâ”€â”€ custom-skills/
â”‚   â”œâ”€â”€ master-design-intelligence/    # Versi mandiri tanpa hardcoded path
â”‚   â”œâ”€â”€ anatomy/                       # Versi lengkap beserta kit lathe/tube/audit
â”‚   â”œâ”€â”€ gsap-motion-specialist/        # Panduan mandiri rekayasa gerak
â”‚   â”œâ”€â”€ shaders-webgpu-specialist/     # Panduan mandiri shader & 4-tier fallback
â”‚   â”œâ”€â”€ dioramas-web-design/           # Panduan 3D web berbasis Three.js
â”‚   â””â”€â”€ lucide-icons/                  # Antarmuka ekstraksi ikon portabel
â”‚
â””â”€â”€ audit/
    â”œâ”€â”€ SOURCE_INVENTORY.md            # Hasil audit 40 sumber lengkap
    â”œâ”€â”€ DUPLICATE_REPORT.md            # Laporan penanganan duplikasi
    â”œâ”€â”€ LICENSE_AUDIT.md               # Evaluasi hukum lisensi
    â”œâ”€â”€ SECURITY_AUDIT.md              # Laporan audit path & privasi
    â””â”€â”€ COMPATIBILITY_AUDIT.md         # Hasil uji kompatibilitas lintas agen
```

---

## 9. Estimasi Ukuran Paket Distribusi

Berdasarkan analisis bobot direktori:
- Dokumen instruksi, panduan arsitektur, dan referensi desain: ~1.5 MB.
- Custom skills inti (termasuk skrip kit Anatomy, aturan, dan evaluasi): ~3.5 MB.
- Koleksi referensi DaisyUI (50+ komponen markdown) dan referensi UI lainnya: ~2.5 MB.
- Utilitas skrip anti-slop, detector, dan helper: ~4.0 MB.
- **Strategi Penghematan Monorepo Berat**: Repositori besar seperti Dioramas (332 MB) dan Motion (277 MB) tidak dimasukkan dalam bentuk *binary assets raw* atau `node_modules`. Paket distribusi menyertakan arsitektur engine, panduan implementasi, contoh kode esensial, dan skrip *sparse download / package installer* terotomasi.
- **Estimasi Ukuran ZIP Final:** **15 MB hingga 35 MB** (ringan, cepat diunduh, dan siap didistribusikan ke agen AI mana pun).

---

## 10. Rencana Pelaksanaan Fase Selanjutnya (Execution Plan per Phase)

Setelah persetujuan eksplisit pengguna diberikan, berikut adalah tahapan kerja:

- **PHASE 1 (Approval Gate & Workspace Setup)**:
  - Membuat workspace proyek terisolasi: `C:\Users\epann\Universal-Agent-Skills-Toolkit\`.
  - Mengonfirmasi cakupan sumber 12 repositori yang belum tersedia secara lokal (apakah diunduh referensi instruksinya atau difokuskan pada 28 sumber lokal terlebih dahulu).
- **PHASE 2 (Collection, Sanitization & Portable Custom Skills)**:
  - Menyalin dan menduplikasi custom skills (`master-design-intelligence`, `anatomy`, `gsap-motion-specialist`, `shaders-webgpu-specialist`, `dioramas-web-design`, `lucide-icons`, `framer-motion`, `karpathy-guidelines`).
  - Menghilangkan seluruh *hardcoded absolute path* (`D:\...` dan `C:\Users\epann\...`) menjadi *relative path* mandiri.
  - Mengemas `<DRIVE_PATH>\AI\design-intelligence-library` ke dalam `references/design-intelligence-library/`.
  - Mengemas kit skrip Anatomy (`kit/lathe.mjs`, `kit/tube.mjs`, `kit/audit.mjs`).
  - Melakukan deduplikasi fisik (`codex-ppt`, `reverse-engineer-anything`).
- **PHASE 3 (Universal Instructions & Multi-Agent Adapters)**:
  - Menyusun `UNIVERSAL_AGENT_INSTRUCTIONS.md` sebagai panduan mutlak bagi agen AI penerima.
  - Menyusun panduan instalasi per agen (Antigravity, Claude Code, Codex, Gemini CLI, Cursor, Generic).
  - Menyusun `SKILL_SELECTION_GUIDE.md` untuk mencegah pemanggilan skill bertumpuk atau salah sasaran.
- **PHASE 4 (Security, License, & Manifest Generation)**:
  - Menghasilkan `MANIFEST.json` lengkap mencakup ID, nama, lisensi, sumber URL, status ketersediaan, dan verifikasi.
  - Menyusun `LICENSES.md`, `SECURITY.md`, `COMPATIBILITY.md`, dan `CHANGELOG.md`.
  - Melakukan audit keamanan akhir (pemindaian path sisa dan kredensial).
- **PHASE 5 (Final Packaging & Integrity Verification)**:
  - Melakukan kompresi direktori menjadi `universal-agent-skills-toolkit.zip`.
  - Memverifikasi integritas file ZIP (uji ekstraksi di lokasi terisolasi dan pengecekan kelengkapan berkas).
  - Menyajikan laporan penutup komprehensif kepada pengguna.


